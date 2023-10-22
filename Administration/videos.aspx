<%@ Page Title="" Language="C#" MasterPageFile="~/Administration/Admin.Master" AutoEventWireup="true" CodeBehind="videos.aspx.cs" Inherits="OdinESport.Administration.videos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <title>ODIN ESPORT | Videos</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div class="conatiner-fluid content-inner pb-0">
        <div class="row">
            <div class="card">
                <div class="card-header d-flex align-items-center justify-content-between pb-4">
                    <div class="card-body">
                         <div class="row">
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <label class="form-label">Title: *</label>
                                            <asp:TextBox ID="VideoTitle" runat="server" CssClass="form-control" required></asp:TextBox>
                                        </div>
                                    </div>
                                </div>
                        <div class="form-card text-start">

                            <div class="row">
                                <div class="col-md-12">
                                   <div class="form-group">
                                            <label class="form-label">Upload Your Videos:</label>
                                              <asp:FileUpload placeholder="No video chosen" class="form-control" ID="fileUpload" runat="server" />
                                       </div>
                                </div>
                            </div>
                        </div>
                     <asp:Button ID="submit" runat="server" Text="Save" CssClass="btn btn-primary next action-button float-end" OnClick="onSubmit" />

                    </div>
                </div>
            </div>
    
                       <div class="card">
                        <asp:Literal runat="server" ID="videosHtmlLiteral"></asp:Literal>  
                       </div>
                       
                      
        </div>
    </div>
</asp:Content>
