<%@ Page Title="" Language="C#" ClientIDMode="Static" MasterPageFile="~/Admin/MasterPage/LayOutAdmin.Master" AutoEventWireup="true" CodeBehind="EditUser.aspx.cs" Inherits="LuyenThiHiep.Admin.EditUser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="grid_3 grid_5">  s
        <h3>Chỉnh sửa thông tin của người dùng</h3>
        <hr />
        <h4 class="blank1">Thông tin cá nhân</h4>
        <div class="tab-content">
            <div class="tab-pane active" id="horizontal-form">
                <asp:Repeater ID="Repeater1" runat="server">
                    <HeaderTemplate>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <div class="form-group">
                            <label for="focusedinput" class="col-sm-2 control-label">Họ và Tên</label>
                            <div class="col-sm-6">
                                <input type="text" runat="server" class="form-control1" id="txtName" placeholder="Tên Người Dùng" value='<%#Eval("Name") %>' />
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="focusedinput" class="col-sm-2 control-label">Số điện thoại</label>
                            <div class="col-sm-6">
                                <input type="text" runat="server" class="form-control1" id="txtPhone" placeholder="Tên Người Dùng" value='<%#Eval("Phone") %>' />
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="focusedinput" class="col-sm-2 control-label">Giới tính</label>
                            <div class="col-sm-6">
                                <input type="text" runat="server" class="form-control1" id="Text11" placeholder="Tên Người Dùng" value='<%#Eval("Name") %>' />
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="focusedinput" class="col-sm-2 control-label">Địa chỉ</label>
                            <div class="col-sm-6">
                                <input type="text" runat="server" class="form-control1" id="txtAddress1" placeholder="Tên Người Dùng" value='<%#Eval("Name") %>' />
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="focusedinput" class="col-sm-2 control-label">Trường:</label>
                            <div class="col-sm-6">
                                <input type="text" runat="server" class="form-control1" id="txtSchool" placeholder="Tên Người Dùng" value='<%#Eval("School") %>' />
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="focusedinput" class="col-sm-2 control-label">Lớp:</label>
                            <div class="col-sm-6">
                                <input type="text" runat="server" class="form-control1" id="txtClass" placeholder="Tên Người Dùng" value='<%#Eval("Class") %>' />
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>

            </div>
        </div>
        <div class="container">
            <div class="row">
                <div class='col-sm-6'>
                    <div class="form-group">
                        <div class='input-group date' id='datetimepicker1'>
                            <input type='text' class="form-control" />
                            <span class="input-group-addon">
                                <span class="glyphicon glyphicon-calendar"></span>
                            </span>
                        </div>
                    </div>
                </div>
                <script type="text/javascript">
                    $(function () {
                        $('#datetimepicker1').datetimepicker();
                    });
                </script>
            </div>
        </div>

        <div class="bs-example4" data-example-id="simple-responsive-table">
            <div class="table-responsive">
                <asp:Repeater ID="rptDetailUser" runat="server">
                    <HeaderTemplate>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <div class="tab-pane active" id="horizontal-form">
                            <div class="form-group">
                                <label class="col-sm-2 control-label">Họ và tên:</label>
                                <div class="col-sm-4">
                                    <input type="text" runat="server" value='<%#Eval("Name") %>' class="form-control1" id="txtName" placeholder="Default Input" />
                                </div>
                                <label for="focusedinput" class="col-sm-2 control-label">Số điện thoại:</label>
                                <div class="col-sm-4">
                                    <input type="text" runat="server" value='<%#Eval("Phone") %>' class="form-control1" id="txtPhone" placeholder="Default Input" />
                                </div>

                                <label for="focusedinput" class="col-sm-2 control-label">Trường:</label>
                                <div class="col-sm-4">
                                    <input type="text" runat="server" value='<%#Eval("School") %>' class="form-control1" id="txtSchool" placeholder="Default Input" />
                                </div>
                                <label for="focusedinput" class="col-sm-2 control-label">Lớp:</label>
                                <div class="col-sm-4">
                                    <input type="text" runat="server"   value='<%#Eval("Class") %>' class="form-control1" id="txtClassName" placeholder="Default Input" />
                                </div>

                                <label for="focusedinput" class="col-sm-2 control-label">Giới Tính:</label>
                                <div class="col-sm-4">
                                    <label class="radio-inline">
                                        <input type="radio" name="optradio" checked='<%# Convert.ToBoolean(Eval("Gender")) ==true ? true  : false %>' id="rboNam" runat="server"/>Nam
                                    </label>
                                    <label class="radio-inline">
                                        <input type="radio" name="optradio" id="rboNu" checked='<%# Convert.ToBoolean(Eval("Gender")) ==false ? true  : false %>' runat="server"/>Nữ
                                    </label>
                                </div>


                                <label for="focusedinput" class="col-sm-2 control-label">Email:</label>
                                <div class="col-sm-4">
                                    <input type="text" runat="server" value='<%#Eval("Email") %>' class="form-control1" id="txtEmail" placeholder="Default Input" />
                                </div>
                                <label for="focusedinput" class="col-sm-2 control-label">Ngày sinh:</label>
                                <div class="col-sm-3">
                                    <div class='input-group date' id='datetimepicker5'>
                                        <input type='text' class="form-control" />
                                        <span class="input-group-addon">
                                            <span class="glyphicon glyphicon-calendar"></span>
                                        </span>
                                    </div>
                                    <input type="text" runat="server" value='<%#Eval("Birthday") %>' class="form-control1" id="txtBirthday" placeholder="Default Input" />
                                    <span class="glyphicon glyphicon-calendar"></span>
                                </div>


                                <div class="col-sm-1">
                                    <span class="input-group-addon">
                                        <span class="glyphicon glyphicon-calendar"></span>
                                    </span>
                                </div>
                            </div>
                            <tr>
                                <td style="width: 120px">Ảnh đại diện</td>
                                <td>Họ và tên:</td>
                                <td>
                                    <%#Eval("Name") %>
                                </td>
                                <td>Giới tính</td>
                                <td><%#Eval("Gender") %></td>
                                <td>Phone</td>
                                <td><%#Eval("Phone") %></td>
                            </tr>
                            <tr>
                                <td rowspan="2">
                                    <img src='<%# Eval("Avata")!=DBNull.Value  ? "/Content/AvataUser/User.png" : Eval("Avata") %>' style="width: 70px; height: 70px; text-align: center" />
                                </td>
                                <td>Trường:</td>
                                <td><%#Eval("School") %></td>
                                <td>Lớp</td>
                                <td><%#Eval("Class") %></td>
                                <td>Email</td>
                                <td><%#Eval("Email") %></td>
                            </tr>
                            <tr>
                                <td>Điện thoại</td>
                                <td><%#Eval("Phone") %></td>
                                <td>Ngày sinh</td>
                                <td><%#Eval("Birthday") %></td>
                                <td>Trạng thái</td>
                                <td><%#Eval("Active") %></td>
                            </tr>
                            <tr>
                                <td>Quyền:</td>
                                <td><%#Eval("Role") %></td>
                                <td>Tài khoản:</td>
                                <td><%#Eval("Username") %></td>
                                <td>Địa chỉ:</td>
                                <td colspan="2"><%#Eval("Address") %></td>
                            </tr>
                            <tr>
                                <td colspan="7">
                                    <a href="/EditUser.aspx?Id=<%#Eval("ID") %>">
                                        <button type="button" class="btn btn-primary">Chỉnh sửa thông tin</button></a>
                                </td>
                            </tr>
                    </ItemTemplate>
                    <FooterTemplate>
                        </tbody>

                </table>
                    </FooterTemplate>
                </asp:Repeater>

            </div>
            <!-- /.table-responsive -->
        </div>
    </div>
    <script type="text/javascript">
        $(function () {
            $('#datetimepicker5').datetimepicker({
                defaultDate: "11/1/2013",
                disabledDates: [
                    moment("12/25/2013"),
                    new Date(2013, 11 - 1, 21),
                    "11/22/2013 00:53"
                ]
            });
        });
        $(function () {
            $('#txtBirthday').datetimepicker({
                format: 'dd/MM/yyyy'
            });
        });
    </script>
</asp:Content>
