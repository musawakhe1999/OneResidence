<?php

require('connection.php');

$makeQuery='SELECT * FROM Students';
$statement=$connection->prepare($makeQuery);

$statement->execute();
$myarray=array();

while($resultsFrom=$statement->fetch()){

    array_push(
        $myarray,array(
            "StudentNo"=>$resultsFrom['StudentNo'],
            "StudentName"=>$resultsFrom['StudentName'],
            "StudentSurname"=>$resultsFrom['StudentSurname'],
            "email"=>$resultsFrom['email'],
            "password"=>$resultsFrom['password'],
            "roomNo"=>$resultsFrom['roomNo'],
            "contactNo"=>$resultsFrom['contactNo'],

        )

    )
}

echo json_encode( $myarray);