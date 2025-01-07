<html>
<head>
<meta charset="UTF-8" />
<title>BootStrap demo</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="<%= application.getContextPath() %>/css/style.css" />
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
	crossorigin="anonymous"></script>
</head>
<body>
	<nav class="navbar navbar-expand-lg bg-body-tertiary">
		<div class="container-fluid">
			<h1 class="navbar-brand" href="#">
				EcoTech Solutions
            </h1>
			
			<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
				aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			
			<div class="collapse navbar-collapse" id="navbarNav">
				<ul class="navbar-nav ms-auto">
					<li class="nav-item">
						<a class="nav-link" href="#first-container">About Us</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="#second-container">Our Work</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="#third-container">Contact Us</a>
					</li>
				</ul>
			</div>
		</div>
	</nav>
	<div class="container">
		<div class="first-container" id="first-container">
			<h2>About Us</h2>
			<p class="p">Welcome to our website, where innovation meets
				convenience. We are dedicated to providing top-quality products and
				services designed to enhance your daily life. With a focus on
				customer satisfaction, we aim to deliver personalized experiences
				tailored to your unique needs. Explore our wide range of offerings,
				from cutting-edge technology to essential tools, all backed by our
				commitment to excellence. Whether you're looking for the latest
				trends or reliable solutions, you’ll find everything you need right
				here. Join us on our journey to make life easier, smarter, and more
				enjoyable.</p>
		</div>

		<div class="second-container" id="second-container">
			<h2>Our Work</h2>
			<p>At EcoTech Solutions, we are committed to revolutionizing
				sustainability with cutting-edge green technology. Our team of
				experts works tirelessly to create eco-friendly products that not
				only reduce environmental impact but also improve the quality of
				life for communities around the world. From energy-efficient
				appliances to solar-powered innovations, EcoTech is shaping the
				future of clean energy.</p>
			<h4>Keep Points</h4>
			<ul>
				<li>EcoTech Solutions: Revolutionizing Sustainability with
					Cutting-Edge Green Technology</li>
				<li>EcoTech Solutions: Creating a Better Future for Our Planet</li>
				<li>EcoTech Solutions: Making a Difference in the World</li>
				<li>EcoTech Solutions: Your Partner in Sustainability</li>
				<li>EcoTech Solutions: Innovation for a Sustainable Future</li>
				<li>EcoTech Solutions: Eco-Friendly Products for a Greener
					Tomorrow</li>
				<li>EcoTech Solutions: Leading the Way in Green Technology</li>
				<li>EcoTech Solutions: Making Sustainability Accessible to
					Everyone</li>
			</ul>
		</div>
		<div class="third-container" id="third-container">
			<h2>Contact Us</h2>
			<form id="contactForm" class="form-group" action="<%= application.getContextPath() %>/servers" method="POST">
				<div class="form-row">
					<label for="name">Name</label> <input type="text" id="name"
						placeholder="Your Full Name" name="name" required>
				</div>

				<div class="form-row">
					<label for="contact">Contact Number</label> <input type="tel"
						id="contact" name="contact"
						placeholder="Phone number with country code" required
						class="contact">
				</div>

				<div class="form-row">
					<label for="email">Email ID</label> <input type="email" id="email"
						name="email" placeholder="Email ID" required class="email">
				</div>

				<div class="form-row">
					<input type="submit" value="Submit" class="submit-btn">
				</div>
			</form>
		</div>
	</div>
</body>

</html>