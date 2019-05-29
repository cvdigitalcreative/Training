<div role="main" class="main" id="main">
				
				<section class="page-header page-header-modern page-header-background page-header-background-sm" style="background-image: url(img/demos/photography/custom-header-bg.jpg);">
					<div class="container">
						<div class="row py-3">
							<div class="col-md-12 align-self-center p-static order-2 text-center">
								<h1 class="font-weight-normal text-12 m-0 pb-2">Training</h1>
							</div>
						</div>
					</div>
				</section>

				<div class="container">
					<div class="row mt-4 mb-4">
						<div class="col">
							<?php 
							  	foreach($data->result_array() as $row) :
				                	$id = $row['tulisan_id'];
				                 	$judul = $row['tulisan_judul'];
				                	$isi = $row['tulisan_isi'];
				                	$gambar = $row['tulisan_gambar'];
				                	$slug = $row['tulisan_slug'];
				                	$tanggal = $row['tanggal'];
	                  		?>
							<article class="our-blog-item blog-post mt-4">
								<span class="image-wrapper">
									<img src="<?= base_url()?>assets/images/<?= $gambar?>" alt="" class="img-fluid" />
								</span>
								<div class="post-infos">
									<div class="share">
										<div class="share-icons bg-color-quaternary">
											<a href="#" class="text-decoration-none" title="Share on Linkedin"><i class="fab fa-linkedin-in"></i></a>
											<i class="fas fa-share-alt"></i>
										</div>
									</div>
									<style type="text/css">
										p {
											margin-bottom: 10px;
										}
									</style>
									<span class="post-date">
										<?= $tanggal;?>
									</span>
									<h1 class="font-weight-normal mb-4">
										<?= $judul;?>
									</h1>
									
									<?= $isi;?>
							<?php endforeach;?>
									<h4><?= $album_nama?></h4>
									<div class="owl-carousel owl-theme nav-center custom-carousel-dots-style pt-4" data-plugin-options="{'items': 2, 'responsive': {'479': {'items': 1}, '979': {'items': 2}, '1199': {'items': 2}}, 'margin': 10, 'loop': false, 'dots': true, 'nav': false}">
										<?php foreach($galeri->result_array() as $i) :
										  	$id = $i['galeri_id'];
										    $gambar = $i['galeri_gambar'];
										?>
										<div>
											<a href="#photographyLightbox" class="text-decoration-none">
												<img src="<?= base_url()?>assets/images/<?= $gambar?>" alt="" class="img-fluid" />
											</a>
										</div>
										<?php endforeach;?>
									</div>
								</div>
							</article>

							
						</div>	
					</div>
				</div>
			</div>

			<div id="photographyLightbox" class="mfp-hide">
					<div class="thumb-gallery">
						<div class="owl-carousel owl-theme manual thumb-gallery-detail" id="thumbGalleryDetail">
							<?php foreach($galeri->result_array() as $i) :
										  	$id = $i['galeri_id'];
										    $gambar = $i['galeri_gambar'];
										?>
							<div>
								<span class="img-thumbnail d-block">
									<img alt="Project Image" src="<?= base_url()?>assets/images/<?= $gambar?>" class="img-fluid">
								</span>
							</div>
							<?php endforeach;?>
						</div>
					</div>
				</div>
