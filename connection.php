
<?php
require '../vendor/autoload.php';

    $db = new \atk4\data\Persistence_SQL('mysql:host=127.0.0.1;dbname=main;charset=utf8', 'root', '');





class Place extends \atk4\data\Model {

	public $table = 'places';



function init() {

	parent::init();

	$this->addField('name',['caption'=>'City']);

  $this->hasMany('Record', new Record);

}

}



class Record extends \atk4\data\Model {

	public $table = 'records';



function init() {

	parent::init();

  $this->addField('name');

  $this->addField('surname');

  $this->addField('phone_number',['default'=>'+371','caption'=>'Phone Number']);

  $this->addField('e_mail');

  $this->addField('departure_date',['type'=>'date']);

  $this->addField('arrival_date',['type'=>'date']);

  $this->hasOne('places_id', new Place)->addTitle();

}

}















/*require '../vendor/autoload.php';
$db = new
\atk4\data\Persistence_SQL('mysql:dbname=travel;host=localhost','root','');
class Place extends \atk4\data\Model {
  public $table = 'places';
function init() {
  	parent::init();
    $this->addField('name',['required'=>true,'caption'=>'City']);
    $this->hasMany('User',new User);
  }
}
class User extends \atk4\data\Model {
  public $table = 'users';
function init() {
  	parent::init();
    $this->addField('name',['required'=>true,'caption'=>'Name']);
    $this->addField('surname',['required'=>true,'caption'=>'Surname']);
            $this->addField('phone_number',['default'=>'+371','caption'=>'Phone number']);
            $this->addField('email');
            $this->addField('depart_date',['type'=>'date']);
            $this->addField('arrive_date',['type'=>'date']);
            $this->hasOne('places_id',new Place)->addTitle();
}
}
*/