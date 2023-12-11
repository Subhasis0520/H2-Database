<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<title>Product</title>
</head>

<body>
    <h3>Product Details</h3>
   
     <a href=" "> + Add Product + </a>
   
    <table class="table-dark" border="2px">
  <thead>
    <tr class="table-dark">
    <th scope="col">Product ID</th>
      <th scope="col">Product Name</th>
      <th scope="col">Price</th>
      <th scope="col">Quantity</th>
    </tr>
  </thead>
  <tbody>
    
        <c:forEach var="temp" items="${products} varStatus="index">
        <tr>
         <td > ${index.count}</td>
          <td > ${temp.productName}</td>
          <td > ${temp.price}</td>
          <td > ${temp.quantity}</td>
           </tr>
        </c:forEach>
   
  </tbody>
  </table>
</body>
</html>