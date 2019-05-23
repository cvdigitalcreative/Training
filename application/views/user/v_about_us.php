<div role="main" class="main">

				<section class="page-header page-header-modern page-header-background page-header-background-sm" style="background-image: url(<?= base_url()?>assets/img/demos/photography/custom-header-bg.jpg);">
					<div class="container">
						<div class="row py-3">
							<div class="col-md-12 align-self-center p-static order-2 text-center">
								<h1 class="font-weight-normal text-12 m-0 pb-2">Tentang Kami</h1>
							</div>
						</div>
					</div>
				</section>

				<section class="section section-default border-0 my-5 appear-animation" data-appear-animation="fadeIn" data-appear-animation-delay="750">
					<div class="container py-4">

						<div class="row align-items-center">
							<?php 

							  	foreach($whowe->result_array() as $row) :
				                	$id = $row['tulisan_id'];
				                 	$judul = $row['tulisan_judul'];
				                	$isi = $row['tulisan_isi'];
	                  		?>
							<div class="col-md-6">
								<div class="overflow-hidden mb-2">
									<h2 class="text-color-dark font-weight-normal text-5 mb-0 pt-0 mt-0 appear-animation" data-appear-animation="maskUp" data-appear-animation-delay="1200"><strong class="font-weight-extra-bold"><?= $judul?></strong></h2>
								</div>
								<p class="appear-animation" data-appear-animation="fadeInUpShorter" data-appear-animation-delay="1400"><?= $isi?></p>
							</div>
							<?php endforeach;?>
							<div class="col-md-6">
								<div class="toggle toggle-primary toggle-simple m-0" data-plugin-toggle>
									<?php 

									  	foreach($visi->result_array() as $row) :
						                	$id = $row['tulisan_id'];
						                 	$judul = $row['tulisan_judul'];
						                	$isi = $row['tulisan_isi'];
	                  				?>
									<section class="toggle active mt-0">
										<label><?= $judul?></label>
										<div class="toggle-content">
											<?= $isi?>
										</div>
									</section>
									<?php endforeach;?>
									<?php 

									  	foreach($misi->result_array() as $row) :
						                	$id = $row['tulisan_id'];
						                 	$judul = $row['tulisan_judul'];
						                	$isi = $row['tulisan_isi'];
	                  				?>
									<section class="toggle active mt-0">
										<label><?= $judul?></label>
										<div class="toggle-content">
											<?= $isi?>
										</div>
									</section>
									<?php endforeach;?>
								</div>
							</div>
						</div>

						<div class="row align-items-center">
							<?php 
								foreach($layanan->result_array() as $row) :
						            $id = $row['tulisan_id'];
						            $judul = $row['tulisan_judul'];
						            $isi = $row['tulisan_isi'];
	                  		?>
							<div class="col-md-12">
								<div class="overflow-hidden mb-2">
									<h2 class="text-color-dark font-weight-normal text-5 mb-0 pt-0 mt-0 appear-animation" data-appear-animation="maskUp" data-appear-animation-delay="1200"><strong class="font-weight-extra-bold"><?= $judul?></strong></h2>
								</div>
								<p class="appear-animation" data-appear-animation="fadeInUpShorter" data-appear-animation-delay="1400"><?= $isi?></p>
							</div>
							<?php endforeach;?>
						</div>

					</div>
				</section>

			</div>