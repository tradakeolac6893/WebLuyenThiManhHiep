<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage/LayOutAdmin.Master" AutoEventWireup="true" CodeBehind="CreateClass.aspx.cs" Inherits="LuyenThiHiep.Admin.QLy_Class.CreateClass" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="grid_3 grid_5">
        <h3>Quản Lý Lớp</h3>
        <div class="but_list">
            <div class="bs-example bs-example-tabs" role="tabpanel" data-example-id="togglable-tabs">
                <ul id="myTab" class="nav nav-tabs" role="tablist">
                    <li role="presentation"><a href="/Admin/QLy_Class/QL_Class.aspx">Danh sách tất cả các lớp</a></li>
                    <li role="presentation"><a href="/Admin/QLy_Class/EditQLClass.aspx" role="tab">Chỉnh Sửa Lớp</a></li>
                    <li role="presentation" class="active"><a href="/Admin/QLy_Class/CreateClass.aspx" role="tab">Thêm mới Lớp</a></li>
                </ul>
                <div class="tab-content">
                    <div role="tabpanel" class="tab-pane fade in active" id="home" aria-labelledby="home-tab">
                        <div class="tab-pane active" id="horizontal-form">
                            <div class="form-group">
                                <div class="row">
                                    <label class="col-sm-1 control-label" style="padding-top: 10px">Tên Lớp:</label>
                                    <div class="col-sm-3">
                                        <input type="text" runat="server" class="form-control1" id="txtClassName" placeholder="Xin hãy nhập tên lớp vào đây" />
                                    </div>
                                    <div class="col-sm-3">
                                        <div class="checkbox-inline1">
                                            <label>
                                                <input type="checkbox" checked="checked" id="cbkActive" runat="server" />
                                                Hiển thị</label>
                                        </div>
                                    </div>
                                </div>

                                <div class="row" style="margin-top: 20px">
                                    <label class="col-sm-2 control-label" style="padding-top: 10px">Ảnh đại diện:</label>
                                    <div class="col-sm-3">
                                        <img src="/Content/Image_Class/lophoc4.jpg" style="width: 100px; height: 100px; padding-bottom: 10px;" id="avataEdit" runat="server" />
                                        <asp:FileUpload ID="fleUpload" runat="server" />
                                    </div>
                                    <div class="col-sm-2">
                                        <asp:Button ID="btnCreateClass" CssClass="btn btn-primary" runat="server" Text="Thêm mới lớp" OnClick="btnCreateClass_Click" />
                                    </div>
                                </div>
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
                    <h4 class="modal-title" id="myModalLabel">Bạn có chắc muốn đổi thông tin chứ ??</h4>
                </div>
                <div class="modal-footer" style="border: none">
                    <button type="button" class="btn btn-success pull-left" style="width: 45%" id="yesDelete">Đồng ý</button>
                    <button type="button" class="btn btn-danger  pull-right" style="width: 45%" data-dismiss="modal">No</button>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
