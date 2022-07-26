<?php include('includes/header.php');?>
    
<div class="container">
    <div class="card main bg-light">
        <?php include('includes/logo.php');?>
        <?php include('includes/navigation.php');?>
        <div class="row">
            <div class="col-md-12">
                <div class="card mt-2">
                    <div class="card-body">
                        <div class="row row-cols-3 mt-2">
                            <?php 
                                $query = "SELECT * FROM products where product_id";
                                $result = query($query);
                                while($row = fetch_array($result)):
                            ?>
                            <div class="card">
                                <div class="card-body">
                                    <div class="card-img-top">
                                        <img src="<?php echo $row['product_image'];?>" width="200" height="200" alt="">
                                    </div>
                                    <h4 class="card-title"><?php echo $row['product_title'];?></h4>
                                    <p><span class="badge badge-success"><?php echo $row['product_price'].'dh';?>
                                </span>  <span class="text-danger"><strike><?php echo $row['old_price'].'dh';?></strike>
                            </span></p>
                                    <p class="lead card-text"><?php echo $row['product_description'];?></p>
                                    <p><a href="product.php?id=<?php echo $row['product_id'];?>" 
                                        class="btn btn-outline-dark">Voir</a></p>
                                </div>
                            </div>
                            <?php 
                                endwhile;
                            ?>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div><?php include('includes/footer.php'); ?></div>
</div>

