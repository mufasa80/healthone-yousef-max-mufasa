<?php
include_once('defaults/head.php');
include_once('defaults/header.php');
include_once('defaults/menu.php');
global $products;
?><!DOCTYPE html>
<html>
<?php
include_once('defaults/head.php');
?>

<body>

<div class="container">
    <?php
    include_once('defaults/header.php');
    include_once('defaults/menu.php');
    include_once('defaults/pictures.php');
    global $products;
    ?>
    <div class="row gy-3 ">
        <?php foreach ($products as $product): ?>
            <div class="col-sm-4 col-md-3">
                <div class="card">
                    <div class="card-body text-center">
                        <a href="/categories/<?php echo $product->category_id?>/product/<?php echo $product->id?>">
                            <img class="product-img img-responsive center-block" src='<?php echo $product->picture?>'/>
                        </a>
                        <div class="card-title mb-3"><?php echo $product->name?></div>
                        <div class="card-description mb-3"><?php echo $product->description?></div>
                    </div>

                </div>
            </div>
        <?php endforeach;?>
    </div>
    <hr>
    <?php
    include_once('defaults/footer.php');

    ?>
</div>

</body>
</html>
