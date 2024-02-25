<?php get_header(); ?>
<!-- ======= Hero Section ======= -->
<div id="carouselExampleFade" class="carousel slide carousel-fade" data-ride="carousel">
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="public/images/service_home_2.jpg" class="d-block w-100 sileder-home" alt="...">
    </div>
    <?php foreach ($list_post as $item) { ?>
      <div class="carousel-item">
        <img src="public/images/<?php echo $item['image_url'] ?>" class="d-block w-100 sileder-home" alt="...">
      </div>
    <?php } ?>
  </div>
  <button class="carousel-control-prev" type="button" data-target="#carouselExampleFade" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
  </button>
  <button class="carousel-control-next" type="button" data-target="#carouselExampleFade" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
  </button>
</div>

<main id="main">

  <!-- ======= Clients Section ======= -->
  <section id="clients" class="clients clients">
    <div class="container">

      <div class="row">

        <div class="col-lg-2 col-md-4 col-6">
          <img src="public/images/service_1.jpg" class="img-fluid" alt="" data-aos="zoom-in">
        </div>

        <div class="col-lg-2 col-md-4 col-6">
          <img src="public/images/service_2.jpg" class="img-fluid" alt="" data-aos="zoom-in" data-aos-delay="100">
        </div>

        <div class="col-lg-2 col-md-4 col-6">
          <img src="public/images/service_7.jpg" class="img-fluid" alt="" data-aos="zoom-in" data-aos-delay="200">
        </div>

        <div class="col-lg-2 col-md-4 col-6">
          <img src="public/images/service_8.jpg" class="img-fluid" alt="" data-aos="zoom-in" data-aos-delay="300">
        </div>

        <div class="col-lg-2 col-md-4 col-6">
          <img src="public/images/service_5.jpg" class="img-fluid" alt="" data-aos="zoom-in" data-aos-delay="400">
        </div>

        <div class="col-lg-2 col-md-4 col-6">
          <img src="public/images/service_6.jpg" class="img-fluid" alt="" data-aos="zoom-in" data-aos-delay="500">
        </div>

      </div>

    </div>
  </section><!-- End Clients Section -->

  <!-- ======= Service Section ======= -->
  <section id="portfolio" class="portfolio">
    <div class="container">
      <div class="section-title" data-aos="fade-up">
        <h2>SERVICES</h2>
        <p>Necessitatibus eius consequatur ex aliquid fuga eum quidem</p>
      </div>

      <div class="row" data-aos="fade-up" data-aos-delay="200">
        <div class="col-lg-12 d-flex justify-content-center">
          <ul id="portfolio-flters">
            <li data-filter="*" class="filter-active">Waxing</li>
            <li data-filter=".filter-app">Solar Nails</li>
            <li data-filter=".filter-card">SNS (DIPPING POWER)</li>
            <li data-filter=".filter-web">PEDICURE</li>
          </ul>
        </div>
      </div>

      <div class="row portfolio-container" data-aos="fade-up" data-aos-delay="400">

        <?php foreach ($get_sevice as $item) { ?>
          <div class="col-lg-4 col-md-6 portfolio-item filter-app">
            <div class="portfolio-wrap">
              <img src="public/images/<?php echo $item['image_url'] ?>" class="img-fluid" alt="">
              <div class="portfolio-info">
                <h4><?php echo $item['name_detail'] ?></h4>
                <p><?php echo $item['price_detail'] ?> $</p>
                <div class="portfolio-links">
                  <a href="public/images/<?php echo $item['image_url'] ?>" data-gallery="portfolioGallery" class="portfolio-lightbox" title="<?php echo $item['name_detail'] ?>"><i class="bx bx-plus"></i></a>
                </div>
              </div>
            </div>
          </div>
        <?php } ?>
      </div>

    </div>
  </section><!-- End Portfolio Section -->

  <!-- ======= About Us Section ======= -->
  <section id="about" class="about">
    <div class="container">

      <div class="section-title" data-aos="fade-up">
        <h2>About Us</h2>
      </div>

      <div class="row content">

        <div class="col-lg-6" data-aos="fade-up" data-aos-delay="150">
          <?php foreach ($get_about as $item) { ?>
            <p>
              <?php echo $item['title_about'] ?>
            </p>
          <?php } ?>
          <ul>
            <?php foreach ($get_about as $item) { ?>

              <li><i class="ri-check-double-line"></i><?php echo $item['content_about'] ?></li>
            <?php } ?>
          </ul>
        </div>
        <div class="col-lg-6 pt-4 pt-lg-0" data-aos="fade-up" data-aos-delay="300">
          <?php foreach ($get_about as $item) { ?>
            <p>
              <?php echo $item['detail_about'] ?>
            </p>
          <?php } ?>
          <a href="?mod=service&action=index" class="btn-learn-more">Learn More</a>
        </div>
      </div>

    </div>
  </section><!-- End About Us Section -->


  <!-- ======= Services Section ======= -->
  <section id="services" class="services">
    <div class="container">

      <div class="section-title" data-aos="fade-up">
        <h2>OUR SERVICE</h2>
        <p>Conveniently located in Salt Lake City, UT 84129, our nail salon is proud to deliver the highest quality treatments to our customers.</p>
      </div>



    </div>
  </section>
  <!-- End Services Section -->

  <!-- ======= More Services Section ======= -->
  <section id="more-services" class="more-services">
    <div class="container">

      <div class="row">
        <?php foreach ($get_our_service as $item) { ?>
          <div class="col-md-6 d-flex align-items-stretch">
            <div class="card" style='background-image: url("public/images/<?php echo $item['url_image'] ?>");' data-aos="fade-up" data-aos-delay="100">
              <div class="card-body">
                <h5 class="card-title"><a href=""><?php echo $item['our_title'] ?></a></h5>
                <p class="card-text"><?php echo $item['our_content'] ?></p>
                <div class="read-more"><a href="#"><i class="bi bi-arrow-right"></i> Read More</a></div>
              </div>
            </div>
          </div>
        <?php } ?>
      </div>

    </div>
  </section><!-- End More Services Section -->

  <!-- ======= Testimonials Section ======= -->
  <section id="testimonials" class="testimonials section-bg">
    <div class="container">

      <div class="section-title" data-aos="fade-up">
        <h2>Testimonials</h2>
        <p>Magnam dolores commodi suscipit eum quidem consectetur velit</p>
      </div>

      <div class="testimonials-slider swiper" data-aos="fade-up" data-aos-delay="100">
        <div class="swiper-wrapper">
          <?php foreach ($list_evaluate as $item) { ?>
            <div class="swiper-slide">
              <div class="testimonial-wrap">
                <div class="testimonial-item">
                  <img src="public/images/<?php echo $item['url_image'] ?>" class="testimonial-img" alt="">
                  <h3><?php echo $item['name_evaluate'] ?></h3>
                  <h4><?php echo $item['position'] ?></h4>
                  <p>
                    <i class="bx bxs-quote-alt-left quote-icon-left"></i>
                    <?php echo $item['content_evaluate'] ?>
                    <i class="bx bxs-quote-alt-right quote-icon-right"></i>
                  </p>
                </div>
              </div>
            </div><!-- End testimonial item -->
          <?php } ?>
        </div>
        <div class="swiper-pagination"></div>
      </div>

    </div>
  </section><!-- End Testimonials Section -->

  <!-- ======= F.A.Q Section ======= -->
  <!-- End F.A.Q Section -->

  <!-- ======= Contact Section ======= -->
  <section id="contact" class="contact bg-contact">
    <div class="container">

      <div class="section-title" data-aos="fade-up">
        <h2 class="on-title">Contact Us</h2>
      </div>

      <div class="row b-d">

        <div class="col-lg-4 col-md-6" data-aos="fade-up" data-aos-delay="100">
          <div class="contact-about">
            <h3 class="on-title">NELLIE'S HAIR & NAIL SPECIALISTS</h3>
            <p class="on-title">We use ONLY the most trusted brands in the beauty industry. Our world-class products, services, and top technologies.Our staff were trained to follow a proper sanitization protocol that puts our customer’s cleanliness as the number one priority.</p>
            <div class="social-links">
              <a href="https://www.facebook.com/nellieshairandnailsspecialists/?ref=embed_page" class="twitter"><i class="bi bi-twitter"></i></a>
              <a href="https://www.facebook.com/nellieshairandnailsspecialists/?ref=embed_page" class="facebook"><i class="bi bi-facebook"></i></a>
              <a href="https://www.facebook.com/nellieshairandnailsspecialists/?ref=embed_page" class="instagram"><i class="bi bi-instagram"></i></a>
              <a href="https://www.facebook.com/nellieshairandnailsspecialists/?ref=embed_page" class="linkedin"><i class="bi bi-linkedin"></i></a>
            </div>
          </div>
        </div>

        <div class="col-lg-3 col-md-6 mt-4 mt-md-0" data-aos="fade-up" data-aos-delay="200">
          <div class="info">
            <div>
              <i class="ri-map-pin-line"></i>
              <p>4135 S Carriage Square, Taylorsville, UT 84129</p>
            </div>

            <!-- <div>
              <i class="ri-mail-send-line"></i>
              <p>info@example.com</p>
            </div> -->

            <div>
              <i class="ri-phone-line"></i>
              <p>+ 385-235-9781</p>
            </div>
            <div class="weekly-schedule">
              <div class="day"><b>MONDAY:</b></div>
              <div class="time">9:30 am - 7:30 pm</div>
            </div>
            <div class="weekly-schedule">
              <div class="day"><b>TUESDAY:</b></div>
              <div class="time">9:30 am - 7:30 pm</div>
            </div>
            <div class="weekly-schedule">
              <div class="day"><b>WEDNESDAY:</b></div>
              <div class="time">9:30 am - 7:30 pm</div>
            </div>

            <div class="weekly-schedule">
              <div class="day"><b>WEDNESDAY:</b></div>
              <div class="time">9:30 am - 7:30 pm</div>
            </div>
            <div class="weekly-schedule">
              <div class="day"><b>FRIDAY:</b></div>
              <div class="time">9:30 am - 7:30 pm</div>
            </div>
            <div class="weekly-schedule">
              <div class="day"><b>SATURDAY:</b></div>
              <div class="time">9:30 am - 7:30 pm</div>
            </div>
            <div class="weekly-schedule">
              <div class="day"><b>SUNDAY:</b></div>
              <div class="time">10:30 am - 5:30 pm</div>
            </div>



          </div>
        </div>

        <div class="col-lg-5 col-md-12" data-aos="fade-up" data-aos-delay="300">
          <p>Page</p>
          <p>FaceBook</p>
          <div class="fb-page" data-href="https://www.facebook.com/nellieshairandnailsspecialists/?gidzl=Fi0PI_8AS7evs1zCy19mV3hQ7aNj5dLt88yJ5-qIUYCjt1OQiaCj8tY6H13bIIyb9D554s7v_5u1zGfsSm" data-tabs="timeline" data-width="350" data-height="" data-small-header="false" data-adapt-container-width="false" data-hide-cover="false" data-show-facepile="true">
            <blockquote cite="https://www.facebook.com/nellieshairandnailsspecialists/?gidzl=Fi0PI_8AS7evs1zCy19mV3hQ7aNj5dLt88yJ5-qIUYCjt1OQiaCj8tY6H13bIIyb9D554s7v_5u1zGfsSm" class="fb-xfbml-parse-ignore"><a href="https://www.facebook.com/nellieshairandnailsspecialists/?gidzl=Fi0PI_8AS7evs1zCy19mV3hQ7aNj5dLt88yJ5-qIUYCjt1OQiaCj8tY6H13bIIyb9D554s7v_5u1zGfsSm">Nellie&#039;s Hair &amp; Nail Specialists</a></blockquote>
          </div>
        </div>

      </div>

    </div>
  </section><!-- End Contact Section -->
  <div class="scroll-top-btn">
    <button onclick="topFunction()" id="scrollToTopBtn" title="Go to top">
      <i class="bx bxs-up-arrow-alt"></i>
    </button>
  </div>

</main><!-- End #main 
<!-- Popup HTML -->
<div id="overlay"></div>
<div id="popup-background">
  <div id="popup-content">
    <!-- Content of your popup goes here -->
    <span id="close-popup">&times;</span>
    <img src="public/images/detail_5.png" alt="Popup Image">
  </div>
</div>
<!-- End Popup HTML -->
<?php get_footer(); ?>
<script>
  // Đợi cho tài liệu được tải hoàn toàn
  document.addEventListener("DOMContentLoaded", function() {
    // Lấy tham chiếu đến phần tử nút đóng popup
    var closeButton = document.getElementById("close-popup");
    // Lấy tham chiếu đến phần tử overlay và popup-background
    var overlay = document.getElementById("overlay");
    var popupBackground = document.getElementById("popup-background");

    // Thêm sự kiện click vào nút đóng popup
    closeButton.addEventListener("click", function() {
      // Ẩn overlay và popup-background khi click vào nút đóng popup
      overlay.style.display = "none";
      popupBackground.style.display = "none";
    });
  });
</script>
