<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Carnegie Finance Service</title>


</head>

<body>

    <form action="read.do" method="POST" enctype="multipart/form-data">
		<input type="file" name="file" size="50" /> <br/>
		<input type="submit" name="action" value="Upload File" />
	</form>

</body>

</html>
