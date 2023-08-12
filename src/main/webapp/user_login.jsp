<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Login Page</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css"
	integrity="sha512-Fo3rlrZj/k7ujTnHg4CGR2D7kSs0v4LLanw2qksYuRlEzO+tcaEPQogQ0KaoGN26/zrn20ImR1DfuLWnOo7aBA=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />

	
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
		crossorigin="anonymous"></script>
	

<style type="text/css">
.paint-card{
    box-shadow: 0 0 10px 0 rgba(0,0,0,0.3);
}
</style>

</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-success">
	<div class="container-fluid">
		<a class="navbar-brand" href="index.jsp"> <i
			class="fa-solid fa-house-medical"></i> EKA HOSPITAL
		</a>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
			data-bs-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav ms-auto mb-2 mb-lg-0">
			
				<li class="nav-item"><a class="nav-link active"
					aria-current="page" href="admin_login.jsp"> <i
						class="fa-solid fa-right-to-bracket"></i> ADMIN
				</a></li>


				<li class="nav-item"><a class="nav-link active"
					aria-current="page" href="doctor_login.jsp"> <i class="fa-solid fa-user-doctor"></i> DOCTOR</a></li>


				<li class="nav-item"><a class="nav-link active"
					aria-current="page" href="#"> <i class="fa-solid fa-calendar-check"></i>  APPOINTMENT</a></li>


				<li class="nav-item"><a class="nav-link active"
					aria-current="page" href="user_login.jsp"> <i class="fa-solid fa-user"></i> USER</a></li>
                    <br><br>

				<!-- <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Dropdown
          </a>
          <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
            <li><a class="dropdown-item" href="#">Action</a></li>
            <li><a class="dropdown-item" href="#">Another action</a></li>
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" href="#">Something else here</a></li>
          </ul>
        </li> -->
			</ul>
		</div>
	</div>
	
</nav>

<div class="container p-5">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card paint-card">
					<div class="card-body">
						<p class="fs-4 text-center">User Login</p>

						<form action="#" method="post">
							<div class="mb-3">
								<label class="form-label">Email address</label> <input
									name="email" type="email" class="form-control">
							</div>

							<div class="mb-3">
								<label class="form-label">Password</label> <input
									name="password" type="password" class="form-control">
							</div>

							<button type="submit" class="btn bg-success text-white col-md-12">
								Login</button>
						</form>
						
						<br> Don't have an account?<a href="#" class="text-decoration-none"> Create One </a>
						
					</div>
				</div>
			</div>
		</div>
	</div>



</body>
</html>