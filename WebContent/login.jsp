<!DOCTYPE html>
<html lang="en">
<head>
    <title>login.jsp</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
</head>
<body>
<h6 align="left"><a href="index.jsp">*PREVIOUS-PAGE*</a></h6>
<h6 align="left"><a href="index.jsp">*HOME-PAGE*</a></h6>
<div class="container">
     <br/>
    <h3 align="center">Log In TO Download And Upload Files</h3>
    <br/><br/>
    <!-- data-toggle lets you display modal without any JavaScript -->
    <p  align="center"><button  type="button" class="btn btn-success" data-toggle="modal" data-target="#popUpWindow">LOGIN</button></p>

    <div class="modal fade" id="popUpWindow">
        <div class="modal-dialog">
            <div class="modal-content">

                <!-- header -->
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h3 class="modal-title">Log In</h3>
                </div>

                <!-- body (form) -->
                <div class="modal-body">
                    <form  action="loginprocess.jsp" method="post">
                        <div class="form-group">
                            <input type="email" class="form-control" placeholder="Email" name="email">
                        </div>
                        <div class="form-group">
                            <input type="password" class="form-control" placeholder="Password" name="password">
                        </div>
                        <!-- button -->
                     <div class="modal-footer">
                    <input type="submit" value="Submit"/>
                    </div>
                    </form>
                </div>

                

            </div>
        </div>
    </div>

</div>

</body>
</html>
