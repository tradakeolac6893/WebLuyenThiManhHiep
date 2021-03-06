﻿<%@ Page Title="" Language="C#" ClientIDMode="Static" MasterPageFile="~/Admin/MasterPage/LayOutAdmin.Master" AutoEventWireup="true" CodeBehind="EditUser.aspx.cs" Inherits="LuyenThiHiep.Admin.EditUser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="grid_3 grid_5">
        <h3>Chỉnh sửa thông tin của người dùng</h3>
        <hr />

        <div class="bs-example4" data-example-id="simple-responsive-table">
            <div class="tab-pane active" id="horizontal-form">
                <div class="form-group">
                    <div class="row">
                        <label class="col-sm-1 control-label">Họ và tên:</label>
                        <div class="col-sm-5">
                            <input type="text" runat="server" class="form-control1" id="txtName" placeholder="Họ và tên" />
                        </div>
                        <label for="focusedinput" class="col-sm-1 control-label">Phone:</label>
                        <div class="col-sm-5">
                            <input type="text" runat="server" class="form-control1" id="txtPhone" placeholder="Số điện thoại" />
                        </div>
                    </div>

                    <div class="row">
                        <label for="focusedinput" class="col-sm-1 control-label">Trường:</label>
                        <div class="col-sm-5">
                            <input type="text" runat="server"  class="form-control1" id="txtSchool" placeholder="Xin hãy nhập tên trường vào đây" />
                        </div>
                        <label for="focusedinput" class="col-sm-1 control-label">Lớp:</label>
                        <div class="col-sm-5">
                            <input type="text" runat="server"  class="form-control1" id="txtClassName" placeholder="Xin hãy nhập tên lớp vào đây" />
                        </div>
                    </div>
                    <div class="row">
                        <label for="focusedinput" class="col-sm-1 control-label">Giới Tính:</label>
                        <div class="col-sm-5">
                            <label class="radio-inline">
                                <input type="radio" name="optradio" id="rboNam" runat="server" />Nam
                            </label>
                            <label class="radio-inline">
                                <input type="radio" name="optradio" id="rboNu"  runat="server" />Nữ
                            </label>
                        </div>


                        <label for="focusedinput" class="col-sm-1 control-label">Email:</label>
                        <div class="col-sm-5">
                            <input type="text" runat="server"  class="form-control1" id="txtEmail" placeholder="Xin hãy nhập Email vào đây" />
                        </div>
                    </div>
                    <div class="row">
                        <label for="focusedinput" class="col-sm-1 control-label">Ngày sinh:</label>
                        <div class="col-sm-5">
                            <div class='input-group date' id='datetimepicker5'>
                                <input type='text' class="form-control" />
                                <span class="input-group-addon">
                                    <span class="glyphicon glyphicon-calendar"></span>
                                </span>
                            </div>
                        </div>
                        <label for="focusedinput" class="col-sm-1 control-label"></label>
                        <div class="col-sm-5">
                            <div class="checkbox-inline1">
                                <label>
                                    <input type="checkbox" checked="checked" id="cbkActive" runat="server"/>
                                    Kích Hoạt Tài Khoản</label>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <label for="focusedinput" class="col-sm-1 control-label">Avata:</label>
                        <div class="col-sm-5">
                            <img src="/Content/AvataUser/User.png" style="width: 100px; height: 100px; padding-bottom: 10px;" id="avataEdit" runat="server" />
                            <asp:FileUpload ID="fleUpload" runat="server" />
                        </div>
                        <label for="focusedinput" class="col-sm-1 control-label">Quyền:</label>
                        <div class="col-sm-5">
                            <div class="form-group">
                                <select class="form-control" runat="server" id="selectRole">
                                    <option value="ADMIN">Admin</option>
                                    <option  value="USER">User</option>
                                </select>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <label class="col-sm-1 control-label">Tài khoản:</label>
                        <div class="col-sm-2">
                            <input type="text" runat="server" disabled="disabled" class="form-control1" id="txtUsername" placeholder="UserName" />
                        </div>
                        <label for="focusedinput" class="col-sm-1 control-label">Mật Khẩu:</label>
                        <div class="col-sm-3">
                            <input type="text" runat="server" class="form-control1" id="txtPass" placeholder="Xin hãy nhập mật khẩu" />
                        </div>
                        <label for="focusedinput" class="col-sm-2 control-label">Nhập lại Mật Khẩu:</label>
                        <div class="col-sm-3">
                            <input type="text" runat="server" class="form-control1" id="Text1" placeholder="Xin hãy nhập mật khẩu" />
                        </div>
                    </div>

                </div>
                <asp:Button ID="btnEdit" OnClick="btnEditClick" CssClass="btn btn-primary" runat="server" Text="Thay Đổi Thông Tin" />
            </div>
            <!-- /.table-responsive -->
        </div>
    </div>
    <script type="text/javascript">
        //$('#fleUpload').validate({
        //    rules: { inputimage: { required: true, accept: "png|jpe?g|gif", filesize: 1048576 } },
        //    messages: { inputimage: "File must be JPG, GIF or PNG, less than 1MB" }
           
        //});
        //alert(inputimage);
        $('#fleUpload').bind('change', function () {

            if (this.files[0].size > 200000) {

                alert("Hãy chọn ảnh dưới 2M");
            }
           

        });
    </script>

    <style>
        .row {
            margin-bottom: 20px;
        }

            .row label {
                padding-top: 10px !important;
            }
    </style>
</asp:Content>
