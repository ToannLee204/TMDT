<?php

include 'components/connect.php';

session_start();

if(isset($_SESSION['user_id'])){
   $user_id = $_SESSION['user_id'];
}else{
   $user_id = '';
};

?>

<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>About</title>

   <link rel="stylesheet" href="https://unpkg.com/swiper@8/swiper-bundle.min.css" />
   
   <!-- font awesome cdn link  -->
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">

   <!-- custom css file link  -->
   <link rel="stylesheet" href="css/style.css">
   <style>
      .content {
  max-width: 900px;
  margin: 40px auto;
  padding: 30px;
  background-color: #ffffff;
  border-radius: 12px;
  box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1);
  line-height: 1.8;
  color: #333;
  font-size: 18px;
}

.content h2 {
  font-size: 24px;
  margin-bottom: 15px;
  color: #1a73e8;
  border-left: 4px solid #1a73e8;
  padding-left: 12px;
}

.content p {
  font-size: 18px;
  margin-bottom: 16px;
}

.content ul {
  padding-left: 20px;
  margin-bottom: 16px;
}

.content ul li {
  margin-bottom: 10px;
  list-style-type: disc;
}

.content strong {
  color: #000;
}

   </style>
</head>
<body>
   
<?php include 'components/user_header.php'; ?>

<section class="about">

   <div class="row">


   <div class="content">
  <h2>1. Về chúng tôi</h2>
  <p>
    <strong>ShopCôngNghệ</strong> là nền tảng bán lẻ trực tuyến chuyên cung cấp các sản phẩm công nghệ phổ thông như: laptop, chuột, bàn phím, webcam, tai nghe và các thiết bị phụ trợ hiện đại, phù hợp với nhiều đối tượng người dùng từ học sinh – sinh viên đến nhân viên văn phòng và người tiêu dùng cá nhân.
  </p>
  <p>
    Với giao diện dễ sử dụng, thông tin minh bạch và mức giá hợp lý, ShopCôngNghệ mang đến trải nghiệm mua sắm nhanh chóng, thuận tiện và đáng tin cậy cho mọi khách hàng có nhu cầu nâng cấp thiết bị công nghệ phục vụ học tập, làm việc hoặc giải trí.
  </p>

  <h2>2. Sứ mệnh</h2>
  <p>
    Chúng tôi mong muốn trở thành người bạn đồng hành đáng tin cậy trong hành trình công nghệ của bạn. 
    <strong>ShopCôngNghệ</strong> cam kết mang lại trải nghiệm mua sắm đơn giản – tiết kiệm – hiệu quả thông qua:
  </p>
  <ul>
    <li>Các sản phẩm chính hãng, rõ nguồn gốc</li>
    <li>Mức giá cạnh tranh, ưu đãi thường xuyên</li>
    <li>Hỗ trợ người dùng tận tình từ bước tìm kiếm đến thanh toán</li>
  </ul>
  <p>
    Sứ mệnh của chúng tôi là giúp khách hàng dễ dàng tiếp cận thiết bị công nghệ chất lượng mà không cần phải am hiểu quá sâu về kỹ thuật.
  </p>

  <h2>3. Giá trị cốt lõi</h2>
  <ul>
    <li><strong>Chất lượng và minh bạch</strong>: Tất cả sản phẩm đều được chọn lọc kỹ lưỡng, có thông tin đầy đủ, giá niêm yết rõ ràng.</li>
    <li><strong>Khách hàng là trung tâm</strong>: Mọi tính năng, bố cục và dịch vụ đều được thiết kế xoay quanh nhu cầu và trải nghiệm của người dùng.</li>
    <li><strong>Tiện lợi và nhanh chóng</strong>: Từ tìm kiếm sản phẩm đến đặt hàng chỉ trong vài bước đơn giản, tối ưu cho cả người không rành công nghệ.</li>
    <li><strong>Cập nhật liên tục</strong>: Sản phẩm, khuyến mãi và tính năng được làm mới thường xuyên theo xu hướng thị trường.</li>
  </ul>

  <h2>4. Định hướng phát triển</h2>
  <p>
    Trong thời gian tới, <strong>ShopCôngNghệ</strong> sẽ tiếp tục hoàn thiện hệ thống website, mở rộng danh mục sản phẩm và tích hợp thêm các công nghệ hỗ trợ trải nghiệm mua sắm như: tìm kiếm thông minh, chatbot tư vấn, đề xuất sản phẩm cá nhân hóa…
  </p>
  <p>
    Bên cạnh đó, chúng tôi hướng đến xây dựng một cộng đồng người dùng yêu thích công nghệ phổ thông – nơi chia sẻ kinh nghiệm sử dụng thiết bị, hỗ trợ nhau cùng phát triển kỹ năng công nghệ cá nhân một cách dễ tiếp cận và thân thiện.
  </p>
</div>


   </div>

</section>

<!-- <section class="reviews">
   
   <h1 class="heading">Client's Reviews.</h1>

   <div class="swiper reviews-slider">

   <div class="swiper-wrapper">

      <div class="swiper-slide slide">
         <img src="images/pic-5.jpg" alt="">
         <p>Been using their services for quite a bit and have never had an issue with the quality of their products. Online e-products working great as well. Only issue I have is they usually deliver when I'm a little caught up, though I've set a preferred delivery time. Everything else has been good.</p>
         <div class="stars">
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star-half-alt"></i>
         </div>
         <h3> <a href="https://www.facebook.com/profile.php?id=100083292714419" target="_blank">Denisha Adhikari</a></h3>
      </div>

      <div class="swiper-slide slide">
         <img src="images/pic-1.jpg" alt="">
         <p>It is the first online services in Nepal which we can trust completely.I always unbox making a video and instantly complain if there's anything wrong. Sometimes even don't need to return the item and they process the refund. KinBech do heavy fine to sellers who send wrong products thats why its platform getting better day by day.</p>
         <div class="stars">
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star-half-alt"></i>
         </div>
         <h3><a href="https://www.facebook.com/profile.php?id=100075602340579" target="_blank">Rushab Risal</a></h3>
      </div>

      <div class="swiper-slide slide">
         <img src="images/pic-3.jpg" alt="">
         <p>KinBech is great if you choose good sellers . A variety of required item available . Customers can return and refund full amount within 7 days easily . KinBech is boosting eCommerce business in Kathmandu.It provides great opportunity to sale items online with ease.</p>
         <div class="stars">
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star-half-alt"></i>
         </div>
         <h3><a href="https://www.facebook.com/kaushalsah135790" target="_blank">Kaushal Shah</a></h3>
      </div>

      <div class="swiper-slide slide">
         <img src="images/pic-7.jpg" alt="">
         <p>Using KinBech for online shopping from almost 3 years. Outstanding experience with them. Game vouchers and pick up point as delivery with 0 shipping charges are super saving services.</p>
         <div class="stars">
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star-half-alt"></i>
         </div>
         <h3><a href="https://www.facebook.com/fuccheekta.moh.1" target="_blank">Subash Ray</a></h3>
      </div>

      <div class="swiper-slide slide">
         <img src="images/pic-2.jpg" alt="">
         <p>I have been using their services for the last 2 years and I have found them extremely reliable.Their return policy is what gives you an extra layer of reliance and peace of mind. In case the product doesn't meet your expectations or if there is any fault in it. then you can return the product within seven days from the date of delivery.</p>
         <div class="stars">
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star-half-alt"></i>
         </div>
         <h3><a href="https://www.facebook.com/ranjitchaudhary159" target="_blank">Ranjit Chaudhary</a></h3>
      </div>

      <div class="swiper-slide slide">
         <img src="images/pic-6.jpg" alt="">
         <p>KinBech is cool! I have ordered hundreds of products from it and never got any scam. It delivers products in time with out delay. Packaging of products are strong and delivery rates are too low. Just amazing Website will keep shopping from KinBech.</p>
         <div class="stars">
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star-half-alt"></i>
         </div>
         <h3><a href="https://www.facebook.com/pra.x.nil"  target="_blank">Pranil Poudel</a></h3>
      </div>

   </div>

   <div class="swiper-pagination"></div>

   </div>

</section> -->









<?php include 'components/footer.php'; ?>

<script src="https://unpkg.com/swiper@8/swiper-bundle.min.js"></script>

<script src="js/script.js"></script>

<script>

var swiper = new Swiper(".reviews-slider", {
   loop:true,
   spaceBetween: 20,
   pagination: {
      el: ".swiper-pagination",
      clickable:true,
   },
   breakpoints: {
      0: {
        slidesPerView:1,
      },
      768: {
        slidesPerView: 2,
      },
      991: {
        slidesPerView: 3,
      },
   },
});

</script>

</body>
</html>