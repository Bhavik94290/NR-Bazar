
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>check out</title>
</head>
<body>
<form action="pay" method="post" >
	
	Amount : <input type="text" readonly="readonly" value="${amount}" disabled="disabled" required="required"/><Br><br> 
	Credit Card : <input type="text" size="16" name="ccNum" maxlength="16" pattern="\d{16}" required="required"/><Br><Br>  
	ExpDate : <input type="text" name="expDate" size="4" required="required"/><br><br> 
	
	<input type="submit" value="Pay"/> 

</form>
<script>
		function formatExpiryDate(input) {
		    let value = input.value.replace(/\D/g, ''); // Remove non-numeric characters
		    if (value.length >= 2) {
		        input.value = value.slice(0, 2) + ' / ' + value.slice(2, 4);
		    } else {
		        input.value = value;
		    }
		}
		</script>
</body>

</html>