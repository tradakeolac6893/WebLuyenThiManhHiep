<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage/LayOutAdmin.Master" AutoEventWireup="true" CodeBehind="DetailUser.aspx.cs" Inherits="LuyenThiHiep.Admin.DetailUser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="grid_3 grid_5">
        <h3>Thông tin chi tiết của người dùng</h3>
        <div class="bs-example4" data-example-id="simple-responsive-table">
            <div class="table-responsive">
                <asp:Repeater ID="rptDetailUser" runat="server">
                    <HeaderTemplate>
                        <table class="table table-bordered">
                            <tbody>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <tr>
                            <td style="width:120px">Ảnh đại diện</td>
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
                                <img src='<%# Eval("Avata")!=DBNull.Value  ? "/Content/AvataUser/User.png" : Eval("Avata") %>' style="width: 70px; height: 70px;text-align:center" />
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
                            <td >Địa chỉ:</td>
                            <td colspan="2"><%#Eval("Address") %></td>
                        </tr>
                        <tr>
                            <td colspan="7">
                                <a href="/Admin/EditUser.aspx?UserId=<%#Eval("ID") %>"><button type="button" class="btn btn-primary">Chỉnh sửa thông tin</button></a>
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
</asp:Content>
