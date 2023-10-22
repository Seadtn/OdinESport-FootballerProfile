<%@ Page Title="" Language="C#" MasterPageFile="~/Administration/Admin.Master" AutoEventWireup="true" CodeBehind="News.aspx.cs" Inherits="OdinESport.Administration.News" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>ODIN ESPORT | News</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="conatiner-fluid content-inner pb-0">
        <div class="row">
            <div class="card">
                <div class="card-header d-flex align-items-center justify-content-between pb-4">
                    <div class="card-body">
                        <div class="form-card text-start">
                            <asp:Panel runat="server" DefaultButton="submit">
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <label class="form-label">Title: *</label>
                                            <asp:TextBox ID="NewsTitle" runat="server" CssClass="form-control" required></asp:TextBox>
                                        </div>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <label class="form-label">New: *</label>
                                            <asp:TextBox ID="NewsValue" runat="server" TextMode="MultiLine" Rows="5" CssClass="form-control" required></asp:TextBox>
                                        </div>
                                    </div>
                                </div>
                                   <div class="col-md-12">
                                        <div class="form-group">
                                                            <label class="form-label">IsURL: *</label>
                                                            <asp:RadioButtonList ID="isurl" runat="server">
                                                                <asp:ListItem Text="True" Value="True" Inline="True" />
                                                                <asp:ListItem Text="False" Value="False" Inline="True" />
                                                            </asp:RadioButtonList>
                                                        </div>
                                                    </div>
                            </asp:Panel>

                            <asp:Button ID="submit" runat="server" Text="Save" CssClass="btn btn-primary next action-button float-end" OnClick="onSubmit" />
                        </div>
                    </div>
                </div>
            </div>
            <div class="card">
                <asp:Literal runat="server" ID="NewsHtmlLiteral"></asp:Literal>

            </div>

        </div>
    </div>
</asp:Content>





