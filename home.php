<?php

include 'components/connect.php';

session_start();

if(isset($_SESSION['user_id'])){
   $user_id = $_SESSION['user_id'];
}else{
   $user_id = '';
};

include 'components/wishlist_cart.php';

?>

<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>TMDT.Com</title>

   <link rel="stylesheet" href="https://unpkg.com/swiper@8/swiper-bundle.min.css" />
   
   <!-- font awesome cdn link  -->
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">

   <!-- custom css file link  -->
   <link rel="stylesheet" href="css/style.css">

</head>
<body>
   
<?php include 'components/user_header.php'; ?>

<div class="home-bg">

<section class="home">

   <div class="swiper home-slider">
   
   <div class="swiper-wrapper">

      <div class="swiper-slide slide">
         <div class="image">
            <img src="images/home-img-1.png" alt="">
         </div>
         <div class="content">
         <span style="font-size: 38px;">🎉 Ưu đãi giảm giá đến <strong>30%</strong>  <br>
            30/4-1/5</span>
            <h3>Săn ngay laptop</h3>
            <a href="category.php?category=laptop" class="btn" style="
               background-color: #007bff;
               color: white;
               padding: 10px 20px;
               border-radius: 25px;
               text-decoration: none;
               font-weight: bold;
               transition: 0.3s;
            " onmouseover="this.style.backgroundColor='#0056b3'" onmouseout="this.style.backgroundColor='#007bff'">Mua ngay</a>
         </div>
      </div>

      <div class="swiper-slide slide">
         <div class="image">
            <img src="images/home-img-2.png" alt="">
         </div>
         <div class="content">
         <span style="font-size: 38px;">🎉 Ưu đãi giảm giá đến <strong>30%</strong>  <br>
               30/4-1/5</span>
            <h3>Săn ngay chuột Gaming</h3>
            <a href="category.php?category=chuột" class="btn" style="
               background-color: #007bff;
               color: white;
               padding: 10px 20px;
               border-radius: 25px;
               text-decoration: none;
               font-weight: bold;
               transition: 0.3s;
            " onmouseover="this.style.backgroundColor='#0056b3'" onmouseout="this.style.backgroundColor='#007bff'">Mua ngay.</a>
         </div>
      </div>

      <div class="swiper-slide slide">
         <div class="image">
            <img src="images/home-img-3.png" alt="">
         </div>
         <div class="content">
         <span style="font-size: 38px;">🎉 Ưu đãi giảm giá đến <strong>30%</strong>  <br>
               30/4-1/5</span>
            <h3>Săn ngay tai nghe</h3>
            <a href="category.php?category=tai+nghe" class="btn" style="
               background-color: #007bff;
               color: white;
               padding: 10px 20px;
               border-radius: 25px;
               text-decoration: none;
               font-weight: bold;
               transition: 0.3s;
            " onmouseover="this.style.backgroundColor='#0056b3'" onmouseout="this.style.backgroundColor='#007bff'">Mua ngay.</a>
         </div>
      </div>

   </div>

      <div class="swiper-pagination"></div>

   </div>

</section>

</div>

<section class="category">

   <h1 class="heading">Danh mục sản phẩm</h1>

   <div class="swiper category-slider">

   <div class="swiper-wrapper">

   <a href="category.php?category=laptop" class="swiper-slide slide">
      <img src="images/icon-1.png" alt="">
      <h3>Laptop</h3>
   </a>

   <a href="category.php?category=màn+hình" class="swiper-slide slide">
      <img src="images/icon-2.png" alt="">
      <h3>Màn hình</h3>
   </a>

   <a href="category.php?category=webcam" class="swiper-slide slide">
      <img src="images/icon-3.png" alt="">
      <h3>Webcam</h3>
   </a>

   <a href="category.php?category=chuột" class="swiper-slide slide">
      <img src="images/icon-4.png" alt="">
      <h3>Chuột</h3>
   </a>

   <a href="category.php?category=bàn+phím" class="swiper-slide slide">
      <img src="images/icon-56.png" alt="">
      <h3>Bàn phím</h3>
   </a>

   <a href="category.php?category=tai+nghe" class="swiper-slide slide">
      <img src="images/icon-6-removebg-preview.png" alt="">
      <h3>Tai nghe</h3>
   </a>



   </div>

   <div class="swiper-pagination"></div>

   </div>

</section>

<section class="home-products">

   <h1 class="heading"><a href="shop.php" style="color: #333333;">Sản phẩm</a></h1>

   <div class="swiper products-slider">

   <div class="swiper-wrapper">

   <?php
     $select_products = $conn->prepare("SELECT * FROM `products` LIMIT 6"); 
     $select_products->execute();
     if($select_products->rowCount() > 0){
      while($fetch_product = $select_products->fetch(PDO::FETCH_ASSOC)){
   ?>
   <form action="" method="post" class="swiper-slide slide">
      <input type="hidden" name="pid" value="<?= $fetch_product['id']; ?>">
      <input type="hidden" name="name" value="<?= $fetch_product['name']; ?>">

      <input type="hidden" name="price" value="<?= $fetch_product['price']; ?>">
      <input type="hidden" name="image" value="<?= $fetch_product['image_01']; ?>">
      <!-- <button class="fas fa-heart" type="submit" name="add_to_wishlist"></button> -->
      <a href="quick_view.php?pid=<?= $fetch_product['id']; ?>" class="fas fa-eye"></a>
      <img src="uploaded_img/<?= $fetch_product['image_01']; ?>" alt="">
      <div class="name"><?= $fetch_product['name']; ?></div>
      <div class="flex">
         <div class="price" style="font-size: 18px; font-weight: bold;">
            <span style="font-size: 14px; text-decoration: line-through; color: gray;">
               <?= number_format($fetch_product['price'] * 1.3, 0, ',', '.'); ?><span>₫</span>
            </span>
            <span style="font-size: 14px; margin-left: 10px; color: green;">-30%</span><br>
   <?= number_format($fetch_product['price'], 0, ',', '.'); ?><span>₫</span><br>
</div>
<!-- //. -->
         <input type="number" name="qty" class="qty" min="1" max="99" onkeypress="if(this.value.length == 2) return false;" value="1" style="visibility: hidden;">
      </div>
      <input type="submit" value="Thêm vào giỏ hàng" class="btn" name="add_to_cart">
   </form>
   <?php
      }
   }else{
      echo '<p class="empty">no products added yet!</p>';
   }
   ?>

   </div>

   <div class="swiper-pagination"></div>

   </div>

</section>









<?php include 'components/footer.php'; ?>

<script src="https://unpkg.com/swiper@8/swiper-bundle.min.js"></script>

<script src="js/script.js"></script>

<script>

var swiper = new Swiper(".home-slider", {
   loop:true,
   spaceBetween: 20,
   pagination: {
      el: ".swiper-pagination",
      clickable:true,
    },
});

 var swiper = new Swiper(".category-slider", {
   loop:true,
   spaceBetween: 20,
   pagination: {
      el: ".swiper-pagination",
      clickable:true,
   },
   breakpoints: {
      0: {
         slidesPerView: 2,
       },
      650: {
        slidesPerView: 3,
      },
      768: {
        slidesPerView: 4,
      },
      1024: {
        slidesPerView: 5,
      },
   },
});

var swiper = new Swiper(".products-slider", {
   loop:true,
   spaceBetween: 20,
   pagination: {
      el: ".swiper-pagination",
      clickable:true,
   },
   breakpoints: {
      550: {
        slidesPerView: 2,
      },
      768: {
        slidesPerView: 2,
      },
      1024: {
        slidesPerView: 3,
      },
   },
});

</script>

</body>
</html>