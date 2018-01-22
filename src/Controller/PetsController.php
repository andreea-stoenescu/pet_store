<?php
namespace App\Controller;

use App\Controller\AppController;

class PetsController extends AppController
{
    public $paginate = [
        'page' => 1,
        'limit' => 10,
        'maxLimit' => 100,
        'fields' => [
            'id', 'name', 'type'
        ],
        'sortWhitelist' => [
            'id', 'name', 'type'
        ]
    ];
}