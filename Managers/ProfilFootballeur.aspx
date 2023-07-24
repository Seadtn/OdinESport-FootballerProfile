<%@ Page Title="" Language="C#" MasterPageFile="Manager.Master" AutoEventWireup="true" CodeBehind="ProfilFootballeur.aspx.cs" Inherits="OdinESport.Managers.ProfilFootballeur" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>ODIN ESPORT | Profil</title>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="conatiner-fluid content-inner pb-0">
        <div class="row">

            <div class="col-lg-4">
                <div class="card">
                    <div class="card-header d-flex align-items-center justify-content-between">
                        <div class="header-title">
                            <h4 class="card-title">My pictures</h4>
                        </div>
                        <span>8/8</span>
                    </div>
                    <div class="card-body">
                        <div class="d-grid gap-card grid-cols-2">
                            <a data-fslightbox="gallery" href="messi1.jpg">
                                <img src="messi1.jpg" class="img-fluid bg-soft-info rounded" alt="profile-image">
                            </a>
                            <a data-fslightbox="gallery" href="messi2.jpg">
                                <img src="messi2.jpg" class="img-fluid bg-soft-info rounded" alt="profile-image">
                            </a>
                            <a data-fslightbox="gallery" href="messi3.jpg">
                                <img src="messi3.jpg" class="img-fluid bg-soft-info rounded" alt="profile-image">
                            </a>
                            <a data-fslightbox="gallery" href="messi4.jpg">
                                <img src="messi4.jpg" class="img-fluid bg-soft-info rounded" alt="profile-image">
                            </a>
                            <a data-fslightbox="gallery" href="messi1.jpg">
                                <img src="messi1.jpg" class="img-fluid bg-soft-info rounded" alt="profile-image">
                            </a>
                            <a data-fslightbox="gallery" href="messi2.jpg">
                                <img src="messi2.jpg" class="img-fluid bg-soft-info rounded" alt="profile-image">
                            </a>
                            <a data-fslightbox="gallery" href="messi3.jpg">
                                <img src="messi3.jpg" class="img-fluid bg-soft-info rounded" alt="profile-image">
                            </a>
                            <a data-fslightbox="gallery" href="messi4.jpg">
                                <img src="messi4.jpg" class="img-fluid bg-soft-info rounded" alt="profile-image">
                            </a>
                        </div>
                    </div>
                </div>
                <div class="card">
                    <div class="card-header d-flex align-items-center justify-content-between">
                        <div class="header-title">
                            <h4 class="card-title">My videos</h4>
                        </div>
                        <span>4/4</span>
                    </div>
                    <div class="card-body">
                        <div class="d-grid gap-card grid-cols-2">
                            <a data-fslightbox="gallery" href="messi1.jpg">
                                <img src="messi1.jpg" class="img-fluid bg-soft-info rounded" alt="profile-image">
                            </a>
                            <a data-fslightbox="gallery" href="messi2.jpg">
                                <img src="messi2.jpg" class="img-fluid bg-soft-info rounded" alt="profile-image">
                            </a>
                            <a data-fslightbox="gallery" href="messi3.jpg">
                                <img src="messi3.jpg" class="img-fluid bg-soft-info rounded" alt="profile-image">
                            </a>
                            <a data-fslightbox="gallery" href="messi4.jpg">
                                <img src="messi4.jpg" class="img-fluid bg-soft-info rounded" alt="profile-image">
                            </a>
                        </div>
                    </div>
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
                                        <img src="../assets/images/avatars/LionelMessi.jpg" alt="profile-img" class="rounded-pill avatar-130 img-fluid">
                                    </div>
                                    <div class="mt-3">
                                        
                                        <p class="d-inline-block pl-3">- Midfielders</p>
                                        <p class="mb-0">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s</p>
                                    </div>
                                </div>
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
                                                        <label class="form-label">Taille: *</label>
                                                        <input type="text" class="form-control" name="fname" placeholder="First Name" />
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="form-label">Poid: *</label>
                                                        <input type="text" class="form-control" name="lname" placeholder="Last Name" />
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="form-label">foot: *</label>
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
                                                        <label class="form-label">Taille: </label>
                                                        <label class="form-label">1,70 m</label>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="form-label">Poid: </label>
                                                        <label class="form-label">66 kg</label>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="form-label">foot: </label>
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
                                                        <label class="form-label">
                                                            2003-2004	 FC Barcelone C	10 (5)<br />                                                            <br />
                                                            2004-2005	 FC Barcelone B	22 (6)<br />
                                                            2004-2021	 FC Barcelone	778 (672)<br />
                                                            2021-2023	 Paris Saint-Germain	75 (32)</label>
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
