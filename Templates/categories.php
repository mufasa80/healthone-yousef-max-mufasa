<!DOCTYPE html>
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
    global $categories;
    ?>

    <nav aria-label="breadcrumb">
        <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="/home">Home</a></li>
            <li class="breadcrumb-item"><a href="/categories">Categories</a></li>
        </ol>
    </nav>
    <div class="row gy-3 ">
        <?php foreach ($categories as $category): ?>
            <div class="col-sm-4 col-md-3">
                <div class="card">
                    <div class="card-body text-center">
                        <a href="/categories/<?php echo $category->id?>">
                            <img class="product-img img-responsive center-block" src='/img/categories/<?php echo $category->picture?>'/>
                        </a>
                        <div class="card-title mb-3"><?php echo $category->title?></div>
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

