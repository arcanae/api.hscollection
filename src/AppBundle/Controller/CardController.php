<?php

namespace AppBundle\Controller;

use AppBundle\Entity\Card;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;


/**
 * Card controller.
 *
 * @Route("card")
 */
class CardController extends Controller
{
    /**
     * Lists all card entities.
     *
     * @Route("/", name="card_index")
     * @Method("GET")
     */
    public function indexAction()
    {
        $em = $this->getDoctrine()->getManager();
        
        $cards = $em->getRepository('AppBundle:Card')->findAll();
        
        $data = $this->get('jms_serializer')->serialize($cards, 'json');
        
        $response = new Response($data);
        $response->headers->set('Content-Type', 'application/json');

        return $response;
    }

    /**
     * Finds and displays a card entity.
     *
     * @Route("/{id}", name="card_show")
     * @Method("GET")
     */
    public function showAction(Card $card)
    {
        $data = $this->get('jms_serializer')->serialize($card, 'json');
        
        $response = new Response($data);
        $response->headers->set('Content-Type', 'application/json');

        return $response;
    }
}
