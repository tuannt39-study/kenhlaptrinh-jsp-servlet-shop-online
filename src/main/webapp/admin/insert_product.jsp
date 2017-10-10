<%-- 
    Document   : insert_category
    Created on : 19-May-2016, 7:39:12 PM
    Author     : TUNGDUONG
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Thêm sản phẩm</title>

        <c:set var="root" value="${pageContext.request.contextPath}"/>
        <link href="${root}/css/mos-style.css" rel='stylesheet' type='text/css' />
        <script src="<c:url value="/ckeditor/ckeditor.js" />"></script>

    </head>
    <body>

        <jsp:include page="header.jsp"></jsp:include>

            <div id="wrapper">

            <jsp:include page="menu.jsp"></jsp:include>

                <div id="rightContent">
                    <h3>Thông tin sản phẩm</h3>

                    <table width="95%">
                        <tr><td><b>Tên sản phẩm</b></td><td><input type="text" class="sedang"></td></tr>
                        <tr><td><b>Giá bán</b></td><td><input type="text" class="sedang"></td></tr>
                        <tr><td><b>Loại sản phẩm</b></td><td>
                                <select>
                                    <option selected>-- chọn loại sản phẩm --</option>
                                    <option value="">Quần áo Nam</option>
                                    <option>Quần áo Nữ</option>
                                </select>
                            </td></tr>
                        <tr><td><b>Mô tả sản phẩm</b></td>
                            <td>
                                <textarea class="form-textarea" id="noiDung"></textarea>
                                <script type="text/javascript" language="javascript">
                                   CKEDITOR.replace('noiDung', {width: '500px',height: '300px'});
                                </script>
                            </td>
                        </tr>
                        <tr><td><b>Hình ảnh</b></td><td><input type="file"></td></tr>
                        <tr><td></td><td>
                                <input type="button" class="button" value="Button">
                                <input type="submit" class="button" value="Submit">
                                <input type="reset" class="button" value="Reset">
                            </td></tr>
                    </table>
                </div>
                <div class="clear"></div>

            <jsp:include page="footer.jsp"></jsp:include>

        </div>


    </body>
</html>
