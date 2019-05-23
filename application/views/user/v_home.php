		<div role="main" class="main" id="main">
				
				<div class="slider-container rev_slider_wrapper" style="height: 500px;">
					<div id="revolutionSlider" class="slider rev_slider manual" data-version="5.4.8">
						<ul>
							<?php 

						  		foreach($slider->result_array() as $row) :
			                    	$id = $row['galeri_id'];
			                    	$judul = $row['galeri_judul'];
			                    	$gambar = $row['galeri_gambar'];
	                  		?>

							<li data-transition="fade">
								<img src="<?php echo base_url()?>assets/images/<?= $gambar?>"  
									alt=""
									data-bgposition="center center" 
									data-bgfit="cover" 
									data-bgrepeat="no-repeat" 
									class="rev-slidebg">

								<div class="tp-caption tp-caption-photo-label"
									data-x="['left','left','left','left']"
									data-hoffset="['28','28','28','28']" 
									data-y="['bottom','bottom','bottom','bottom']"
									data-voffset="['28','28','28','28']" 
									data-start="500"
									data-basealign="slide" 
									data-transform_in="y:[-300%];opacity:0;s:500;"><p style="background-color:black;color: white;"><?= $judul?></p></div>
							</li>
							<?php endforeach;?>


							
						</ul>
					</div>
				</div>
				<div class="home-intro" id="home-intro">
					<div class="container">
				
						<div class="row align-items-center">
							<div class="col text-center">
								<p class="mb-0">
									Perusahaan Jasa Keselamatan & Kesehatan Kerja <span class="highlighted-word highlighted-word-animation-1 text-color-primary font-weight-semibold text-5">PJK3</span>
									<span>Bidang Pengembangan SDM Dengan Melakukan Pelatihan & Sertifikasi Dari Kemnakertrans RI</span>
								</p>
							</div>
						</div>
				
					</div>
				</div>
				<div class="container mt-15">
					
					<div class="row pt-4 appear-animation" data-appear-animation="fadeInUpShorter">
						<?php 

						  	foreach($whowe->result_array() as $row) :
			                	$id = $row['tulisan_id'];
			                 	$judul = $row['tulisan_judul'];
			                	$isi = $row['tulisan_isi'];
	                  	?>
						<div class="col-lg-7 pr-lg-5">
							<h2 class="font-weight-normal line-height-1"><strong class="font-weight-extra-bold"><?= $judul?></strong></h2>
							<p class="lead"><?= $isi?></p>
						</div>
						<?php endforeach;?>
						<div class="col-lg-5">
				
							<ul class="list list-icons list-icons-style-3 mt-5">			
								<li><i class="fas fa-map-marker-alt"></i> <strong>Alamat:</strong> <?= $alamat['galeri_judul']?></li>
								<li><i class="fas fa-phone"></i> <strong>Telp/Fax:</strong> <?= $telp['galeri_judul']?></li>
								<li><i class="fas fa-phone"></i> <strong>Nomor Hp:</strong> <?= $hp['galeri_judul']?></li>
								<li><i class="far fa-envelope"></i> <strong>Email:</strong> <a href="mailto:<?= $email['galeri_judul']?>"><?= $email['galeri_judul']?></a></li>
							</ul>
				
							<hr class="my-5">
				
						
						</div>
					</div>
				
				</div>

				<div class="container p-0 pt-2">
					<div id="ourBlog" class="p-0 mt-4">
						<?php 
							function limit_words($string, $word_limit){
				                $words = explode(" ",$string);
				                return implode(" ",array_splice($words,0,$word_limit));
				            }

						  	foreach($training->result_array() as $row) :
			                	$id = $row['tulisan_id'];
			                 	$judul = $row['tulisan_judul'];
			                	$isi = $row['tulisan_isi'];
			                	$gambar = $row['tulisan_gambar'];
			                	$slug = $row['tulisan_slug'];
	                  	?>
						<div class="col-sm-8 col-md-6 col-lg-4 isotope-item p-3">
							<article class="our-blog-item">
								<a href="demo-photography-2-blog-post.html" class="text-decoration-none">
									<span class="image-wrapper">
										<img src="<?php echo base_url()?>assets/images/<?= $gambar?>" alt="" class="img-fluid" />
									</span>
								</a>
								<div class="post-infos">
									<div class="share">
										<div class="share-icons bg-color-quaternary">
											<a href="#" class="text-decoration-none" title="Share on Facebook"><i class="fab fa-facebook-f"></i></a>
											<!-- <a href="#" class="text-decoration-none" title="Share on Twitter"><i class="fab fa-twitter"></i></a>
											<a href="#" class="text-decoration-none" title="Share on Linkedin"><i class="fab fa-linkedin-in"></i></a> -->
											<i class="fas fa-share-alt"></i>
										</div>
									</div>
									<h1 class="font-weight-normal">
										<a href="demo-photography-2-blog-post.html" class="text-decoration-none" style="font-size: 20px !important;"><?= $judul?></a>
									</h1>
									<a href="demo-photography-2-blog-post.html" class="text-decoration-none">
										<p><?= limit_words($isi, 10)."..."?></p>
									</a>
								</div>
							</article>
						</div>
						<?php endforeach;?>
					</div>

				</div>

				<div id="photographyLightbox" class="mfp-hide">
					<div class="thumb-gallery">
						<div class="owl-carousel owl-theme manual thumb-gallery-detail" id="thumbGalleryDetail">
							<?php 

						  			foreach($galeri->result_array() as $row) :
			                    		$id = $row['galeri_id'];
			                    		$judul = $row['galeri_judul'];
			                    		$gambar = $row['galeri_gambar'];
	                  			?>
							<div>	
								<span class="img-thumbnail d-block">
									<img alt="Project Image" src="<?php echo base_url()?>assets/images/<?= $gambar?>" class="img-fluid">
								</span>	
							</div>
							<?php endforeach;?>
						</div>
					</div>
				</div>
				<div id="horizontalScrollBox">
					<div class="content">
						<?php 

						  		foreach($galeri->result_array() as $row) :
			                    	$id = $row['galeri_id'];
			                    	$gambar = $row['galeri_gambar'];
	                  		?>
						<div class="horizontal-scroll-item-wrapper">
							
							<div class="horizontal-scroll-item">
								<a href="#photographyLightbox" class="text-decoration-none popup-with-move-anim">
									<span class="thumb-info">
										<span class="thumb-info-wrapper m-0">
											<img src="<?php echo base_url()?>assets/images/<?= $gambar?>" class="img-fluid" alt="" />
											<span class="thumb-info-plus"></span>
										</span>
									</span>
								</a>
							</div>
							
						</div>
						<?php endforeach;?>
					</div>
					
				</div>

			<footer id="footer" class="mt-0">
				<div class="footer-copyright">
					<div class="container py-2">
						<div class="row py-4">
							<div class="col text-center">
								<ul class="footer-social-icons social-icons social-icons-clean social-icons-icon-light mb-3">
									<li class="social-icons-facebook"><a href="http://www.facebook.com/" target="_blank" title="Facebook"><i class="fab fa-facebook-f"></i></a></li>
									<li class="social-icons-twitter"><a href="http://www.twitter.com/" target="_blank" title="Twitter"><i class="fab fa-twitter"></i></a></li>
									<li class="social-icons-linkedin"><a href="http://www.linkedin.com/" target="_blank" title="Linkedin"><i class="fab fa-linkedin-in"></i></a></li>
								</ul>
								<p><a target="blank" href="digitalcreative.web.id"><strong>Digital Creative</strong></a> - © Copyright 2018. All Rights Reserved.</p>
							</div>
						</div>
					</div>
				</div>
			</footer>

			</div>

		</div>

		
