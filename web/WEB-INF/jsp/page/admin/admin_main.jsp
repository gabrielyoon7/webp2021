<%--
  Created by IntelliJ IDEA.
  User: gabri
  Date: 2021-07-07
  Time: 오전 8:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String getAllMajor = (String)request.getAttribute("getAllMajor");
    String getSchedule = (String)request.getAttribute("getSchedule");
%>
<div>
    <div class="album py-5 bg-light">
        <div class="container">
<%--            전공 관리--%>
            <%@include file="/WEB-INF/jsp/page/admin/admin_main/admin_major.jsp"%>
            <hr>
<%--                일정 관리 --%>
            <%@include file="/WEB-INF/jsp/page/admin/admin_main/admin_schedule.jsp"%>
            <hr>
<%--                대문 관리--%>
            <%@include file="/WEB-INF/jsp/page/admin/admin_main/admin_slider.jsp"%>
            <hr>
        </div>
    </div>
</div>

    <!-- Modal -->
    <div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header" id="myModalHeader">
<%--                    <h5 class="modal-title" id="staticBackdropLabel">수정하기</h5>--%>
<%--                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>--%>
                </div>
                <div class="modal-body" id = "myModalBody"></div>
                <div class="modal-footer" id="myModalFooter">
<%--                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">취소</button>--%>
<%--                        <button type="button" class="btn btn-primary">추가하기</button>--%>
                </div>
            </div>
        </div>
    </div>

</div>

<script>
    $(document).ready(function(){
        callSetupTableView();
    })
    var header = $('#myModalHeader');
    var body = $('#myModalBody');
    var footer = $('#myModalFooter');

    function callSetupTableView(){
        $('#table1').bootstrapTable('load',tableData1());
        // $('#table1').bootstrapTable('append',data());
        $('#table1').bootstrapTable('refresh');

        $('#table2').bootstrapTable('load',tableData2());
        // $('#table1').bootstrapTable('append',data());
        $('#table2').bootstrapTable('refresh');

    }
</script>

