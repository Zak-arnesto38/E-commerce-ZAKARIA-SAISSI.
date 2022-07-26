<?php include('includes/header.php');?> 
<div class="container">
    <div class="card main bg-light">
        <?php include('includes/logo.php');?>
        <?php include('includes/navigation.php');?>
        <div class="row">
            <div class="col-md-11 mx-1">
                <div class="card mdb-color lighten-2 text-center z-depth-2">
                    <div class="card-body">
                        
                        <div class="row row-cols-3">
                            
                            
                            <?php 
                                $query = "SELECT * FROM products";
                                $result = query($query);
                                while($row = fetch_array($result)):
                            ?>
                                                
                        
                    
                            <div class="card">
                                    <div class="card-img-top">
                                        <img src="<?php echo $row['product_image'];?>" width="300" height="200" alt="">
                                    </div>
                                    <div class="card-body">
                                    <h4 class="card-title"><?php echo $row['product_title'];?></h4>
                                    <p><span class="badge badge-success"><?php echo $row['product_price'].'dh';?></span> 
                                     <span class="text-danger"><strike><?php echo $row['old_price'].'dh';?></strike>
                                     </span></p>
                                   <!--<p class="lead card-text" ><?php //echo $row['product_description'];?>
                                    </p>-->
                                    <p><a href="product.php?id=<?php echo $row['product_id'];?>" 
                                        class="btn btn-outline-dark">
                                        read more
                                   </a></p>
                            </div>
                            </div>       
                            
                            <?php 
                                endwhile;
                            ?>
</div></div>
                </div>
            </div>

        </div>

    </div>
            <div><?php include('includes/footer.php');?></div>