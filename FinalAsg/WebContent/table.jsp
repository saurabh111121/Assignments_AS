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
                    <table class="table table-bordered table-hover" id="table1">
                        <thead class="thead-light">
                            <tr>
                                <th>Login Id</th>
                                <th>Name</th>
                                <th>Employee Id</th>
                                <th>Site</th>
                                <th>Department</th>
                            </tr>
                        </thead>
                        <tbody>
                            
          <!-- enter the content here -->
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
 
  <!-- testing
                <h3 id="result" style="text-align:center;font-weight:bold;"></h3>
                 -->
                  <div id="result"></div>
                  
                                         
      
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
                                            <form id="update1123" class="needs-validation_updateUser" novalidate>
                                           
                                                <div class="form-group row">
                                                    <label for="login" class="col-sm-4 col-form-label"> Login:</label>
                                                    <div class="col-sm-8">
                                                        <input type="text" class="form-control" id="updateLogin_id" name="updateLogin_id"  onfocusout="myFunction1(this.value)" onkeyup="searchLogin(this.value)"
                                                        	autocomplete="off"  required>
                                                    </div>
                                                </div>

                                                <div class="form-group row">
                                                    <label for="site" class="col-sm-4 col-form-label">Site: </label>
                                                    <div class="col-sm-8">
                                                        <select class="custom-select" name="updateSite" id="updateSite"  required>
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
                                                        <input type="text" class="form-control" id="updateName" name="updateName"
                                                          autocomplete="off"  required />
                                                    </div>
                                                </div>

                                                <div class="form-group row">
                                                    <label for="id" class="col-sm-4 col-form-label">Employee Id:</label>
                                                    <div class="col-sm-8">
                                                        <input type="text" class="form-control" id="updateEmployee_id" name="updateEmployee_id"
                                                           autocomplete="off"  required />
                                                    </div>
                                                </div>

                                                <div class="form-group row">
                                                    <label for="department" class="col-sm-4 col-form-label">
                                                        Department:</label>
                                                    <div class="col-sm-8">
                                                        <input type="text" class="form-control" id="updateDepartment" name="updateDepartment"
                                                          autocomplete="off"  required />
                                                    </div>
                                                </div>
                                                <!-- FOR TESTING auto-populate   
                                                <div id="res" style="color:red;"></div>
                                                -->
                                                <div id="warning1"></div>

                                                <div class="form-group text-center">
                                                    <button class="btn btn-success" id="submit1"
                                                        style="align-items:;">Submit</button>
                                                </div>
                                                
   
                                            </form>
                                            <script>
                                            
                                            function myFunction1(xdata){
                                            	//alert(xdata);
                                            	var xmlhttp = new XMLHttpRequest();
                                                xmlhttp.onreadystatechange = function () {
                                                	document.getElementById("warning1").innerHTML = xmlhttp.responseText;    
                                                }
                                                xmlhttp.open("POST", "updateError.jsp?q=" + xdata, true);
                                                xmlhttp.send();
                                            	
                                            }
                                            
                                            //for auto-populate
                                            function searchLogin(l) {
                                                var xmlhttp = new XMLHttpRequest();
                                                xmlhttp.onreadystatechange = function () {
                                                   // document.getElementById("res").innerHTML = xmlhttp.responseText;
                                                    var val = xmlhttp.responseText;
                                                       //console.log(val);
                                                       var fdata =$.trim(val);
                                                       var sp= fdata.split(",");
                                                       $("#updateSite").val(sp[0]);
                                                       $("#updateName").val(sp[1]);
                                                       $("#updateEmployee_id").val(sp[2]);
                                                       $("#updateDepartment").val(sp[3]);       
                                                }
                                                xmlhttp.open("POST", "autopopulate.jsp?q=" + l, true);
                                                xmlhttp.send();
                                            }
                                               
                                               // for basic validation
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
                                                                	event.preventDefault();
                                                                	
                                                                	$.ajax({
                                                                    	url: "updateUser.jsp",
                                                                    	type: "POST",
                                                                    	data: {login_id:$('#updateLogin_id').val(),name:$('#updateName').val(),employee_id:$('#updateEmployee_id').val(),site:$('#updateSite').val(),department:$('#updateDepartment').val() },
                                                                    	success: function (data) {
                                                                    
                                                                    	   document.getElementById("result").innerHTML=data;
                                                                    	   setTimeout(function(){
                                                                               document.getElementById("result").innerHTML = '';
                                                                           }, 3000);
                                                                    	   
                                                                    	   $("#table1").load(location.href + " #table1>*", "");
                                                                    	}
                                                                    
                                                                    	      
                                                                    	});
                                                                	
                                                                    document.getElementById('update1123').reset();         
                                                                    document.getElementById('update1123').classList.remove("was-validated");
                                                                    $('#Updateuser_table').modal('toggle');

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
                                            <form id="addUser1123" class="needs-validation_AddUser" novalidate>

                                                <div class="form-group row">
                                                    <label for="login" class="col-sm-4 col-form-label"> Login:</label>
                                                    <div class="col-sm-8">
                                                        <input type="text" class="form-control" id="addLogin_id" name="addLogin_id" onfocusout="myFunction2(this.value)"
                                                           autocomplete="off" required>
                                                    </div>
                                                </div>

                                                <div class="form-group row">
                                                    <label for="site" class="col-sm-4 col-form-label">Site: </label>
                                                    <div class="col-sm-8">
                                                        <select class="custom-select" name="addSite" id="addSite" required>
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
                                                        <input type="text" class="form-control" id="addName" name="addName"
                                                          autocomplete="off"  required />
                                                    </div>
                                                </div>

                                                <div class="form-group row">
                                                    <label for="id" class="col-sm-4 col-form-label">Employee Id:</label>
                                                    <div class="col-sm-8">
                                                        <input type="text" class="form-control" id="addEmployee_id" name="addEmployee_id"
                                                           autocomplete="off"  required />
                                                    </div>
                                                </div>

                                                <div class="form-group row">
                                                    <label for="department" class="col-sm-4 col-form-label">
                                                        Department:</label>
                                                    <div class="col-sm-8">
                                                        <input type="text" class="form-control" id="addDepartment" name="addDepartment"
                                                         autocomplete="off"   required />
                                                    </div>
                                                </div>
                                                
                                                 <div id="warning2"></div>

                                                <div class="form-group text-center">
                                                    <button class="btn btn-success" type="submit">Submit</button>
                                                </div>

                                            </form>
                                            <script>
                                            function myFunction2(xdata){
                                            	//alert(xdata);
                                            	var xmlhttp = new XMLHttpRequest();
                                                xmlhttp.onreadystatechange = function () {
                                                	document.getElementById("warning2").innerHTML = xmlhttp.responseText;    
                                                }
                                                xmlhttp.open("POST", "addError.jsp?q=" + xdata, true);
                                                xmlhttp.send();
                                            	
                                            }
                                             
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
                                                                	event.preventDefault();
                                                                	
                                                                	$.ajax({
                                                                    	url: "addUser.jsp",
                                                                    	type: "POST",
                                                                    	data: {login_id:$('#addLogin_id').val(),name:$('#addName').val(),employee_id:$('#addEmployee_id').val(),site:$('#addSite').val(),department:$('#addDepartment').val() },
                                                                    	success: function (data) {
                                                                    	   //alert( data);
                                                                    	   document.getElementById("result").innerHTML=data;
                                                                    	   setTimeout(function(){
                                                                               document.getElementById("result").innerHTML = '';
                                                                           }, 3000);
                                                                    	   $("#table1").load(location.href + " #table1>*", "");

                                                                    	}
                                                                    	      
                                                                    	});
                                                                	
                                                                    document.getElementById('addUser1123').reset();         
                                                                    document.getElementById('addUser1123').classList.remove("was-validated");
                                                                    $('#Adduser_table').modal('toggle');
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