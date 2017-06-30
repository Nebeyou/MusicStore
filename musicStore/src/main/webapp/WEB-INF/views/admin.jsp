<%@include file="/WEB-INF/views/template/header.jsp"%>
<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Administration Page</h1>

            <p class="lead">This is admin page </p>
            <h3>
                <a href="<c:url value="admin/productInventory"/> "> Product Inventory</a>
            </h3>
            <p>
                Here you can vie, check and modify the product inventory!
            </p>
        </div>
    </div>
</div>
<%@include file="/WEB-INF/views/template/footer.jsp"%>
