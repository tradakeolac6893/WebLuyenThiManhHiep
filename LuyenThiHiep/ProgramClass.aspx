<%@ Page Title="" Language="C#" MasterPageFile="~/Master/LayOutSingle.Master" AutoEventWireup="true" CodeBehind="ProgramClass.aspx.cs" Inherits="LuyenThiHiep.ProgramClass" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="gallery">
        <div class="container">
            <div class="gallery-top heading">
                <h2>Danh Sách Lớp</h2>
                <p>Bạn vui lòng chọn lớp để xem chương trình giảng dậy phù hợp</p>
            </div>
            <section>
                <ul id="da-thumbs" class="da-thumbs">
                    <asp:Repeater ID="repGetAllClass" runat="server">
                        <HeaderTemplate>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <%--<li>
                                <a href='/Category.aspx?Class=<%# Eval("Id") %>' rel="title" class="b-link-stripe b-animate-go  thickbox">
                                    <img src='<%# Eval("Avata") != null? Eval("Avata") : "/Content/Image_Class/trungtam.png"%>' alt="" class="img-responsive" />
                                    <div>
                                        <h5>Education</h5>
                                        <span>non suscipit leo fringilla non suscipit leo fringilla molestie</span>
                                    </div>
                                </a>
                            </li>--%>
                            <li>
                        <a href="/Content/images/g1.jpg" rel="title" class="b-link-stripe b-animate-go  thickbox">
                            <img src="/Content/images/g1.jpg" alt="" class="img-responsive" />
                            <div>
                                <h5>Education</h5>
                                <span>non suscipit leo fringilla non suscipit leo fringilla molestie</span>
                            </div>
                        </a>
                                <a href="/Content/images/g1.jpg" rel="title" class="b-link-stripe b-animate-go  thickbox">
                            <img src='<%# Eval("Avata") != null? Eval("Avata") : "/Content/Image_Class/trungtam.png"%>' alt="" class="img-responsive" />
                            <div>
                                <h5>Education</h5>
                                <span>non suscipit leo fringilla non suscipit leo fringilla molestie</span>
                            </div>
                        </a>
                    </li>
                        </ItemTemplate>
                    </asp:Repeater>

                    <%--<li>
                        <a href="/Content/images/g1.jpg" rel="title" class="b-link-stripe b-animate-go  thickbox">
                            <img src="/Content/images/g1.jpg" alt="" class="img-responsive" />
                            <div>
                                <h5>Education</h5>
                                <span>non suscipit leo fringilla non suscipit leo fringilla molestie</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="/Content/images/g2.jpg" rel="title" class="b-link-stripe b-animate-go  thickbox">
                            <img src="/Content/images/g2.jpg" alt="" />
                            <div>
                                <h5>Education</h5>
                                <span>non suscipit leo fringilla non suscipit leo fringilla molestie</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="/Content/images/g3.jpg" rel="title" class="b-link-stripe b-animate-go  thickbox">
                            <img src="/Content/images/g3.jpg" alt="" />
                            <div>
                                <h5>Education</h5>
                                <span>non suscipit leo fringilla non suscipit leo fringilla molestie</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="/Content/images/g4.jpg" rel="title" class="b-link-stripe b-animate-go  thickbox">
                            <img src="/Content/images/g4.jpg" alt="" />
                            <div>
                                <h5>Education</h5>
                                <span>non suscipit leo fringilla non suscipit leo fringilla molestie</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="/Content/images/g5.jpg" rel="title" class="b-link-stripe b-animate-go  thickbox">
                            <img src="/Content/images/g5.jpg" alt="" />
                            <div>
                                <h5>Education</h5>
                                <span>non suscipit leo fringilla non suscipit leo fringilla molestie</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="images/g6.jpg" rel="title" class="b-link-stripe b-animate-go  thickbox">
                            <img src="/Content/images/g6.jpg" alt="" />
                            <div>
                                <h5>Education</h5>
                                <span>non suscipit leo fringilla non suscipit leo fringilla molestie</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="/Content/images/g7.jpg" rel="title" class="b-link-stripe b-animate-go  thickbox">
                            <img src="/Content/images/g7.jpg" alt="" />
                            <div>
                                <h5>Education</h5>
                                <span>non suscipit leo fringilla non suscipit leo fringilla molestie</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="/Content/images/g8.jpg" rel="title" class="b-link-stripe b-animate-go  thickbox">
                            <img src="/Content/images/g8.jpg" alt="" />
                            <div>
                                <h5>Education</h5>
                                <span>non suscipit leo fringilla non suscipit leo fringilla molestie</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="/Content/images/g9.jpg" rel="title" class="b-link-stripe b-animate-go  thickbox">
                            <img src="/Content/images/g9.jpg" alt="" />
                            <div>
                                <h5>Education</h5>
                                <span>non suscipit leo fringilla non suscipit leo fringilla molestie</span>
                            </div>
                        </a>
                    </li>--%>
                    <div class="clearfix"></div>
                </ul>
            </section>
        </div>
    </div>
</asp:Content>
