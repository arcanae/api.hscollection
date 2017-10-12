<?php

namespace AppBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Card
 *
 * @ORM\Table(name="card")
 * @ORM\Entity(repositoryClass="AppBundle\Repository\CardRepository")
 */
class Card
{
    /**
     * @var int
     *
     * @ORM\Column(name="id", type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="AUTO")
     */
    private $id;

    /**
     * @var string
     *
     * @ORM\Column(name="name", type="string", length=255)
     */
    private $name;

    /**
     * @var string
     *
     * @ORM\Column(name="class", type="string", length=255)
     */
    private $class;

    /**
     * @var string
     *
     * @ORM\Column(name="rarity", type="string", length=255)
     */
    private $rarity;

    /**
     * @var int
     *
     * @ORM\Column(name="pvalue", type="integer")
     */
    private $pvalue;

    /**
     * @var int
     *
     * @ORM\Column(name="svalue", type="integer")
     */
    private $svalue;

    /**
     * @var string
     *
     * @ORM\Column(name="image", type="string", length=255)
     */
    private $image;


    /**
     * Get id
     *
     * @return int
     */
    public function getId()
    {
        return $this->id;
    }

    /**
     * Set name
     *
     * @param string $name
     *
     * @return Card
     */
    public function setName($name)
    {
        $this->name = $name;

        return $this;
    }

    /**
     * Get name
     *
     * @return string
     */
    public function getName()
    {
        return $this->name;
    }

    /**
     * Set class
     *
     * @param string $class
     *
     * @return Card
     */
    public function setClass($class)
    {
        $this->class = $class;

        return $this;
    }

    /**
     * Get class
     *
     * @return string
     */
    public function getClass()
    {
        return $this->class;
    }

    /**
     * Set rarity
     *
     * @param string $rarity
     *
     * @return Card
     */
    public function setRarity($rarity)
    {
        $this->rarity = $rarity;

        return $this;
    }

    /**
     * Get rarity
     *
     * @return string
     */
    public function getRarity()
    {
        return $this->rarity;
    }

    /**
     * Set pvalue
     *
     * @param integer $pvalue
     *
     * @return Card
     */
    public function setPvalue($pvalue)
    {
        $this->pvalue = $pvalue;

        return $this;
    }

    /**
     * Get pvalue
     *
     * @return int
     */
    public function getPvalue()
    {
        return $this->pvalue;
    }

    /**
     * Set svalue
     *
     * @param integer $svalue
     *
     * @return Card
     */
    public function setSvalue($svalue)
    {
        $this->svalue = $svalue;

        return $this;
    }

    /**
     * Get svalue
     *
     * @return int
     */
    public function getSvalue()
    {
        return $this->svalue;
    }

    /**
     * Set image
     *
     * @param string $image
     *
     * @return Card
     */
    public function setImage($image)
    {
        $this->image = $image;

        return $this;
    }

    /**
     * Get image
     *
     * @return string
     */
    public function getImage()
    {
        return $this->image;
    }

    public function getImageDirectory()
    {
        return __DIR__."/../../../web/upload/Cards/".$this->class."/".$this->image;
    }
    public function getWebDirectory()
    {
        return "/upload/Cards/".$this->class."/".$this->image;
    }
}

