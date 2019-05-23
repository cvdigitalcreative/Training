			<div role="main" class="main" id="main">
				
				<section class="page-header page-header-modern page-header-background page-header-background-sm" style="background-image: url(<?= base_url()?>assets/img/demos/photography/custom-header-bg.jpg);">
					<div class="container">
						<div class="row py-3">
							<div class="col-md-12 align-self-center p-static order-2 text-center">
								<h1 class="font-weight-normal text-12 m-0 pb-2">Galeri</h1>
							</div>
						</div>
					</div>
				</section>

				<div class="container-fluid p-0">

					<div id="photographyLightbox" class="mfp-hide">
						<div class="thumb-gallery">
							<div class="owl-carousel owl-theme manual thumb-gallery-detail" id="thumbGalleryDetail">
								<?php 

						  			foreach($galeri->result_array() as $row) :
				                    	$id = $row['galeri_id'];
				                    	$gambar = $row['galeri_gambar'];
	                  			?>
								<div>
									<span class="img-thumbnail d-block">
										<img alt="" src="<?= base_url()?>assets/images/<?= $gambar?>" class="img-fluid">
									</span>
								</div>
								<?php endforeach;?>
							</div>
							<div class="owl-carousel owl-theme manual thumb-gallery-thumbs show-thumbs mt" id="thumbGalleryThumbs">
								<?php 

						  			foreach($galeri->result_array() as $row) :
				                    	$id = $row['galeri_id'];
				                    	$gambar = $row['galeri_gambar'];
	                  			?>
								<div>
									<span class="img-thumbnail d-block cur-pointer">
										<img alt="" style="width: 100px" src="<?= base_url()?>assets/images/<?= $gambar?>">
									</span>
								</div>
								<?php endforeach;?>
							</div>
						</div>
					</div>
					<ul id="portfolioGrid" class="p-0" data-grid-sizer=".col-lg-3">

						<?php 
							$i = 0;
						  	foreach($galeri->result_array() as $row) {
				                $id = $row['galeri_id'];
				                $gambar = $row['galeri_gambar'];

				                

				            if($i == 0 || $i % 5 == 0){

				            

	                  	?>
							<li class="col-lg-6 isotope-item p-0">
								<div class="portfolio-grid-item">
									<a href="#photographyLightbox" class="text-decoration-none popup-with-move-anim">
										<div class="thumb-info">
											<div class="thumb-info-wrapper size-1 m-0">
												<span class="thumb-info-background" style="background-image: url('<?= base_url()?>assets/images/<?= $gambar?>');"></span>
												<span class="thumb-info-plus"></span>
											</div>
										</div>
									</a>
								</div>
							</li>
						<?php 
							}else{
						?>
							<li class="col-md-6 col-lg-3 isotope-item p-0">
								<div class="portfolio-grid-item">
									<a href="#photographyLightbox" class="text-decoration-none popup-with-move-anim">
										<div class="thumb-info">
											<div class="thumb-info-wrapper size-2 m-0">
												<span class="thumb-info-background" style="background-image: url('<?= base_url()?>assets/images/<?= $gambar?>');"></span>
												<span class="thumb-info-plus"></span>
											</div>
										</div>
									</a>
								</div>
							</li>
						<?php
								}
								$i++;
							}
						?>
					</ul>
				</div>
					

			</div>

					