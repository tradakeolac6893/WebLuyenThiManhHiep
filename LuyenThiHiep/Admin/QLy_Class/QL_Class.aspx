<%@ Page Title="" Language="C#" ViewStateMode="Inherit" ClientIDMode="Static" MasterPageFile="~/Admin/MasterPage/LayOutAdmin.Master" AutoEventWireup="true" CodeBehind="QL_Class.aspx.cs" Inherits="LuyenThiHiep.Admin.QLy_Class.QL_Class" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="grid_3 grid_5">
        <h3>Quản Lý Lớp</h3>
        <div class="but_list">
            <div class="bs-example bs-example-tabs" role="tabpanel" data-example-id="togglable-tabs">
                <ul id="myTab" class="nav nav-tabs" role="tablist">
                    <li role="presentation" class="active"><a href="/Admin/QLy_Class/QL_Class.aspx">Danh sách tất cả các lớp</a></li>
                    <li role="presentation"><a href="/Admin/QLy_Class/EditQLClass.aspx" role="tab" >Chỉnh Sửa Lớp</a></li>
                    <li role="presentation"><a href="/Admin/QLy_Class/CreateClass.aspx" role="tab">Thêm mới Lớp</a></li>
                </ul>
                <div id="myTabContent" class="tab-content">
                    <div role="tabpanel" class="tab-pane fade in active" id="home" aria-labelledby="home-tab">

                        <div class="panel panel-warning" data-widget="{&quot;draggable&quot;: &quot;false&quot;}" data-widget-static="">
                            <div class="panel-heading">
                                <div class="panel-ctrls" data-actions-container="" data-action-collapse="{&quot;target&quot;: &quot;.panel-body&quot;}"><span class="button-icon has-bg"><i class="ti ti-angle-down"></i></span></div>
                            </div>
                            <div class="panel-body no-padding" style="display: block;">
                                <asp:Repeater ID="repGetAllClass" runat="server">
                                    <HeaderTemplate>
                                        <table class="table table-bordered">
                                            <thead>
                                                <tr>
                                                    <th style="font-family: Arial;text-align:center">Mã Lớp</th>
                                                    <th style="font-family: Arial;text-align:center">Tên Lớp</th>
                                                    <th style="font-family: Arial;text-align:center">Ảnh đại diện</th>
                                                    <th style="font-family: Arial;text-align:center">Trạng thái</th>
                                                    <th style="font-family: Arial;text-align:center">Xóa</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                    </HeaderTemplate>
                                    <ItemTemplate>
                                        <tr>
                                            <td><%#Eval("Id") %></td>
                                            <td><%#Eval("Name") %></td>
                                            <td style="text-align:center"><img src='<%# Eval("Avata") ==DBNull.Value ? Eval("Avata") :"/Content/Image_Class/lophoc4.jpg" %>' style="width:80px;height:40px"/></td>
                                            <td ><%# (bool)Eval("Status") == true ?  "Hiển thị" :  "Khồng Hiển thị" %></td>
                                            <td style="text-align: center"><span class="glyphicon glyphicon-trash" data-toggle="modal" data-target="#confirmDelete" style="cursor:pointer"></span></td>
                                        </tr>
                                    </ItemTemplate>
                                    <FooterTemplate>
                                        </tbody>
                                      </table>
                                    </FooterTemplate>
                                </asp:Repeater>
                            </div>

                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Modal hỏi trước khi xóa -->
    <div class="modal fade" id="confirmDelete" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h4 class="modal-title" id="myModalLabel">Bạn có chắc muốn xóa chứ ??</h4>
                </div>
                <div class="modal-footer" style="border: none">
                    <button type="button" class="btn btn-success pull-left" style="width: 45%" id="yesDelete">Đồng ý</button>
                    <button type="button" class="btn btn-danger  pull-right" style="width: 45%" data-dismiss="modal">No</button>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
