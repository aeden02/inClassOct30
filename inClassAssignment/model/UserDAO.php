<?php
    require_once 'User.php';

    class UserDAO {


        public function getConnection(){
            $mysqli = new mysqli("127.0.0.1", "mvcuser", "mvcpass", "patternMVCAuth");
            if ($mysqli->connect_errno) {
                $mysqli=null;
            }
            return $mysqli;
        }

        public function getUsers(){
            $connection=$this->getConnection();
            $stmt = $connection->prepare("SELECT * FROM users;"); 
            $stmt->execute();
            $result = $stmt->get_result();
            while($row = $result->fetch_assoc()){
                $user = new User();
                $user->load($row);
                $users[]=$user;
            }    
            $stmt->close();
            $connection->close();
            return $users;
        }

    }

    ?>