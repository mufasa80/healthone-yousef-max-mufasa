<?php


class Category
{
    public $id;
    public $title;
    public $picture;

    public function __construct()
    {
        settype($this->id, 'integer');
    }
}