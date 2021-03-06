<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset = "UTF-8">

        <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
        <title>SWEN383Store</title>
        <link rel="stylesheet" href="/css/index.css">

        <script>
        function validateForm(){
            let fields = new Array;
            fields = [document.getElementById('name'),document.getElementById('email'),document.getElementById('password'),
            document.getElementById('address'),document.getElementById('city'),document.getElementById('state'),
            document.getElementById('zip'),document.getElementById('home'),document.getElementById('mobile')];
            var err = 0;

            for (i=0;i<fields.length;i++){
                if (fields[i].value == ""){
                err++;
                }
            }

            if (err !== 0){
                document.getElementById("inputError").innerHTML = "Please Fill Out All Of The Fields";
                return false;
            }
        }
        </script>

    </head>
    <body>
        <h1>SWEN383Store</h1>

        <div id="login">
            <label class="notice">
                <#if Res == "None">
                    Welcome, please log in.
                <#elseif Res == "SUCCESS">
                    Registration Successful, please log in.
                <#elseif Res == "FailedLogin">
                    Incorrect email/password, please try again.
                <#elseif Res == "FAILED">
                    Registration failed...Please try again.
                <#else>

                </#if>
            </label>
            <form action="/home" method="post">
                <div class="form-group">
                    <label for="exampleInputEmail1">Email address</label>
                    <input type="email" required="required" class="form-control" id="InputEmail" name="in-email" aria-describedby="emailHelp">
                    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
                </div>
                <div class="form-group">
                    <label for="exampleInputPassword1">Password</label>
                    <input type="password" required="required" class="form-control" id="InputPassword" name="in-password">
                </div>
                <div class="form-group form-check">
                    <input type="checkbox" class="form-check-input" id="exampleCheck1">
                    <label class="form-check-label" for="exampleCheck1">Remember me</label>
                </div>
                <button type="submit" class="btn btn-primary" value="submit"><a>Sign In</a></button>
                <!-- Button trigger modal -->
                <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#staticBackdrop" id="register">Register</button>
            </form>

            <!-- Modal -->
            <div class="modal fade" id="staticBackdrop" data-backdrop="static" tabindex="-1" role="dialog" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="staticBackdropLabel">Register</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <form action="/" method="POST" name="registerForm" onsubmit ="return validateForm()">
                        <div class="modal-body">
                            <div class="form-row">
                               <div class="form-group col-md-6">
                                   <label for="validationDefault02">Full Name</label>
                                   <input type="text" class="form-control" id="name" name="name" placeholder="Full Name" >
                                </div>
                                <div class="form-group col-md-6">
                                    <label for="inputEmail">Email</label>
                                    <input type="email" class="form-control" name="email" id = "email">
                                </div>
                                <div class="form-group col-md-6">
                                    <label for="inputPassword">Password</label>
                                    <input type="password" class="form-control" name="password" id = "password">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="inputAddress">Address</label>
                                <input type="text" class="form-control" name="address" placeholder="1234 Main St" id = "address">
                            </div>
                            <div class="form-row">
                                <div class="form-group col-md-6">
                                    <label for="city">City</label>
                                    <input type="text" class="form-control" name="city" id = "city">
                                </div>
                                <div class="form-group col-md-4">
                                    <label for="state">State</label>
                                    <select name="state" class="form-control" id = "state" >
                                        <option selected>Choose...</option>
                                        <option>NY</option>
                                    </select>
                                </div>
                                <div class="form-group col-md-2">
                                    <label for="zip">Zip</label>
                                    <input type="text" class="form-control" name="zip" id = "zip">
                                </div>

                            </div>
                            <div class="form-group">
                                <label for="phone">Home Phone Number</label>
                                <input type="text" class="form-control" name="home" placeholder="1234567890" id = "home">
                            </div>
                            <div class="form-group">
                                <label for="phone">Mobile Phone Number</label>
                                <input type="text" class="form-control" name="mobile" placeholder="1234567890" id = "mobile">
                            </div>
                            <p id="inputError"></p>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
                            <button type="submit" class="btn btn-primary" value="submit">Submit</button>
                        </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>