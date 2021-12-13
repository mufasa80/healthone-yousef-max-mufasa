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

function getProduct(int $productid)
{
    global $pdo;
    $trv = $pdo->prepare("SELECT * FROM products WHERE id = $productid");
    $trv ->execute();
    $productResult = $trv->fetchAll(PDO::FETCH_CLASS, "product");
    return $productResult;
}
