<?php

$username = "root";
$password = "";
$database ="historical_data";

try {
    $pdo = new PDO ("mysql:host=localhost; database=$database", $username, $password);
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION); 
} catch(PDOException $e) {
    die("ERROR: Could not connect. " . $e->getMessage());
}

try {
    $sql = "SELECT * FROM historical_data.year_1";
    $result = $pdo->query($sql);
    if($result->rowCount() > 0) {
        $count = array();
        while($row = $result->fetch()) {
            $count[] = $row["count"];
        }
            echo $row["count"];
            unset($result);
        } else {
            echo "No records matching your query were found. ";
        }
    } catch(PDOException $e) {
        die("ERROR: Could not able to execute $sql. " . $e->getMessage());
    }

    try {
        $sql2 = "SELECT * FROM historical_data.year_2";
        $result = $pdo->query($sql2);
        if($result->rowCount() > 0) {
            $count2 = array();
            while($row = $result->fetch()) {
                $count2[] = $row["count"];
            }
                echo $row["count2"];
                unset($result);
            } else {
                echo "No records matching your query were found. ";
            }
        } catch(PDOException $e) {
            die("ERROR: Could not able to execute $sql2. " . $e->getMessage());
        }
    
        try {
            $sql3 = "SELECT * FROM historical_data.year_3";
            $result = $pdo->query($sql3);
            if($result->rowCount() > 0) {
                $count3 = array();
                while($row = $result->fetch()) {
                    $count3[] = $row["count"];
                }
                    echo $row["count3"];
                    unset($result);
                } else {
                    echo "No records matching your query were found. ";
                }
            } catch(PDOException $e) {
                die("ERROR: Could not able to execute $sql3. " . $e->getMessage());
            }

    unset($pdo);

?>

