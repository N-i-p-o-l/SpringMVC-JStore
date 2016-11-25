<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<div>
  <a href=" <c:url value="/product/add?id=${id}"/>" />Add Product</a>
</div>

<table class="table table-hover">
  <thead>
  <tr>
    <th>Name</th>
    <th>Action</th>
  </tr>
  </thead>
  <tbody>
  <c:forEach var="product" items="${products}">
    <tr>
      <td>
        <a href="<c:url value="/product/${product.id}"/>">${product.name}</a>
      </td>
      <td>
        <a href="<c:url value="/product/edit?id=${product.id}"/>" class="btn btn-success">
          <span class="glyphicon glyphicon-pencil"></span>
        </a>
        <a href="<c:url value="/product/remove?id=${product.id}"/>" class="btn btn-danger">
          <span class="glyphicon glyphicon-trash"></span>
        </a>
      </td>
    </tr>
  </c:forEach>
  </tbody>
</table>