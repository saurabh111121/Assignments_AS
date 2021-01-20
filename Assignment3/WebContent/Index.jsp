<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<html>

<head>
    <title>Assignment 3</title>
    <meta charset="ISO-8859-1">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="author" content="Saurabh kala @kalasaur">

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

    <style>
        /* Set height of the grid so .sidenav can be 100% (adjust if needed) */
        .row.content {
            height: 440px
        }

        /* Set gray background color and 100% height */
        .sidenav {
            background-color: #b8babbf8;
            height: 100%;
        }

        /* Set black background color, white text and some padding */
        footer {
            background-color: #555;
            color: white;
            padding: 15px;
        }

        /* On small screens, set height to 'auto' for sidenav and grid */
        @media screen and (max-width: 767px) {
            .sidenav {
                height: auto;
                padding: 15px;
            }

            .row.content {
                height: auto;
            }
        }

        /* image css */
        #img_sau {
            height: 150px;
            width: 150px;
            float: none;
            display: flex;
            margin-left: auto;
            margin-right: auto;
            margin-top: 33px;
        }


        /* fieldset css */
        legend {
            font-size: 14px;
            font-weight: bold;
            margin-bottom: 0px;
            width: 80%;
            border-radius: 4px;
            padding: 5px 5px 5px 10px;

        }

        fieldset {
            border: 1px solid black !important;
            margin: 0;

            padding: 10px;
            position: relative;
            border-radius: 4px;
            padding-left: 10px !important;
        }

        /* Navbar margin  */
        #margin123 {
            margin-left: 1%;
            margin-right: 2%;
            text-align: center;
        }
    </style>
</head>

<body>
    <!-- header file -->
    <%@ include file="header.html" %>  

    <br>


    <!-- Main body -->
    <div class="container col">
        <!-- left side -->
        <div class="row content col-sm">
            <div class="col-sm-3 sidenav">
                <img src="https://i.ibb.co/Th81qHM/sau.jpg" alt="saurabh img"
                    class="rounded-circle img-fluid responsive" id="img_sau" style="display: block;">
                <br>
                <div class="container text-center">
                    <span class="badge badge-secondary">SAURABH KALA</span>
                </div>
            </div>

            <br>
            <!--Right side top-->
            <div class="col ">
                <div class="row">
                    <div class="col-sm-4">
                        <div class="">
                            <fieldset class="rounded">
                                <legend id="field_id">Employee ID</legend>
                                <input type="text" placeholder="12345678" id="index_emp_id" class="container"><br><br>
                            </fieldset>
                        </div>
                    </div>
                    <div class="col-sm-4">
                        <div class="">
                            <fieldset class="rounded ">
                                <legend>SITE Location</legend>
                                <input type="text" placeholder="HYD" id="index_site_id" class="container"><br><br>
                            </fieldset>
                        </div>
                    </div>
                    <div class="col-sm-4">
                        <div class="">
                            <fieldset class="rounded">
                                <legend>Supervisor</legend>
                                <input type="text" placeholder="abhinayv" id="index_supervisor_id"
                                    class="container"><br><br>
                            </fieldset>
                        </div>
                    </div>

                </div>
                <br>
                <div class="row">
                    <div class="col-sm-12">
                        <div class="">
                            <!-- Table part  -->
                            <table class="table table-bordered" style="position: relative; ">
                                <thead class="thead-dark" id="table_head_color">
                                    <tr>
                                        <th>Login</th>
                                        <th id="change_login_id">LoginID</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>Business Title</td>
                                        <td id="change_businessTitle">Automation Specialist</td>

                                    </tr>
                                    <tr>
                                        <td>Hire Date</td>
                                        <td>1st January 2020</td>
                                    </tr>
                                    <tr>
                                        <td>Department</td>
                                        <td id="change_department">CS Analytics</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>




</body>

</html>