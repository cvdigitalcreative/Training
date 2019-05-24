			<div role="main" class="main" id="main">
				
				<section class="page-header page-header-modern page-header-background page-header-background-sm" style="background-image: url(<?= base_url()?>assets/img/demos/photography/custom-header-bg.jpg);">
					<div class="container">
						<div class="row py-3">
							<div class="col-md-12 align-self-center p-static order-2 text-center">
								<h1 class="font-weight-normal text-12 m-0 pb-2">Pendaftaran</h1>
							</div>
						</div>
					</div>
				</section>

				<section>
					<div class="container">
						<div class="row justify-content-center text-center pt-4 mt-4 pb-4 mb-4">
							<div class="col-lg-8 pb-3">
								<h2 class="font-weight-normal custom-font-size-1 mb-4">Form Pendaftaran</h2>

								<form   action="php/contact-form.php" method="POST">
									
									<div class="form-row">
										<div class="form-group text-left col">
											<label class="control-label"><b>Nama</b></label>
											<input type="text" placeholder="Nama Lengkap" value="" maxlength="100" class="form-control" name="nama" id="name" required>
										</div>
									</div>
									<div class="form-row">
										<div class="form-group text-left col">
											<label class="control-label"><b>Telpon</b></label>
											<input type="text" placeholder="Nomor Telpon" value="" maxlength="100" class="form-control" name="telp" id="name" required>
										</div>
									</div>
									<div class="form-row">
										<div class="form-group text-left col">
											<label class="control-label"><b>Email</b></label>
											<input type="email" placeholder="Your E-mail" value="" maxlength="100" class="form-control" name="email" id="email" required>
										</div>
									</div>
									<div class="form-row">
										<div class="form-group text-left col">
											<label class="control-label"><b>Training</b></label>
											<select class="form-control " name="training">
												<option>Puji</option>
											</select>
										</div>
									</div>
									
									<div class="form-row">
										<div class="form-group text-left col">
											<label class="control-label"><b>Comment</b></label>
											<textarea maxlength="5000" placeholder="Message" rows="10" class="form-control" name="pesan" id="message" required></textarea>
										</div>
									</div>
									<div class="form-row">
										<div class="form-group text-center col">
											<input type="submit" value="Submit" class="btn btn-quaternary  btn-lg text-uppercase font-weight-semibold" >
										</div>
									</div>
								</form>
							</div>
						</div>
					</div>
				</section>
					

			</div>

					