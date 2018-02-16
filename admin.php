<?php
require 'connection.php';
$app = new \atk4\ui\App('Travel');
$app->initLayout('Admin');
require 'visual.php';
$crud = $app->add('CRUD');
$crud->setModel(new Record($db));



