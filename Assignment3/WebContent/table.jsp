<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
    <!DOCTYPE html>
    <html>

    <head>
        <meta charset="ISO-8859-1">
        <title>Table</title>
        <!-- Bootstrap files -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>


    </head>

    <body>
    
     

        <!-- header file -->
        <%@ include file="header.html" %>

            <br>
            <!-- Main body -->
            
            <%@page import="com.assignment.dao.UserDao,com.assignment.bean.*,java.util.*" %>
            <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
            
            <%
            List<User> list = UserDao.getAllRecords();
            request.setAttribute("list",list);
            %>

            <div class="container">
                <div>
                    <table class="table">
                        <thead class="thead-dark">
                            <tr>
                                <th>Login Id</th>
                                <th>Name</th>
                                <th>Employee Id</th>
                                <th>Site</th>
                                <th>Department</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach items="${list}" var="u">
                                <tr>
                                    <td>${u.getLogin_id()}</td>
                                    <td>${u.getName()}</td>
                                    <td>${u.getEmployee_id()}</td>
                                    <td>${u.getSite()}</td>
                                    <td>${u.getDepartment()}</td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>


                <div class="row">
                    <div class="col-sm-10">
                        <!-- Update User Modal-->
                        <div class="container">
                            <!-- Button to Open the Modal -->
                            <button type="button" class="btn btn-primary" data-toggle="modal"
                                data-target="#Updateuser_table">
                                Update User
                            </button>
                            <!-- The Modal -->
                            <div class="modal" id="Updateuser_table">
                                <div class="modal-dialog">
                                    <div class="modal-content">

                                        <!-- Modal Header -->
                                        <div class="modal-header">
                                            <h4 class="modal-title w-100 text-center">Update User</h4>
                                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                                        </div>

                                        <!-- Modal body -->
                                        <div class="modal-body">
                                            <form action="edituser.jsp" method="POST" id="update1123" class="needs-validation_updateUser" novalidate>

                                                <div class="form-group row">
                                                    <label for="login" class="col-sm-4 col-form-label"> Login:</label>
                                                    <div class="col-sm-8">
                                                        <input type="text" class="form-control" id="" name="login_id"
                                                            required>
                                                    </div>
                                                </div>

                                                <div class="form-group row">
                                                    <label for="site" class="col-sm-4 col-form-label">Site: </label>
                                                    <div class="col-sm-8">
                                                        <select class="custom-select" name="site" id="" required>
                                                            <option value="" class="">Select your Site</option>
                                                            <option>DEL</option>
                                                            <option>PNQ</option>
                                                            <option>HYD</option>
                                                            <option>CJB</option>
                                                            <option>VCS</option>
                                                        </select>
                                                    </div>
                                                </div>

                                                <div class="form-group row">
                                                    <label for="name" class="col-sm-4 col-form-label">
                                                        Name:</label>
                                                    <div class="col-sm-8">
                                                        <input type="text" class="form-control" id="" name="name"
                                                            required />
                                                    </div>
                                                </div>

                                                <div class="form-group row">
                                                    <label for="id" class="col-sm-4 col-form-label">Employee Id:</label>
                                                    <div class="col-sm-8">
                                                        <input type="text" class="form-control" id="" name="employee_id"
                                                            onfocusout="myFunction2()" required />
                                                    </div>
                                                </div>

                                                <div class="form-group row">
                                                    <label for="department" class="col-sm-4 col-form-label">
                                                        Department:</label>
                                                    <div class="col-sm-8">
                                                        <input type="text" class="form-control" id="" name="department"
                                                            required />
                                                    </div>
                                                </div>

                                                <div class="form-group">
                                                    <button class="btn btn-success"
                                                        style="align-items:;">Submit</button>
                                                </div>

                                            </form>
                                            <script>
                                                (function () {
                                                    window.addEventListener('load', function () {
                                                        var forms = document.getElementsByClassName('needs-validation_updateUser');
                                                        var validation = Array.prototype.filter.call(forms, function (form) {
                                                            form.addEventListener('submit', function (event) {
                                                                if (form.checkValidity() === false) {
                                                                    event.preventDefault();
                                                                    event.stopPropagation();
                                                                }
                                                                form.classList.add('was-validated');
                                                                if (form.checkValidity() == true) {
                                                                    
                                                                    document.forms[0].reset();
                                                                    document.getElementById('update1123').classList.remove("was-validated");

                                                                }

                                                            }, false);
                                                        });
                                                    }, false);
                                                })();

                                            </script>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <br>

                    <div class="col-sm-2">
                        <!-- Add New User Modal-->
                        <div class="container">
                            <!-- Button to Open the Modal -->
                            <button type="button" class="btn btn-primary" data-toggle="modal"
                                data-target="#Adduser_table">
                                Add New User
                            </button>
                            <!-- The Modal -->
                            <div class="modal" id="Adduser_table">
                                <div class="modal-dialog">
                                    <div class="modal-content">

                                        <!-- Modal Header -->
                                        <div class="modal-header">
                                            <h4 class="modal-title w-100 text-center">Add New User</h4>
                                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                                        </div>

                                        <!-- Modal body -->
                                        <div class="modal-body">
                                            <form action="adduser.jsp" method="POST" id="addUser1123" class="needs-validation_AddUser" novalidate>

                                                <div class="form-group row">
                                                    <label for="login" class="col-sm-4 col-form-label"> Login:</label>
                                                    <div class="col-sm-8">
                                                        <input type="text" class="form-control" id="" name="login_id"
                                                            required>
                                                    </div>
                                                </div>

                                                <div class="form-group row">
                                                    <label for="site" class="col-sm-4 col-form-label">Site: </label>
                                                    <div class="col-sm-8">
                                                        <select class="custom-select" name="site" id="" required>
                                                            <option value="" class="">Select your Site</option>
                                                            <option>DEL</option>
                                                            <option>PNQ</option>
                                                            <option>HYD</option>
                                                            <option>CJB</option>
                                                            <option>VCS</option>
                                                        </select>
                                                    </div>
                                                </div>

                                                <div class="form-group row">
                                                    <label for="name" class="col-sm-4 col-form-label">
                                                        Name:</label>
                                                    <div class="col-sm-8">
                                                        <input type="text" class="form-control" id="" name="name"
                                                            required />
                                                    </div>
                                                </div>

                                                <div class="form-group row">
                                                    <label for="id" class="col-sm-4 col-form-label">Employee Id:</label>
                                                    <div class="col-sm-8">
                                                        <input type="text" class="form-control" id="up_emp_id" name="employee_id"
                                                            onfocusout="myFunction2()" required />
                                                    </div>
                                                </div>

                                                <div class="form-group row">
                                                    <label for="department" class="col-sm-4 col-form-label">
                                                        Department:</label>
                                                    <div class="col-sm-8">
                                                        <input type="text" class="form-control" id="" name="department"
                                                            required />
                                                    </div>
                                                </div>

                                                <div class="form-group">
                                                    <button class="btn btn-secondary" type="submit">Submit</button>
                                                </div>

                                            </form>
                                            <script>
                                                (function () {
                                                    window.addEventListener('load', function () {
                                                        var forms = document.getElementsByClassName('needs-validation_AddUser');
                                                        var validation = Array.prototype.filter.call(forms, function (form) {
                                                            form.addEventListener('submit', function (event) {
                                                                if (form.checkValidity() === false) {
                                                                    event.preventDefault();
                                                                    event.stopPropagation();
                                                                }
                                                                form.classList.add('was-validated');
                                                                if (form.checkValidity() == true) {
                                                                    
                                                                    document.forms[0].reset();
                                                                    document.getElementById('addUser1123').classList.remove("was-validated");
                                                                }
                                                            }, false);
                                                        });
                                                    }, false);
                                                })();

                                            </script>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>

            </div>



            <!-- footer -->

    </body>

    </html>