<?php

namespace AppBundle\Controller;

use AppBundle\Entity\Card;
use AppBundle\Entity\User;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;


/**
 * Admin controller.
 *
 * @Route("admin")
 */
class AdminController extends Controller
{   
    /**
     * @Route("/", name="admin_index")
     */

    public function indexAction() {
        return $this->render('admin/index.html.twig');
    }


    // ~~~~~~~~~~~~~~~~~~~~
    // ~~~ CARDS ROUTES ~~~
    // ~~~~~~~~~~~~~~~~~~~~


    /**
     * Lists all card entities.
     *
     * @Route("/card", name="admin_card_index")
     * @Method("GET")
     */
    public function cardIndexAction()
    {
        $em = $this->getDoctrine()->getManager();

        $cards = $em->getRepository('AppBundle:Card')->findAll();

        return $this->render('card/index.html.twig', array(
            'cards' => $cards,
        ));
    }

    /**
     * Creates a new card entity.
     *
     * @Route("/card/new", name="admin_card_new")
     * @Method({"GET", "POST"})
     */
    public function cardNewAction(Request $request)
    {
        $card = new Card();
        $form = $this->createForm('AppBundle\Form\CardType', $card);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->persist($card);
            $em->flush();

            return $this->redirectToRoute('admin_card_new');
        }

        return $this->render('card/new.html.twig', array(
            'card' => $card,
            'form' => $form->createView(),
        ));
    }

    /**
     * Finds and displays a card entity.
     *
     * @Route("/card/{id}", name="admin_card_show")
     * @Method("GET")
     */
    public function cardShowAction(Card $card)
    {
        $deleteForm = $this->createDeleteFormCard($card);
        
        return $this->render('card/show.html.twig', array(
            'card' => $card,
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Displays a form to edit an existing card entity.
     *
     * @Route("/card/{id}/edit", name="admin_card_edit")
     * @Method({"GET", "POST"})
     */
    public function cardEditAction(Request $request, Card $card)
    {
        $deleteForm = $this->createDeleteFormCard($card);
        $editForm = $this->createForm('AppBundle\Form\CardType', $card);
        $editForm->handleRequest($request);

        if ($editForm->isSubmitted() && $editForm->isValid()) {
            $this->getDoctrine()->getManager()->flush();

            return $this->redirectToRoute('admin_card_edit', array('id' => $card->getId()));
        }

        return $this->render('card/edit.html.twig', array(
            'card' => $card,
            'edit_form' => $editForm->createView(),
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Deletes a card entity.
     *
     * @Route("/card/{id}", name="admin_card_delete")
     * @Method("DELETE")
     */
    public function cardDeleteAction(Request $request, Card $card)
    {
        $form = $this->createDeleteFormCard($card);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->remove($card);
            $em->flush();
        }

        return $this->redirectToRoute('admin_card_index');
    }

    /**
     * Creates a form to delete a card entity.
     *
     * @param Card $card The card entity
     *
     * @return \Symfony\Component\Form\Form The form
     */
    private function createDeleteFormCard(Card $card)
    {
        return $this->createFormBuilder()
            ->setAction($this->generateUrl('admin_card_delete', array('id' => $card->getId())))
            ->setMethod('DELETE')
            ->getForm()
        ;
    }

    // ~~~~~~~~~~~~~~~~~~~~
    // ~~~ USERS ROUTES ~~~
    // ~~~~~~~~~~~~~~~~~~~~


    /**
     * Lists all user entities.
     *
     * @Route("/user", name="admin_user_index")
     * @Method("GET")
     */

    public function userIndexAction()
    {
        $em = $this->getDoctrine()->getManager();

        $users = $em->getRepository('AppBundle:User')->findAll();

        return $this->render('user/index.html.twig', array(
            'users' => $users,
        ));
    }

    /**
     * Creates a new user entity.
     *
     * @Route("/user/new", name="admin_user_new")
     * @Method({"GET", "POST"})
     */
    public function userNewAction(Request $request)
    {
        $user = new User();
        $form = $this->createForm('AppBundle\Form\UserType', $user);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->persist($user);
            $em->flush();

            return $this->redirectToRoute('admin_user_show', array('id' => $user->getId()));
        }

        return $this->render('user/new.html.twig', array(
            'user' => $user,
            'form' => $form->createView(),
        ));
    }

    /**
     * Finds and displays a user entity.
     *
     * @Route("/user/{id}", name="admin_user_show")
     * @Method("GET")
     */
    public function userShowAction(User $user)
    {
        $deleteForm = $this->createDeleteFormUser($user);

        return $this->render('user/show.html.twig', array(
            'user' => $user,
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Displays a form to edit an existing user entity.
     *
     * @Route("/user/{id}/edit", name="admin_user_edit")
     * @Method({"GET", "POST"})
     */
    public function userEditAction(Request $request, User $user)
    {
        $deleteForm = $this->createDeleteFormUser($user);
        $editForm = $this->createForm('AppBundle\Form\UserType', $user);
        $editForm->handleRequest($request);

        if ($editForm->isSubmitted() && $editForm->isValid()) {
            $this->getDoctrine()->getManager()->flush();

            return $this->redirectToRoute('admin_user_edit', array('id' => $user->getId()));
        }

        return $this->render('user/edit.html.twig', array(
            'user' => $user,
            'edit_form' => $editForm->createView(),
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Deletes a user entity.
     *
     * @Route("/user/{id}", name="admin_user_delete")
     * @Method("DELETE")
     */
    public function userDeleteAction(Request $request, User $user)
    {
        $form = $this->createDeleteFormUser($user);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->remove($user);
            $em->flush();
        }

        return $this->redirectToRoute('admin_user_index');
    }

    /**
     * Creates a form to delete a user entity.
     *
     * @param User $user The user entity
     *
     * @return \Symfony\Component\Form\Form The form
     */
    private function createDeleteFormUser(User $user)
    {
        return $this->createFormBuilder()
            ->setAction($this->generateUrl('admin_user_delete', array('id' => $user->getId())))
            ->setMethod('DELETE')
            ->getForm()
        ;
    }
}
