<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<h1 class="text-center text-info mt-1">QUẢN LÝ SẢN PHẨM</h1>

<c:url value="/lecturers" var="action" />
<form:form method="post" action="${action}" modelAttribute="lecturer" enctype="multipart/form-data">
    <form:errors path="*" element="div" cssClass="alert alert-danger" />
    <form:hidden path="id" />   
    <form:hidden path="image" />
    <div class="form-floating mb-3 mt-3">
        <form:input type="text" class="form-control" 
                    path="name" id="name" placeholder="Tên giảng viên..." />
        <label for="name">Tên giảng viên</label>
        <form:errors path="name" element="div" cssClass="text-danger" />
    </div>
    <div class="form-floating">
        <form:textarea class="form-control" id="des" name="text" 
                       path="description" placeholder="Mô tả"></form:textarea>
            <label for="des">Mô tả</label>
        <form:errors path="description" element="div" cssClass="text-danger" />
    </div>
    <div class="form-floating mb-3 mt-3">
        <form:input type="number" class="form-control" 
                    path="price" id="price" placeholder="Nhập giá..." />
        <label for="price">Gía giảng viên</label>
    </div>
    <div class="form-floating mb-3 mt-3">
        <form:select class="form-select" id="category" name="category" path="categoryId">
            <c:forEach items="${categories}" var="c">
                <c:choose>
                    <c:when test="${c.id == lecturer.categoryId.id}">
                        <option value="${c.id}" selected>${c.name}</option>
                    </c:when>
                    <c:otherwise>
                        <option value="${c.id}">${c.name}</option>
                    </c:otherwise>
                </c:choose>

            </c:forEach>
        </form:select>

        <label for="category" class="form-label">Danh mục giảng viên:</label>
    </div>
    <div class="form-floating mb-3 mt-3">
        <form:input type="file" class="form-control" 
                    path="file" id="file"  />
        <label for="file">Ảnh giảng viên</label>
        <c:if test="${lecturer.image != null}">
            <img src="${lecturer.image}" width="120" />
        </c:if>
    </div>

    <div class="form-floating mb-3 mt-3">
        <button class="btn btn-info" type="submit">
            <c:choose>
                <c:when test="${lecturer.id == null}">Thêm giảng viên</c:when>
                <c:otherwise>Cập nhật giảng viên</c:otherwise>
            </c:choose>
        </button>
    </div>

</form:form>
