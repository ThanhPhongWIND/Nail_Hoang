<?php get_header(); ?>


<div class="container mt-5 a">
  <?php foreach($list_service as $item){?>
    <div class="col-md-12 mt-5 mt-service">
      <h1 class="title-about"><?php echo $item['service_name'] ?></h1>
    </div>

  <div class="row mt-5 mb-5">
    <!-- Hình ảnh bên trái -->
    <div class="col-md-6">
      <img src="public/images/<?php echo  $item['url_image'] ?>" alt="Hình ảnh" class="img-fluid image-service">
      <?php foreach($get_name as $item_name){ 
         if($item['id_service'] == $item_name['id_service']){
          ?>
      <div class="col-md-6 mt-2 detail-service">          
         

        <p class="text-rSevice"><?php echo $item_name['name_detail'] ?></p> 
        <p class="text-lSevice "><?php echo $item_name['price_detail'] ?> $</p> 

      
      </div>  
      <?php } ?>
        <?php } ?>
    </div> 
  </div>
  <?php } ?>
</div>
     <!-- ======= Contact Section ======= -->
  <section id="contact" class="contact bg-contact">
    <div class="container">

      <div class="row">

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



<?php get_footer(); ?>