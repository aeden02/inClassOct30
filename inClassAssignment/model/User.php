<?php
    class User{
        private $userID;
        private $username;
        private $lastname; 
        private $firstname; 
        private $passwd; 
        private $email;
        private $urole; 
        private $lastModified; 

        public function load($row){
            $this->userID=$row['userID'];
            $this->username=$row['username'];
            $this->lastname=$row['lastname'];
            $this->firstname=$row['firstname'];
            $this->passwd=$row['passwd'];
            $this->email=$row["email"];
            $this->urole=$row["urole"];
            $this->lastModified=$row["lastModified"];
        }

    }

?>