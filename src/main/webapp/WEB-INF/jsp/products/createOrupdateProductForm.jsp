<%@ page session="false" trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="petclinic" tagdir="/WEB-INF/tags" %>

<petclinic:layout pageName="Products">
    <jsp:body>
        <c:if test= "message != null">
            <div class = "message">
                <c:forEach items = "${message}" var = "message">
                    <div class = "message">
                        <c:out value = "${message}"/>
                    </div>
                </c:forEach>
            </div>
        </c:if>
        <form:form modelAttribute = "product" class = "form-horizontal">
            <petclinic:inputField lable = "ID" name = "id"/>
            <petclinic:inputField lable = "Name" name = "name"/>
            <petclinic:selectField name = "roductType" label = "Product type" names ="${productTypes}" sizes = "5"/>
            <button class="btn btn-default" type="submit">Add Product</button>
            <petclinic:inputField lable = "Price" name = "price"/>
        </form:form>
    </jsp:body>
</petclinic:layout>
