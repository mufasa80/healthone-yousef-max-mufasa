<?php
// TODO Zorg dat de methodes goed ingevuld worden met de juiste queries.
function getProducts(int $categoryId)
{
    global $pdo;
    $sth = $pdo->prepare('SELECT * FROM products WHERE category_id=?');
    $sth->bindParam(1,$categoryId);
    $sth->execute();
    return $sth->fetchAll(PDO::FETCH_CLASS,'Product');



}

function getProduct(int $productId)

{
    global $pdo;
    $sth = $pdo->prepare('SELECT * FROM products WHERE ID=?');
    $sth->bindParam(1,$productId);
    $sth->execute();
    return $sth->fetchAll(PDO::FETCH_CLASS,'product')[0];
}
