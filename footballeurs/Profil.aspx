<%@ Page Title="" Language="C#" MasterPageFile="Footballeur.Master" AutoEventWireup="true" CodeBehind="Profil.aspx.cs" Inherits="OdinESport.footballeurs.Profil" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>ODIN ESPORT | Profil</title>
    <style>

        .addBlock {
    width: 150px;
    height: 150px;
    margin: 10px;
    border: 1px dashed #ccc;
    display: flex;
    align-items: center;
    justify-content: center;
    cursor: pointer;
  }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
 <div class="conatiner-fluid content-inner pb-0">
        <div class="row">

            <div class="col-lg-4">
                <div class="card">

                <asp:Literal runat="server" ID="picturesHtmlLiteral"></asp:Literal>   
                <img src="add2.jpg" id="uploadImage" alt="Upload Image" />
                    <form id="uploadForm" enctype="multipart/form-data">
                    <input type="file" name="file" id="fileInput" accept="image/*" style="display: none;" />
                    </form>


                </div>
                <div class="card">  
                <asp:Literal runat="server" ID="videosHtmlLiteral"></asp:Literal>
                </div>
            </div>

            <div class="col-lg-8">
                <div class="profile-content tab-content">

                    <div id="profile-profile" class="tab-pane fade active show">
                        <div class="card">
                            <div class="card-header">
                                <div class="header-title">
                                    <h4 class="card-title">Profile</h4>
                                </div>
                            </div>
                            <div class="card-body">
                                <div class="text-center">
                                    <div class="user-profile">
                                        <img runat="server" ID="imgProfile" alt="profile-img" class="rounded-pill avatar-130 img-fluid" />

                                    </div>
                                    <div class="mt-3">
                                       
                                        <h3 class="d-inline-block"><asp:Label ID="lblFullName" runat="server"></asp:Label></h3>

                                        <p class="d-inline-block pl-3"></p>
                                 <asp:TextBox ID="descriptionTextBox" runat="server" TextMode="MultiLine" CssClass="form-control" placeholder="Enter a small description about yourself"></asp:TextBox>
                                     </div>
                                </div>
                            </div>
                        </div>
                        <div class="card">
                            <div class="card-header">
                                <div class="header-title">
                                    <h4 class="card-title">Account Information</h4>
                                </div>
                            </div>
                            <div class="card-body">

                                <fieldset>
                                    <div hidden="hidden">
                                        <div class="form-card text-start">

                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="form-label">Email: *</label>
                                                        <input type="email" class="form-control" id="email" name="email" placeholder="Email Id" />
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="form-label">Username: *</label>
                                                        <input type="text" class="form-control" name="uname" placeholder="UserName" />
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="form-label">Last Password: *</label>
                                                        <input type="password" class="form-control" name="pwd" placeholder="Password" />
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="form-label">Password: *</label><a href="Feed.aspx">Feed.aspx</a>
                                                        <input type="password" class="form-control" name="pwd" placeholder="Password" />
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="form-label">Confirm Password: *</label>
                                                        <input type="password" class="form-control" name="cpwd" placeholder="Confirm Password" />
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <button type="button" name="next" class="btn btn-primary next action-button float-end" value="Submit">Save</button>
                                    </div>
                                    <div>
                                        <div class="form-card text-start">

                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="form-label">Email: </label>
                                                        <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control"  ></asp:TextBox>                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="form-label">Username: </label>
                                                        <asp:TextBox ID="txtUsername" runat="server" CssClass="form-control" ></asp:TextBox>
                                                       
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="form-label">Password: </label>
                                                        <label class="form-label">***********</label>
                                                        <%--<input type="password" class="form-control" name="pwd" placeholder="Password" />--%>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </fieldset>
                            </div>
                        </div>
                        <div class="card">
                            <div class="card-header">
                                <div class="header-title">
                                    <h4 class="card-title">Personal Information</h4>
                                </div>
                            </div>
                            <div class="card-body">
                                <fieldset>
                                    <div hidden="hidden">
                                        <div class="form-card text-start">

                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                         <label class="form-label">First Name: *</label>
                                                         <input type="text" class="form-control" name="fname" placeholder="First Name" />                                                         
                                                    </div>


                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="form-label">Last Name: *</label>                                                       
                                                        <input type="text" class="form-control" name="fname" placeholder="Last Name" /> 
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="form-label">Contact No.: *</label>                                                        
                                                        <asp:TextBox ID="phno" runat="server" CssClass="form-control" placeholder=" Contact No"></asp:TextBox>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="form-label">Date of Birth: *</label>
                                                        <input type="date" class="form-control" name="daob" placeholder="Contact No." />
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="form-label">Pays: *</label>
                                                        <input type="text" class="form-control" name="phno_2" placeholder="Alternate Contact No." />
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <button type="button" name="next" class="btn btn-primary next action-button float-end" value="Submit">Save</button>
                                    </div>
                                    <div>
                                        <div class="form-card text-start">

                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="form-label">First Name: </label>
                                                       <asp:TextBox ID="txtFirstName" runat="server" CssClass="form-control" ></asp:TextBox>

                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="form-label">Last Name: </label>
                                                        <asp:TextBox ID="txtLastName" runat="server" CssClass="form-control" ></asp:TextBox>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="form-label">Contact No.: </label>
                                                        <asp:TextBox ID="txtphNo" runat="server" CssClass="form-control" ></asp:TextBox>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="form-label">Date of Birth: </label>
                                                       <asp:TextBox ID="txtDOB" runat="server" CssClass="form-control" ></asp:TextBox>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="form-label">Pays: </label>
                                                        <asp:TextBox ID="txtCountry" runat="server" CssClass="form-control" ></asp:TextBox>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                    </div>
                                </fieldset>
                            </div>
                        </div>
                        <div class="card">
                            <div class="card-header">
                                <div class="header-title">
                                    <h4 class="card-title">Football Information</h4>
                                </div>
                            </div>
                            <div class="card-body">
                                <fieldset>
                                    <div hidden="hidden">
                                        <div class="form-card text-start">

                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="form-label">Height: *</label>
                                                        <input type="text" class="form-control" name="fname"  />
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="form-label">Weight: *</label>
                                                        <input type="text" class="form-control" name="lname"  />
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="form-label">Foot: *</label>
                                                        <div class="form-check d-block">
                                                            <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault1">
                                                            <label class="form-check-label" for="flexRadioDefault1">
                                                                Left
                               
                                                            </label>
                                                        </div>
                                                        <div class="form-check d-block">
                                                            <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault2" checked>
                                                            <label class="form-check-label" for="flexRadioDefault2">
                                                                Right                               
                                                            </label>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="form-label">Club: *</label>
                                                        <textarea class="form-control" id="exampleFormControlTextarea1" rows="5"></textarea>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>


                                        <button type="button" name="next" class="btn btn-primary next action-button float-end" value="Submit">Save</button>
                                    </div>
                                    <div>
                                        <div class="form-card text-start">

                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                    <label class="form-label">Position: *</label>
                                                    <asp:DropDownList ID="position" class="form-control" runat="server"></asp:DropDownList>
                                                    </div>
                                                    </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="form-label">Height: </label>
                                                        <asp:TextBox ID="txtHeight" runat="server" CssClass="form-control" ></asp:TextBox>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="form-label">Weight: </label>
                                                        <asp:TextBox ID="txtWeight" runat="server" CssClass="form-control" ></asp:TextBox>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="form-label">Foot: </label>
                                                        <label class="form-label">both</label>
                                                    </div>
                                                </div>
                                                <div class="col-md-2">
                                                    <div class="form-group">
                                                       
                                                        <label class="form-label">Club: </label>
                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                       <asp:TextBox ID="txtClub" runat="server" CssClass="form-control" ></asp:TextBox>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    
                                </fieldset>
                            </div>
                        </div>
                        <div class="card">
                            <div class="card-header">
                                <div class="header-title">
                                    <h4 class="card-title">Photo</h4>
                                </div>
                            </div>
                            <div class="card-body">
                                <fieldset>
                                    <div class="form-card text-start">

                                        <div class="form-group">
                                            <label class="form-label">Upload Your Photo:</label>
                                             <asp:FileUpload class="form-control"  ID="fileUpload" runat="server" />
<%--                                            <input type="file" class="form-control" name="pic" accept="image/*">--%>
                                        </div>
                                        
                                    </div>
                        <asp:Button ID="Save" runat="server" Text="Save" class="btn btn-primary next action-button float-end" value="submit" OnClick="UpdateButton_Click" />

<%--                                    <button type="button" name="next" class="btn btn-primary next action-button float-end" value="Submit">Save</button>--%>
                                </fieldset>

                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
        <div class="offcanvas offcanvas-bottom share-offcanvas" tabindex="-1" id="share-btn" aria-labelledby="shareBottomLabel">
            <div class="offcanvas-header">
                <h5 class="offcanvas-title" id="shareBottomLabel">Share</h5>
                <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"></button>
            </div>
            <div class="offcanvas-body small">
                <div class="d-flex flex-wrap align-items-center">
                    <div class="text-center me-3 mb-3">
                        <img src="../assets/images/brands/08.png" class="img-fluid rounded mb-2" alt="">
                        <h6>Facebook</h6>
                    </div>
                    <div class="text-center me-3 mb-3">
                        <img src="../assets/images/brands/09.png" class="img-fluid rounded mb-2" alt="">
                        <h6>Twitter</h6>
                    </div>
                    <div class="text-center me-3 mb-3">
                        <img src="../assets/images/brands/10.png" class="img-fluid rounded mb-2" alt="">
                        <h6>Instagram</h6>
                    </div>
                    <div class="text-center me-3 mb-3">
                        <img src="../assets/images/brands/11.png" class="img-fluid rounded mb-2" alt="">
                        <h6>Google Plus</h6>
                    </div>
                    <div class="text-center me-3 mb-3">
                        <img src="../assets/images/brands/13.png" class="img-fluid rounded mb-2" alt="">
                        <h6>In</h6>
                    </div>
                    <div class="text-center me-3 mb-3">
                        <img src="../assets/images/brands/12.png" class="img-fluid rounded mb-2" alt="">
                        <h6>YouTube</h6>
                    </div>
                </div>
            </div>
        </div>
    </div>
      <script>
document.getElementById("uploadImage").addEventListener("click", function () {
  document.getElementById("fileInput").click();
});

document.getElementById("fileInput").addEventListener("change", function () {
  // Submit the form when the user selects a file (image)
 // document.getElementById("uploadForm").submit();
});


  
</script>
</asp:Content>
