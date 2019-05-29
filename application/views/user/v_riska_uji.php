<div role="main" class="main" id="main">
				
				<section class="page-header page-header-modern page-header-background page-header-background-sm" style="background-image: url(<?= base_url()?>assets/img/demos/photography/custom-header-bg.jpg);">
					<div class="container">
						<div class="row py-3">
							<div class="col-md-12 align-self-center p-static order-2 text-center">
								<h1 class="font-weight-normal text-12 m-0 pb-2"><?= $title?></h1>
							</div>
						</div>
					</div>
				</section>
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
								<a href="<?= base_url()?>Riska_uji/<?= $slug?>" target="_blank" class="text-decoration-none">
									<span class="image-wrapper">
										<img src="<?php echo base_url()?>assets/images/<?= $gambar?>" alt="" class="img-fluid" />
									</span>
								</a>
								<div class="post-infos">
									<div class="share">
										<div class="share-icons bg-color-quaternary">
											<a href="#" class="text-decoration-none" title="Share on Facebook"><i class="fab fa-facebook-f"></i></a>
											<i class="fas fa-share-alt"></i>
										</div>
									</div>
									<h1 class="font-weight-normal">
										<a href="<?= base_url()?>Riska_uji/<?= $slug?>" target="_blank" class="text-decoration-none" style="font-size: 20px !important;"><?= $judul?></a>
									</h1>
									<a href="<?= base_url()?>Riska_uji/<?= $slug?>" target="_blank" class="text-decoration-none">
										<p><?= limit_words($isi, 10)."..."?></p>
									</a>
								</div>
							</article>
						</div>
						<?php endforeach;?>
					</div>
					<div class="row">
						<div class="col">
							<div id="photographyPagination">
								<?php echo $page;?>
							</div>
						</div>
					</div>
				</div>

			</div>

			
