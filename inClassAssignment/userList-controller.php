<?php
    require_once 'model/UserDAO.php';


    function showErrors($debug){
        if($debug==1){
            ini_set('display_errors', 1);
            ini_set('display_startup_errors', 1);
            error_reporting(E_ALL);
        }
    }
    //************************
    //*  Contoller Template  *
    //************************
    showErrors(0);  //1 - Turn on Error Display


    $method=$_SERVER['REQUEST_METHOD'];
    //* Process HTTP GET Request
    if($method=='GET'){
        $userDAO = new UserDAO();
        $users = $userDAO->getUsers(); 
        include "userList-view.php";

    }
    //* Process HTTP POST Request
    if($method=='POST'){
        // No POST Processing for this Controller

    }
 
    // function showErrors($debug){
    //     if($debug==1){
    //         ini_set('display_errors', 1);
    //         ini_set('display_startup_errors', 1);
    //         error_reporting(E_ALL);
    //     }
    // }

?>