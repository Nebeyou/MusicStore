<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="/WEB-INF/views/template/header.jsp" %>
<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Add product</h1>

            <p class="lead">Add product in this page</p>
        </div>
        <form:form action="${pageContext.request.contextPath}/admin/productInventory/addProduct" method="post"
                   commandName="product" enctype="multipart/form-data">
        <div class="form-group">
            <label for="name">Name</label>
            <form:input path="productName" id="name" class="form-control"/>

        </div>
        <div class="form-group">
            <label for="category">Category</label>
            <label class="checkbox-inline"><form:radiobutton path="productCategory" id="category"
                                                             value="instrument"/>Instrument</label>
            <label class="checkbox-inline"><form:radiobutton path="productCategory" id="category"
                                                             value="record"/>Record</label>
            <label class="checkbox-inline"><form:radiobutton path="productCategory" id="category"
                                                             value="accessory"/>Accessory</label>
        </div>
        <div class="form-group">
            <label for="description">Description</label>
            <form:textarea path="productDescription" id="description" class="form-control"/>
        </div>
        <div class="form-group">
            <label for="price">price</label>
            <form:input path="productPrice" id="price" class="form-control"/>
        </div>
        <div class="form-group">
            <label for="condition">Condition</label>
            <label class="checkbox-inline"><form:radiobutton path="productCondition" id="condition"
                                                             value="new"/>New</label>
            <label class="checkbox-inline"><form:radiobutton path="productCondition" id="condition"
                                                             value="used"/>used</label>
        </div>
        <div class="form-group">
            <label for="status">Status</label>
            <label class="checkbox-inline"><form:radiobutton path="prodcutStatus" id="status"
                                                             value="active"/>Active</label>
            <label class="checkbox-inline"><form:radiobutton path="prodcutStatus" id="status"
                                                             value="inactive"/>Inactive</label>
        </div>
        <div class="form-group">
            <label for="unitStock">Unit in Stock</label>
            <form:input path="unitInStock" id="unitStock" class="form-control"/>
        </div>
        <div class="form-group">
            <label for="manufacturer">Manufacturer</label>
            <form:input path="productManufuctor" id="manufacturer" class="form-control"/>
        </div>
        <div class="form-group">
            <label class="control-label" for="productImage">Upload Picture</label>
            <form:input path="productImage" id="productImage" type="file" class="form:input-large"/>
        </div>
        <br><br>
        <input type="submit" value="Submit" class="btn btn-default" >
        <a href="<c:url value="/admin/productInventory" />" class="btn btn-default">Cancel</a>
        </form:form>
        <%@include file="/WEB-INF/views/template/footer.jsp" %>
