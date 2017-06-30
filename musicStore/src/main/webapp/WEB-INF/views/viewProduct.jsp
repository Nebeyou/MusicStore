<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@include file="/WEB-INF/views/template/header.jsp"%>
<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Product Detail</h1>

            <p class="lead">Here is the detail information of the product</p>
            <div class="container ">
                <div class="row">
                    <div class="col-md-5">
                        <img src="#" alt="image" style="width: 100%; height:300px"/>
                    </div>

                    <div class="col-md-5">
                        <h3>${product.productName}</h3>
                        <p>${product.productDescription}</p>
                        <p><strong>Manufacturer</strong>:${product.productManufuctor}</p>
                        <p>
                            <strong>Category</strong>${product.productCategory}
                        </p>

                        <p>
                            <strong>Condition</strong>:${product.productCondition}
                        </p>
                        <h3>${product.productPrice} USD</h3>

                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<%@include file="/WEB-INF/views/template/footer.jsp"%>
