<?php

namespace AppBundle\Controller;

use AppBundle\Entity\User;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;

/**
 * User controller.
 *
 * @Route("user")
 */
class UserController extends Controller
{
    /**
     * Lists all user entities.
     *
     * @Route("/", name="user_index")
     * @Method("GET")
     */
    public function indexAction()
    {
        $em = $this->getDoctrine()->getManager();

        $users = $em->getRepository('AppBundle:User')->findAll();

        $data = $this->get('jms_serializer')->serialize($users, 'json');
        
        $response = new Response($data);
        $response->headers->set('Content-Type', 'application/json');

        return $response;
    }

    /**
     * Creates a new user entity.
     *
     * @Route("/new", name="user_new")
     * @Method({"POST"})
     */
    public function newAction(Request $request)
    {
        $data = $request->getContent();
        $user = $this->get('jms_serializer')->deserialize($data, 'AppBundle\Entity\User', 'json');
        $user->setPassword(md5($user->getPassword()));
        $user->setBalance(1000);
        $user->setAvatar("default.jpg");
        $user->setInventory([]);

        $em = $this->getDoctrine()->getManager();
        $em->persist($user);
        $em->flush();

        return new Response('Created successfully', Response::HTTP_CREATED);
    
    }

    /**
     * Finds and displays a user entity.
     *
     * @Route("/{id}", name="user_show")
     * @Method("GET")
     */
    public function showAction(User $user)
    {
        $data = $this->get('jms_serializer')->serialize($user, 'json');
        
        $response = new Response($data);
        $response->headers->set('Content-Type', 'application/json');

        return $response;
    }

    /**
     * Displays a form to edit an existing user entity.
     *
     * @Route("/{id}/edit", name="user_edit")
     * @Method({"POST"})
     */
    public function editAction(Request $request)
    {
        $em = $this->getDoctrine()->getManager();
        
        $data = $request->getContent();
        $editUser = $this->get('jms_serializer')->deserialize($data, 'AppBundle\Entity\User', 'json');
        
        $user = $em->getRepository(User::class)->find($editUser->getId());

        if($user->getPassword() != $editUser->getPassword()) {
           $user->setPassword(md5($editUser->getPassword()));
        }
        $user->setBalance($editUser->getBalance());
        $user->setAvatar($editUser->getAvatar());
        $user->setInventory($editUser->getInventory());

        $em->flush();

        return new Response('Edited successfully', Response::HTTP_CREATED);
    }
}
