		<div role="main" class="main">

				<section class="page-header page-header-modern page-header-background page-header-background-sm" style="background-image: url(<?= base_url()?>assets/img/photography/custom-header-bg.jpg);">
					<div class="container">
						<div class="row py-3">
							<div class="col-md-12 align-self-center p-static order-2 text-center">
								<h1 class="font-weight-normal text-12 m-0 pb-2">Kontak Kami</h1>
							</div>
						</div>
					</div>
				</section>

				<div class="container">

					<div class="row py-4">
						<div class="col-lg-6">

							<div class="overflow-hidden mb-1">
								<h2 class="font-weight-normal text-7 mt-2 mb-0 appear-animation" data-appear-animation="maskUp" data-appear-animation-delay="200"><strong class="font-weight-extra-bold">Kontak</strong> Kami</h2>
							</div>
							<div class="overflow-hidden mb-4 pb-3">
								<p class="mb-0 appear-animation" data-appear-animation="maskUp" data-appear-animation-delay="400">Feel free to ask for details, don't save any questions!</p>
							</div>
							<?php echo $this->session->flashdata('msg');?>

							<form class="" action="<?= base_url()?>Kontak/kirim_pesan" method="post" >

								
								
								<div class="form-row">
									<div class="form-group col-lg-6">
										<label class="required font-weight-bold text-dark">Full Name</label>
										<input type="text" maxlength="100" class="form-control" name="name" id="name" required>
									</div>
									<div class="form-group col-lg-6">
										<label class="required font-weight-bold text-dark">Email Address</label>
										<input type="email" value="" maxlength="100" class="form-control" name="email" id="email" required>
									</div>
								</div>
								<div class="form-row">
									<div class="form-group col">
										<label class="required font-weight-bold text-dark">Message</label>
										<textarea maxlength="5000" rows="8" class="form-control" name="message" id="message" required></textarea>
									</div>
								</div>
								<div class="form-row">
									<div class="form-group col">
										<input type="submit" value="Send Message" class="btn btn-primary btn-modern">
									</div>
								</div>
							</form>
						</div>
						<div class="col-lg-6">

							<div class="appear-animation" data-appear-animation="fadeIn" data-appear-animation-delay="800">
								<h4 class="mt-2 mb-1">Our <strong>Office</strong></h4>
								<ul class="list list-icons list-icons-style-2 mt-2">
									<li><i class="fas fa-map-marker-alt"></i> <strong>Alamat:</strong> <?= $alamat['galeri_judul']?></li>
									<li><i class="fas fa-phone"></i> <strong>Telp/Fax:</strong> <?= $telp['galeri_judul']?></li>
									<li><i class="fas fa-phone"></i> <strong>Nomor Hp:</strong> <?= $hp['galeri_judul']?></li>
									<li><i class="far fa-envelope"></i> <strong>Email:</strong> <a href="mailto:<?= $email['galeri_judul']?>"><?= $email['galeri_judul']?></a></li>
								</ul>
							</div>


							

						</div>

					</div>

				</div>


			</div>