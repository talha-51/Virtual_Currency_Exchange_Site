<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">

    <title>Announcement</title>
</head>

<body>
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <div class="container-fluid">
            <a class="navbar-brand" href="#">VCES</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
                aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="#">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Chat Box</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Market Place</a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button"
                            data-bs-toggle="dropdown" aria-expanded="false">
                            More
                        </a>
                        <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <li><a class="dropdown-item" href="#">Edit Profile</a></li>
                            <li><a class="dropdown-item" href="#">User List</a></li>
                            <li><a class="dropdown-item" href="#">Transaction List</a></li>
                            <li><a class="dropdown-item" href="#">User Reports</a></li>
                            <li>
                                <hr class="dropdown-divider">
                            </li>
                            <li><a class="dropdown-item" href="#">Announcement</a></li>
                        </ul>
                    </li>
                </ul>

                <ul class="navbar-nav mr-auto mb-2 mb-lg-0">
                    <li class="nav-item mr-2">
                        <a class="nav-link" href="#">Logout</a>
                    </li>
                </ul>

            </div>
        </div>
    </nav>

    <div class="text-center mt-5 mb-5">
        <h1>Announcements</h1>
    </div>

    <table style="margin:auto;max-width:900px" class="table table-striped">
        <thead>
          <tr>
            <th scope="col">Date</th>
            <th scope="col">Announcement</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td>2-2-2021</td>
            <td>Site will go down for 4hours for maintenance</td>
          </tr>
          <tr>
            <td>5-6-2021</td>
            <td>New feature "Live chat" is now Live. Go there and say Hi</td>
          </tr>
          <tr>
            <td>9-7-2021</td>
            <td>New feature "Report Seller" implemented. From now you can report your issues.</td>
          </tr>
        </tbody>
      </table>


    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous">
    </script>
</body>

</html>
