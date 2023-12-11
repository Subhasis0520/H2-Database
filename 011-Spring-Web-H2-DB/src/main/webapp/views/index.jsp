<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%> <%@ taglib
uri="http://www.springframework.org/tags/form" prefix="form" %>

<!DOCTYPE html>
<html>
  <head>
    <meta charset="ISO-8859-1" />
    <title>Product</title>
  </head>
  <body>
    <h3>Product Details</h3>
    <p><font>${msg}</font></p>
    <form:form modelAttribute="product" action="save" method="post">
      <pre>
        Product Name     : <form:input path="productName"/>
        Product Price    : <form:input path="price"/>
        Product Quantity : <form:input path="quantity"/>
                <input type="submit" value="submit"/>

               <a href="view">View Products</a>
     </pre>
    </form:form>
  </body>
</html>
