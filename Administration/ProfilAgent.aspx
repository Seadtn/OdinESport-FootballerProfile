<%@ Page Title="" Language="C#" MasterPageFile="admin.Master" AutoEventWireup="true" CodeBehind="ProfilAgent.aspx.cs" Inherits="OdinESport.Administation.ProfilAgent" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>ODIN ESPORT | Profil</title>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 
    <div class="conatiner-fluid content-inner pb-0">
        <div class="row">
 
            <div class="col-lg-12">
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
                                        <p class="d-inline-block pl-3">- Football agent</p>
                                        <p class="mb-0">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s</p>
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
                                                        <input type="email" class="form-control" name="email"  placeholder="Email Id" />
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
                                                        <label class="form-label">Password: *</label>
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
                                                        <label class="form-label" runat="server" ID="lblEmail"></label>
                                                        <%--<input type="email" class="form-control" name="email" placeholder="Email Id" />--%>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="form-label">Username: </label>
                                                        <label class="form-label" runat="server" ID="UserName"></label>
                                                        <%--<input type="text" class="form-control" name="uname" placeholder="UserName" />--%>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="form-label">Password: </label>
                                                        <label class="form-label" runat="server" ID="Psw"></label>
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
                                                        <input type="text" class="form-control" name="lname" placeholder="Last Name" />
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="form-label">Contact No.: *</label>
                                                        <input type="text" class="form-control" name="phno" placeholder="Contact No." />
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
                                                        <label class="form-label" runat="server" ID="Fname"></label>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="form-label">Last Name: </label>
                                                        <label class="form-label" runat="server" ID="Lname"></label>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="form-label">Contact No.: </label>
                                                        <label class="form-label" runat="server" ID="ContactVal"></label>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="form-label">Date of Birth: </label>
                                                        <label class="form-label" runat="server" ID="DateOfBirthVal"></label>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="form-label">Pays: </label>
                                                        <label class="form-label" runat="server" ID="CountryVal"> </label>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                    </div>
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
</asp:Content>
