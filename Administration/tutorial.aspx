<%@ Page Title="" Language="C#" MasterPageFile="Admin.Master" AutoEventWireup="true" CodeBehind="tutorial.aspx.cs" Inherits="OdinESport.Administration.tutorial" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>ODIN ESPORT | Tutoriel</title>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="conatiner-fluid content-inner pb-0">
        <div class="row">
            
            <div class="col-lg-4">
                <div class="card">
                    <div class="card-header">
                        <div class="header-title">
                            <h4 class="card-title">News</h4>
                        </div>
                    </div>
                    <div class="card-body">
                        <ul class="list-inline m-0 p-0">
                            <li class="d-flex mb-2">
                                <div class="news-icon me-3">
                                    <svg width="20" viewBox="0 0 24 24">
                                        <path fill="currentColor" d="M20,2H4A2,2 0 0,0 2,4V22L6,18H20A2,2 0 0,0 22,16V4C22,2.89 21.1,2 20,2Z" />
                                    </svg>
                                </div>
                                <p class="news-detail mb-0">there is a meetup in your city on fryday at 19:00. <a href="#">see details</a></p>
                            </li>
                            <li class="d-flex">
                                <div class="news-icon me-3">
                                    <svg width="20" viewBox="0 0 24 24">
                                        <path fill="currentColor" d="M20,2H4A2,2 0 0,0 2,4V22L6,18H20A2,2 0 0,0 22,16V4C22,2.89 21.1,2 20,2Z" />
                                    </svg>
                                </div>
                                <p class="news-detail mb-0">20% off coupon on selected items at pharmaprix </p>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="card">
                    <div class="card-header d-flex align-items-center justify-content-between">
                        <div class="header-title">
                            <h4 class="card-title">Pictures</h4>
                        </div>
                        <span>132 pics</span>
                    </div>
                    <div class="card-body">
                        <div class="d-grid gap-card grid-cols-3">
                            <a data-fslightbox="gallery" href="../assets/images/icons/04.png">
                                <img src="../assets/images/icons/04.png" class="img-fluid bg-soft-info rounded" alt="profile-image">
                            </a>
                            <a data-fslightbox="gallery" href="../assets/images/shapes/02.png">
                                <img src="../assets/images/shapes/02.png" class="img-fluid bg-soft-primary rounded" alt="profile-image">
                            </a>
                            <a data-fslightbox="gallery" href="../assets/images/icons/08.png">
                                <img src="../assets/images/icons/08.png" class="img-fluid bg-soft-info rounded" alt="profile-image">
                            </a>
                            <a data-fslightbox="gallery" href="../assets/images/shapes/04.png">
                                <img src="../assets/images/shapes/04.png" class="img-fluid bg-soft-primary rounded" alt="profile-image">
                            </a>
                            <a data-fslightbox="gallery" href="../assets/images/icons/02.png">
                                <img src="../assets/images/icons/02.png" class="img-fluid bg-soft-warning rounded" alt="profile-image">
                            </a>
                            <a data-fslightbox="gallery" href="../assets/images/shapes/06.png">
                                <img src="../assets/images/shapes/06.png" class="img-fluid bg-soft-primary rounded" alt="profile-image">
                            </a>
                            <a data-fslightbox="gallery" href="../assets/images/icons/05.png">
                                <img src="../assets/images/icons/05.png" class="img-fluid bg-soft-danger rounded" alt="profile-image">
                            </a>
                            <a data-fslightbox="gallery" href="../assets/images/shapes/04.png">
                                <img src="../assets/images/shapes/04.png" class="img-fluid bg-soft-primary rounded" alt="profile-image">
                            </a>
                            <a data-fslightbox="gallery" href="../assets/images/icons/01.png">
                                <img src="../assets/images/icons/01.png" class="img-fluid bg-soft-success rounded" alt="profile-image">
                            </a>
                        </div>
                    </div>
                </div>
                <div class="card">
                    <div class="card-header d-flex align-items-center justify-content-between">
                        <div class="header-title">
                            <h4 class="card-title">videos</h4>
                        </div>
                        <span>1325 videos</span>
                    </div>
                    <div class="card-body">
                        <div class="d-grid gap-card grid-cols-3">
                            <a data-fslightbox="gallery" href="../assets/images/icons/04.png">
                                <img src="../assets/images/icons/04.png" class="img-fluid bg-soft-info rounded" alt="profile-image">
                            </a>
                            <a data-fslightbox="gallery" href="../assets/images/shapes/02.png">
                                <img src="../assets/images/shapes/02.png" class="img-fluid bg-soft-primary rounded" alt="profile-image">
                            </a>
                            <a data-fslightbox="gallery" href="../assets/images/icons/08.png">
                                <img src="../assets/images/icons/08.png" class="img-fluid bg-soft-info rounded" alt="profile-image">
                            </a>
                            <a data-fslightbox="gallery" href="../assets/images/shapes/04.png">
                                <img src="../assets/images/shapes/04.png" class="img-fluid bg-soft-primary rounded" alt="profile-image">
                            </a>
                            <a data-fslightbox="gallery" href="../assets/images/icons/02.png">
                                <img src="../assets/images/icons/02.png" class="img-fluid bg-soft-warning rounded" alt="profile-image">
                            </a>
                            <a data-fslightbox="gallery" href="../assets/images/shapes/06.png">
                                <img src="../assets/images/shapes/06.png" class="img-fluid bg-soft-primary rounded" alt="profile-image">
                            </a>
                            <a data-fslightbox="gallery" href="../assets/images/icons/05.png">
                                <img src="../assets/images/icons/05.png" class="img-fluid bg-soft-danger rounded" alt="profile-image">
                            </a>
                            <a data-fslightbox="gallery" href="../assets/images/shapes/04.png">
                                <img src="../assets/images/shapes/04.png" class="img-fluid bg-soft-primary rounded" alt="profile-image">
                            </a>
                            <a data-fslightbox="gallery" href="../assets/images/icons/01.png">
                                <img src="../assets/images/icons/01.png" class="img-fluid bg-soft-success rounded" alt="profile-image">
                            </a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-8">
                <div class="profile-content tab-content">
                    <div id="profile-feed" class="tab-pane fade active show">
                     <asp:Literal runat="server" ID="tutorialsHtmlLiteral"></asp:Literal>
                    </div>
                    <div id="profile-activity" class="tab-pane fade">
                        <div class="card">
                            <div class="card-header d-flex justify-content-between">
                                <div class="header-title">
                                    <h4 class="card-title">Activity</h4>
                                </div>
                            </div>
                            <div class="card-body">
                                <div class="iq-timeline0 m-0 d-flex align-items-center justify-content-between position-relative">
                                    <ul class="list-inline p-0 m-0">
                                        <li>
                                            <div class="timeline-dots timeline-dot1 border-primary text-primary"></div>
                                            <h6 class="float-left mb-1">Client Login</h6>
                                            <small class="float-right mt-1">24 November 2019</small>
                                            <div class="d-inline-block w-100">
                                                <p>Bonbon macaroon jelly beans gummi bears jelly lollipop apple</p>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="timeline-dots timeline-dot1 border-success text-success"></div>
                                            <h6 class="float-left mb-1">Scheduled Maintenance</h6>
                                            <small class="float-right mt-1">23 November 2019</small>
                                            <div class="d-inline-block w-100">
                                                <p>Bonbon macaroon jelly beans gummi bears jelly lollipop apple</p>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="timeline-dots timeline-dot1 border-danger text-danger"></div>
                                            <h6 class="float-left mb-1">Dev Meetup</h6>
                                            <small class="float-right mt-1">20 November 2019</small>
                                            <div class="d-inline-block w-100">
                                                <p>Bonbon macaroon jelly beans <a href="#">gummi bears</a>gummi bears jelly lollipop apple</p>
                                                <div class="iq-media-group iq-media-group-1">
                                                    <a href="#" class="iq-media-1">
                                                        <div class="icon iq-icon-box-3 rounded-pill">SP</div>
                                                    </a>
                                                    <a href="#" class="iq-media-1">
                                                        <div class="icon iq-icon-box-3 rounded-pill">PP</div>
                                                    </a>
                                                    <a href="#" class="iq-media-1">
                                                        <div class="icon iq-icon-box-3 rounded-pill">MM</div>
                                                    </a>
                                                </div>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="timeline-dots timeline-dot1 border-primary text-primary"></div>
                                            <h6 class="float-left mb-1">Client Call</h6>
                                            <small class="float-right mt-1">19 November 2019</small>
                                            <div class="d-inline-block w-100">
                                                <p>Bonbon macaroon jelly beans gummi bears jelly lollipop apple</p>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="timeline-dots timeline-dot1 border-warning text-warning"></div>
                                            <h6 class="float-left mb-1">Mega event</h6>
                                            <small class="float-right mt-1">15 November 2019</small>
                                            <div class="d-inline-block w-100">
                                                <p>Bonbon macaroon jelly beans gummi bears jelly lollipop apple</p>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div id="profile-friends" class="tab-pane fade">
                        <div class="card">
                            <div class="card-header">
                                <div class="header-title">
                                    <h4 class="card-title">Friends</h4>
                                </div>
                            </div>
                            <div class="card-body">
                                <ul class="list-inline m-0 p-0">
                                    <li class="d-flex mb-4 align-items-center">
                                        <img src="../assets/images/avatars/01.png" alt="story-img" class="rounded-pill avatar-40">
                                        <div class="ms-3 flex-grow-1">
                                            <h6>Paul Molive</h6>
                                            <p class="mb-0">Web Designer</p>
                                        </div>
                                        <div class="dropdown">
                                            <span class="dropdown-toggle" id="dropdownMenuButton9" data-bs-toggle="dropdown" aria-expanded="false" role="button"></span>
                                            <div class="dropdown-menu dropdown-menu-end" aria-labelledby="dropdownMenuButton9">
                                                <a class="dropdown-item " href="javascript:void(0);">Unfollow</a>
                                                <a class="dropdown-item " href="javascript:void(0);">Unfriend</a>
                                                <a class="dropdown-item " href="javascript:void(0);">block</a>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="d-flex mb-4 align-items-center">
                                        <img src="../assets/images/avatars/05.png" alt="story-img" class="rounded-pill avatar-40">
                                        <div class="ms-3 flex-grow-1">
                                            <h6>Paul Molive</h6>
                                            <p class="mb-0">trainee</p>
                                        </div>
                                        <div class="dropdown">
                                            <span class="dropdown-toggle" id="dropdownMenuButton10" data-bs-toggle="dropdown" aria-expanded="false" role="button"></span>
                                            <div class="dropdown-menu dropdown-menu-end" aria-labelledby="dropdownMenuButton10">
                                                <a class="dropdown-item " href="javascript:void(0);">Unfollow</a>
                                                <a class="dropdown-item " href="javascript:void(0);">Unfriend</a>
                                                <a class="dropdown-item " href="javascript:void(0);">block</a>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="d-flex mb-4 align-items-center">
                                        <img src="../assets/images/avatars/02.png" alt="story-img" class="rounded-pill avatar-40">
                                        <div class="ms-3 flex-grow-1">
                                            <h6>Anna Mull</h6>
                                            <p class="mb-0">Web Developer</p>
                                        </div>
                                        <div class="dropdown">
                                            <span class="dropdown-toggle" id="dropdownMenuButton11" data-bs-toggle="dropdown" aria-expanded="false" role="button"></span>
                                            <div class="dropdown-menu dropdown-menu-end" aria-labelledby="dropdownMenuButton11">
                                                <a class="dropdown-item " href="javascript:void(0);">Unfollow</a>
                                                <a class="dropdown-item " href="javascript:void(0);">Unfriend</a>
                                                <a class="dropdown-item " href="javascript:void(0);">block</a>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="d-flex mb-4 align-items-center">
                                        <img src="../assets/images/avatars/03.png" alt="story-img" class="rounded-pill avatar-40">
                                        <div class="ms-3 flex-grow-1">
                                            <h6>Paige Turner</h6>
                                            <p class="mb-0">trainee</p>
                                        </div>
                                        <div class="dropdown">
                                            <span class="dropdown-toggle" id="dropdownMenuButton12" data-bs-toggle="dropdown" aria-expanded="false" role="button"></span>
                                            <div class="dropdown-menu dropdown-menu-end" aria-labelledby="dropdownMenuButton12">
                                                <a class="dropdown-item " href="javascript:void(0);">Unfollow</a>
                                                <a class="dropdown-item " href="javascript:void(0);">Unfriend</a>
                                                <a class="dropdown-item " href="javascript:void(0);">block</a>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="d-flex mb-4 align-items-center">
                                        <img src="../assets/images/avatars/04.png" alt="story-img" class="rounded-pill avatar-40">
                                        <div class="ms-3 flex-grow-1">
                                            <h6>Barb Ackue</h6>
                                            <p class="mb-0">Web Designer</p>
                                        </div>
                                        <div class="dropdown">
                                            <span class="dropdown-toggle" id="dropdownMenuButton13" data-bs-toggle="dropdown" aria-expanded="false" role="button"></span>
                                            <div class="dropdown-menu dropdown-menu-end" aria-labelledby="dropdownMenuButton13">
                                                <a class="dropdown-item " href="javascript:void(0);">Unfollow</a>
                                                <a class="dropdown-item " href="javascript:void(0);">Unfriend</a>
                                                <a class="dropdown-item " href="javascript:void(0);">block</a>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="d-flex mb-4 align-items-center">
                                        <img src="../assets/images/avatars/05.png" alt="story-img" class="rounded-pill avatar-40">
                                        <div class="ms-3 flex-grow-1">
                                            <h6>Greta Life</h6>
                                            <p class="mb-0">Tester</p>
                                        </div>
                                        <div class="dropdown">
                                            <span class="dropdown-toggle" id="dropdownMenuButton14" data-bs-toggle="dropdown" aria-expanded="false" role="button"></span>
                                            <div class="dropdown-menu dropdown-menu-end" aria-labelledby="dropdownMenuButton14">
                                                <a class="dropdown-item " href="javascript:void(0);">Unfollow</a>
                                                <a class="dropdown-item " href="javascript:void(0);">Unfriend</a>
                                                <a class="dropdown-item " href="javascript:void(0);">block</a>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="d-flex mb-4 align-items-center">
                                        <img src="../assets/images/avatars/03.png" alt="story-img" class="rounded-pill avatar-40">
                                        <div class="ms-3 flex-grow-1">
                                            <h6>Ira Membrit</h6>
                                            <p class="mb-0">Android Developer</p>
                                        </div>
                                        <div class="dropdown">
                                            <span class="dropdown-toggle" id="dropdownMenuButton15" data-bs-toggle="dropdown" aria-expanded="false" role="button"></span>
                                            <div class="dropdown-menu dropdown-menu-end" aria-labelledby="dropdownMenuButton15">
                                                <a class="dropdown-item " href="javascript:void(0);">Unfollow</a>
                                                <a class="dropdown-item " href="javascript:void(0);">Unfriend</a>
                                                <a class="dropdown-item " href="javascript:void(0);">block</a>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="d-flex mb-4 align-items-center">
                                        <img src="../assets/images/avatars/02.png" alt="story-img" class="rounded-pill avatar-40">
                                        <div class="ms-3 flex-grow-1">
                                            <h6>Pete Sariya</h6>
                                            <p class="mb-0">Web Designer</p>
                                        </div>
                                        <div class="dropdown">
                                            <span class="dropdown-toggle" id="dropdownMenuButton16" data-bs-toggle="dropdown" aria-expanded="false" role="button"></span>
                                            <div class="dropdown-menu dropdown-menu-end" aria-labelledby="dropdownMenuButton16">
                                                <a class="dropdown-item " href="javascript:void(0);">Unfollow</a>
                                                <a class="dropdown-item " href="javascript:void(0);">Unfriend</a>
                                                <a class="dropdown-item " href="javascript:void(0);">block</a>
                                            </div>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div id="profile-profile" class="tab-pane fade">
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
                                        <h3 class="d-inline-block">Lionel Messi</h3>
                                        <p class="d-inline-block pl-3">- Midfielders</p>
                                        <p class="mb-0">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="card">
                            <div class="card-header">
                                <div class="header-title">
                                    <h4 class="card-title">About User</h4>
                                </div>
                            </div>
                            <div class="card-body">
                                <div class="user-bio">
                                    <p>Tart I love sugar plum I love oat cake. Sweet roll caramels I love jujubes. Topping cake wafer.</p>
                                </div>
                                <div class="mt-2">
                                    <h6 class="mb-1">Joined:</h6>
                                    <p>Feb 15, 2021</p>
                                </div>
                                <div class="mt-2">
                                    <h6 class="mb-1">Lives:</h6>
                                    <p>United States of America</p>
                                </div>
                                <div class="mt-2">
                                    <h6 class="mb-1">Email:</h6>
                                    <p><a href="#" class="text-body">austin@gmail.com</a></p>
                                </div>
                                <div class="mt-2">
                                    <h6 class="mb-1">Url:</h6>
                                    <p><a href="#" class="text-body" target="_blank">www.bootstrap.com </a></p>
                                </div>
                                <div class="mt-2">
                                    <h6 class="mb-1">Contact:</h6>
                                    <p><a href="#" class="text-body">(001) 4544 565 456</a></p>
                                </div>
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
