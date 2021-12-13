<?php
// TODO Zorg dat de methodes goed ingevuld worden met de juiste queries.
function getProducts(int $categoryId)
{
    global $pdo;
    $sth = $pdo->prepare("SELECT * FROM products WHERE category_id = $categoryId");
    $sth->execute();
    $result = $sth->fetchAll(PDO::FETCH_CLASS, 'Product');
    return $result;
}

function getProduct(int $productId)
{
    
}
