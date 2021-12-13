<?php
// TODO Zorg dat de methodes goed ingevuld worden met de juiste queries.
function getCategories()
{
    global $pdo;
    $sth = $pdo->prepare("SELECT * FROM categories");
    $sth->execute();
    $result = $sth->fetchAll(PDO::FETCH_CLASS, 'Category');
    return $result;
}

function getCategoryName(int $id)
{
    
}
