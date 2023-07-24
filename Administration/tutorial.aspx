﻿<%@ Page Title="" Language="C#" MasterPageFile="Admin.Master" AutoEventWireup="true" CodeBehind="tutorial.aspx.cs" Inherits="OdinESport.Administration.tutorial" %>

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
                        <div class="card">
                            <div class="card-header d-flex align-items-center justify-content-between pb-4">
                                <div class="header-title">
                                    <div class="d-flex flex-wrap">
                                        <div class="media-support-user-img me-3">
                                            <img class="rounded-pill img-fluid avatar-60   p-1 ps-2" src="../assets/images/LOGO%20V3%20COLORS.svg" alt="">
                                        </div>
                                        <div class="media-support-info mt-2">
                                            <h5 class="mb-0">ODIN ESPORT</h5>
                                            <p class="mb-0 text-primary">Learn this skill in 3 easy steps</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="dropdown">
                                    <span class="dropdown-toggle" id="dropdownMenuButton7" data-bs-toggle="dropdown" aria-expanded="false" role="button">29 mins 
                           </span>
                                    <div class="dropdown-menu dropdown-menu-end" aria-labelledby="dropdownMenuButton7">
                                        <a class="dropdown-item " href="javascript:void(0);">Action</a>
                                        <a class="dropdown-item " href="javascript:void(0);">Another action</a>
                                        <a class="dropdown-item " href="javascript:void(0);">Something else here</a>
                                    </div>
                                </div>
                            </div>
                            <div class="card-body p-0">
                                <div class="user-post">
                                    <a href="javascript:void(0);">
                                        <iframe width="100%" height="480" src="https://www.youtube.com/embed/LLgHjxTrP2I" frameborder="0" allowfullscreen></iframe>

                                        <%--<img src="../assets/images/pages/02-page.png" alt="post-image" class="img-fluid"></a>--%>
                                </div>
                                <div class="comment-area p-3">
                                    <%-- <div class="d-flex flex-wrap justify-content-between align-items-center">
                                        <div class="d-flex align-items-center">
                                            <div class="d-flex align-items-center message-icon me-3">
                                                <svg width="20" height="20" viewBox="0 0 24 24">
                                                    <path fill="currentColor" d="M12.1,18.55L12,18.65L11.89,18.55C7.14,14.24 4,11.39 4,8.5C4,6.5 5.5,5 7.5,5C9.04,5 10.54,6 11.07,7.36H12.93C13.46,6 14.96,5 16.5,5C18.5,5 20,6.5 20,8.5C20,11.39 16.86,14.24 12.1,18.55M16.5,3C14.76,3 13.09,3.81 12,5.08C10.91,3.81 9.24,3 7.5,3C4.42,3 2,5.41 2,8.5C2,12.27 5.4,15.36 10.55,20.03L12,21.35L13.45,20.03C18.6,15.36 22,12.27 22,8.5C22,5.41 19.58,3 16.5,3Z" />
                                                </svg>
                                                <span class="ms-1">140</span>
                                            </div>
                                            <div class="d-flex align-items-center feather-icon">
                                                <svg width="20" height="20" viewBox="0 0 24 24">
                                                    <path fill="currentColor" d="M9,22A1,1 0 0,1 8,21V18H4A2,2 0 0,1 2,16V4C2,2.89 2.9,2 4,2H20A2,2 0 0,1 22,4V16A2,2 0 0,1 20,18H13.9L10.2,21.71C10,21.9 9.75,22 9.5,22V22H9M10,16V19.08L13.08,16H20V4H4V16H10Z" />
                                                </svg>
                                                <span class="ms-1">140</span>
                                            </div>
                                        </div>
                                        <div class="share-block d-flex align-items-center feather-icon">
                                            <a href="javascript:void(0);" data-bs-toggle="offcanvas" data-bs-target="#share-btn" aria-controls="share-btn">
                                                <span class="ms-1">
                                                    <svg width="18" class="me-1" viewBox="0 0 24 24">
                                                        <path fill="currentColor" d="M18 16.08C17.24 16.08 16.56 16.38 16.04 16.85L8.91 12.7C8.96 12.47 9 12.24 9 12S8.96 11.53 8.91 11.3L15.96 7.19C16.5 7.69 17.21 8 18 8C19.66 8 21 6.66 21 5S19.66 2 18 2 15 3.34 15 5C15 5.24 15.04 5.47 15.09 5.7L8.04 9.81C7.5 9.31 6.79 9 6 9C4.34 9 3 10.34 3 12S4.34 15 6 15C6.79 15 7.5 14.69 8.04 14.19L15.16 18.34C15.11 18.55 15.08 18.77 15.08 19C15.08 20.61 16.39 21.91 18 21.91S20.92 20.61 20.92 19C20.92 17.39 19.61 16.08 18 16.08M18 4C18.55 4 19 4.45 19 5S18.55 6 18 6 17 5.55 17 5 17.45 4 18 4M6 13C5.45 13 5 12.55 5 12S5.45 11 6 11 7 11.45 7 12 6.55 13 6 13M18 20C17.45 20 17 19.55 17 19S17.45 18 18 18 19 18.45 19 19 18.55 20 18 20Z"></path>
                                                    </svg>
                                                    99 Share</span></a>
                                        </div>
                                    </div>
                                    <hr>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi nulla dolor, ornare at commodo non, feugiat non nisi. Phasellus faucibus mollis pharetra. Proin blandit ac massa sed rhoncus</p>
                                    <hr>--%>
                                    <%--                                    <ul class="list-inline p-0 m-0">
                                        <li class="mb-2">
                                            <div class="d-flex">
                                                <img src="../assets/images/avatars/03.png" alt="userimg" class="avatar-50 p-1 pt-2 bg-soft-primary rounded-pill img-fluid">
                                                <div class="ms-3">
                                                    <h6 class="mb-1">Monty Carlo</h6>
                                                    <p class="mb-1">Lorem ipsum dolor sit amet</p>
                                                    <div class="d-flex flex-wrap align-items-center mb-1">
                                                        <a href="javascript:void(0);" class="me-3">
                                                            <svg width="20" height="20" class="text-body me-1" viewBox="0 0 24 24">
                                                                <path fill="currentColor" d="M12.1,18.55L12,18.65L11.89,18.55C7.14,14.24 4,11.39 4,8.5C4,6.5 5.5,5 7.5,5C9.04,5 10.54,6 11.07,7.36H12.93C13.46,6 14.96,5 16.5,5C18.5,5 20,6.5 20,8.5C20,11.39 16.86,14.24 12.1,18.55M16.5,3C14.76,3 13.09,3.81 12,5.08C10.91,3.81 9.24,3 7.5,3C4.42,3 2,5.41 2,8.5C2,12.27 5.4,15.36 10.55,20.03L12,21.35L13.45,20.03C18.6,15.36 22,12.27 22,8.5C22,5.41 19.58,3 16.5,3Z" />
                                                            </svg>
                                                            like
                                          </a>
                                                        <a href="javascript:void(0);" class="me-3">
                                                            <svg width="20" height="20" class="me-1" viewBox="0 0 24 24">
                                                                <path fill="currentColor" d="M8,9.8V10.7L9.7,11C12.3,11.4 14.2,12.4 15.6,13.7C13.9,13.2 12.1,12.9 10,12.9H8V14.2L5.8,12L8,9.8M10,5L3,12L10,19V14.9C15,14.9 18.5,16.5 21,20C20,15 17,10 10,9" />
                                                            </svg>
                                                            reply
                                          </a>
                                                        <a href="javascript:void(0);" class="me-3">translate</a>
                                                        <span>5 min </span>
                                                    </div>
                                                </div>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="d-flex">
                                                <img src="../assets/images/avatars/04.png" alt="userimg" class="avatar-50 p-1 bg-soft-danger rounded-pill img-fluid">
                                                <div class="ms-3">
                                                    <h6 class="mb-1">Paul Molive</h6>
                                                    <p class="mb-1">Lorem ipsum dolor sit amet</p>
                                                    <div class="d-flex flex-wrap align-items-center">
                                                        <a href="javascript:void(0);" class="me-3">
                                                            <svg width="20" height="20" class="text-body me-1" viewBox="0 0 24 24">
                                                                <path fill="currentColor" d="M12.1,18.55L12,18.65L11.89,18.55C7.14,14.24 4,11.39 4,8.5C4,6.5 5.5,5 7.5,5C9.04,5 10.54,6 11.07,7.36H12.93C13.46,6 14.96,5 16.5,5C18.5,5 20,6.5 20,8.5C20,11.39 16.86,14.24 12.1,18.55M16.5,3C14.76,3 13.09,3.81 12,5.08C10.91,3.81 9.24,3 7.5,3C4.42,3 2,5.41 2,8.5C2,12.27 5.4,15.36 10.55,20.03L12,21.35L13.45,20.03C18.6,15.36 22,12.27 22,8.5C22,5.41 19.58,3 16.5,3Z" />
                                                            </svg>
                                                            like
                                          </a>
                                                        <a href="javascript:void(0);" class="me-3">
                                                            <svg width="20" height="20" class="me-1" viewBox="0 0 24 24">
                                                                <path fill="currentColor" d="M8,9.8V10.7L9.7,11C12.3,11.4 14.2,12.4 15.6,13.7C13.9,13.2 12.1,12.9 10,12.9H8V14.2L5.8,12L8,9.8M10,5L3,12L10,19V14.9C15,14.9 18.5,16.5 21,20C20,15 17,10 10,9" />
                                                            </svg>
                                                            reply
                                          </a>
                                                        <a href="javascript:void(0);" class="me-3">translate</a>
                                                        <span>5 min </span>
                                                    </div>
                                                </div>
                                            </div>
                                        </li>
                                    </ul>--%>
                                    <%--                                    <form class="comment-text d-flex align-items-center mt-3" action="javascript:void(0);">
                                        <input type="text" class="form-control rounded" placeholder="Lovely!">
                                        <div class="comment-attagement d-flex">
                                            <a href="javascript:void(0);" class="me-2 text-body">
                                                <svg width="20" height="20" viewBox="0 0 24 24">
                                                    <path fill="currentColor" d="M20,12A8,8 0 0,0 12,4A8,8 0 0,0 4,12A8,8 0 0,0 12,20A8,8 0 0,0 20,12M22,12A10,10 0 0,1 12,22A10,10 0 0,1 2,12A10,10 0 0,1 12,2A10,10 0 0,1 22,12M10,9.5C10,10.3 9.3,11 8.5,11C7.7,11 7,10.3 7,9.5C7,8.7 7.7,8 8.5,8C9.3,8 10,8.7 10,9.5M17,9.5C17,10.3 16.3,11 15.5,11C14.7,11 14,10.3 14,9.5C14,8.7 14.7,8 15.5,8C16.3,8 17,8.7 17,9.5M12,17.23C10.25,17.23 8.71,16.5 7.81,15.42L9.23,14C9.68,14.72 10.75,15.23 12,15.23C13.25,15.23 14.32,14.72 14.77,14L16.19,15.42C15.29,16.5 13.75,17.23 12,17.23Z" />
                                                </svg>
                                            </a>
                                            <a href="javascript:void(0);" class="text-body">
                                                <svg width="20" height="20" viewBox="0 0 24 24">
                                                    <path fill="currentColor" d="M20,4H16.83L15,2H9L7.17,4H4A2,2 0 0,0 2,6V18A2,2 0 0,0 4,20H20A2,2 0 0,0 22,18V6A2,2 0 0,0 20,4M20,18H4V6H8.05L9.88,4H14.12L15.95,6H20V18M12,7A5,5 0 0,0 7,12A5,5 0 0,0 12,17A5,5 0 0,0 17,12A5,5 0 0,0 12,7M12,15A3,3 0 0,1 9,12A3,3 0 0,1 12,9A3,3 0 0,1 15,12A3,3 0 0,1 12,15Z" />
                                                </svg>
                                            </a>
                                        </div>
                                    </form>--%>
                                </div>
                            </div>
                        </div>
                        <div class="card">
                            <div class="card-header d-flex align-items-center justify-content-between pb-4">
                                <div class="header-title">
                                    <div class="d-flex flex-wrap">
                                        <div class="media-support-user-img me-3">
                                            <img class="rounded-pill img-fluid avatar-60   p-1 ps-2" src="../assets/images/LOGO%20V3%20COLORS.svg" alt="">
                                        </div>
                                        <div class="media-support-info mt-2">
                                            <h5 class="mb-0">ODIN ESPORT</h5>
                                            <p class="mb-0 text-primary">Learn to shoot with Power in 5 steps</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="dropdown">
                                    <span class="dropdown-toggle" id="dropdownMenuButton7" data-bs-toggle="dropdown" aria-expanded="false" role="button">2 Days 
                           </span>
                                    <div class="dropdown-menu dropdown-menu-end" aria-labelledby="dropdownMenuButton7">
                                        <a class="dropdown-item " href="javascript:void(0);">Action</a>
                                        <a class="dropdown-item " href="javascript:void(0);">Another action</a>
                                        <a class="dropdown-item " href="javascript:void(0);">Something else here</a>
                                    </div>
                                </div>
                            </div>
                            <div class="card-body p-0">
                                <div class="user-post">
                                    <a href="javascript:void(0);">

                                        <iframe width="100%" height="480" src="https://www.youtube.com/embed/N2iR5LtvqoQ" frameborder="0" allowfullscreen></iframe>

                                        <%--<img src="../assets/images/pages/02-page.png" alt="post-image" class="img-fluid"></a>--%>
                                </div>
                                <div class="comment-area p-3">
                                    <%-- <div class="d-flex flex-wrap justify-content-between align-items-center">
                                        <div class="d-flex align-items-center">
                                            <div class="d-flex align-items-center message-icon me-3">
                                                <svg width="20" height="20" viewBox="0 0 24 24">
                                                    <path fill="currentColor" d="M12.1,18.55L12,18.65L11.89,18.55C7.14,14.24 4,11.39 4,8.5C4,6.5 5.5,5 7.5,5C9.04,5 10.54,6 11.07,7.36H12.93C13.46,6 14.96,5 16.5,5C18.5,5 20,6.5 20,8.5C20,11.39 16.86,14.24 12.1,18.55M16.5,3C14.76,3 13.09,3.81 12,5.08C10.91,3.81 9.24,3 7.5,3C4.42,3 2,5.41 2,8.5C2,12.27 5.4,15.36 10.55,20.03L12,21.35L13.45,20.03C18.6,15.36 22,12.27 22,8.5C22,5.41 19.58,3 16.5,3Z" />
                                                </svg>
                                                <span class="ms-1">140</span>
                                            </div>
                                            <div class="d-flex align-items-center feather-icon">
                                                <svg width="20" height="20" viewBox="0 0 24 24">
                                                    <path fill="currentColor" d="M9,22A1,1 0 0,1 8,21V18H4A2,2 0 0,1 2,16V4C2,2.89 2.9,2 4,2H20A2,2 0 0,1 22,4V16A2,2 0 0,1 20,18H13.9L10.2,21.71C10,21.9 9.75,22 9.5,22V22H9M10,16V19.08L13.08,16H20V4H4V16H10Z" />
                                                </svg>
                                                <span class="ms-1">140</span>
                                            </div>
                                        </div>
                                        <div class="share-block d-flex align-items-center feather-icon">
                                            <a href="javascript:void(0);" data-bs-toggle="offcanvas" data-bs-target="#share-btn" aria-controls="share-btn">
                                                <span class="ms-1">
                                                    <svg width="18" class="me-1" viewBox="0 0 24 24">
                                                        <path fill="currentColor" d="M18 16.08C17.24 16.08 16.56 16.38 16.04 16.85L8.91 12.7C8.96 12.47 9 12.24 9 12S8.96 11.53 8.91 11.3L15.96 7.19C16.5 7.69 17.21 8 18 8C19.66 8 21 6.66 21 5S19.66 2 18 2 15 3.34 15 5C15 5.24 15.04 5.47 15.09 5.7L8.04 9.81C7.5 9.31 6.79 9 6 9C4.34 9 3 10.34 3 12S4.34 15 6 15C6.79 15 7.5 14.69 8.04 14.19L15.16 18.34C15.11 18.55 15.08 18.77 15.08 19C15.08 20.61 16.39 21.91 18 21.91S20.92 20.61 20.92 19C20.92 17.39 19.61 16.08 18 16.08M18 4C18.55 4 19 4.45 19 5S18.55 6 18 6 17 5.55 17 5 17.45 4 18 4M6 13C5.45 13 5 12.55 5 12S5.45 11 6 11 7 11.45 7 12 6.55 13 6 13M18 20C17.45 20 17 19.55 17 19S17.45 18 18 18 19 18.45 19 19 18.55 20 18 20Z"></path>
                                                    </svg>
                                                    99 Share</span></a>
                                        </div>
                                    </div>
                                    <hr>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi nulla dolor, ornare at commodo non, feugiat non nisi. Phasellus faucibus mollis pharetra. Proin blandit ac massa sed rhoncus</p>
                                    <hr>--%>
                                    <%--                                    <ul class="list-inline p-0 m-0">
                                        <li class="mb-2">
                                            <div class="d-flex">
                                                <img src="../assets/images/avatars/03.png" alt="userimg" class="avatar-50 p-1 pt-2 bg-soft-primary rounded-pill img-fluid">
                                                <div class="ms-3">
                                                    <h6 class="mb-1">Monty Carlo</h6>
                                                    <p class="mb-1">Lorem ipsum dolor sit amet</p>
                                                    <div class="d-flex flex-wrap align-items-center mb-1">
                                                        <a href="javascript:void(0);" class="me-3">
                                                            <svg width="20" height="20" class="text-body me-1" viewBox="0 0 24 24">
                                                                <path fill="currentColor" d="M12.1,18.55L12,18.65L11.89,18.55C7.14,14.24 4,11.39 4,8.5C4,6.5 5.5,5 7.5,5C9.04,5 10.54,6 11.07,7.36H12.93C13.46,6 14.96,5 16.5,5C18.5,5 20,6.5 20,8.5C20,11.39 16.86,14.24 12.1,18.55M16.5,3C14.76,3 13.09,3.81 12,5.08C10.91,3.81 9.24,3 7.5,3C4.42,3 2,5.41 2,8.5C2,12.27 5.4,15.36 10.55,20.03L12,21.35L13.45,20.03C18.6,15.36 22,12.27 22,8.5C22,5.41 19.58,3 16.5,3Z" />
                                                            </svg>
                                                            like
                                          </a>
                                                        <a href="javascript:void(0);" class="me-3">
                                                            <svg width="20" height="20" class="me-1" viewBox="0 0 24 24">
                                                                <path fill="currentColor" d="M8,9.8V10.7L9.7,11C12.3,11.4 14.2,12.4 15.6,13.7C13.9,13.2 12.1,12.9 10,12.9H8V14.2L5.8,12L8,9.8M10,5L3,12L10,19V14.9C15,14.9 18.5,16.5 21,20C20,15 17,10 10,9" />
                                                            </svg>
                                                            reply
                                          </a>
                                                        <a href="javascript:void(0);" class="me-3">translate</a>
                                                        <span>5 min </span>
                                                    </div>
                                                </div>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="d-flex">
                                                <img src="../assets/images/avatars/04.png" alt="userimg" class="avatar-50 p-1 bg-soft-danger rounded-pill img-fluid">
                                                <div class="ms-3">
                                                    <h6 class="mb-1">Paul Molive</h6>
                                                    <p class="mb-1">Lorem ipsum dolor sit amet</p>
                                                    <div class="d-flex flex-wrap align-items-center">
                                                        <a href="javascript:void(0);" class="me-3">
                                                            <svg width="20" height="20" class="text-body me-1" viewBox="0 0 24 24">
                                                                <path fill="currentColor" d="M12.1,18.55L12,18.65L11.89,18.55C7.14,14.24 4,11.39 4,8.5C4,6.5 5.5,5 7.5,5C9.04,5 10.54,6 11.07,7.36H12.93C13.46,6 14.96,5 16.5,5C18.5,5 20,6.5 20,8.5C20,11.39 16.86,14.24 12.1,18.55M16.5,3C14.76,3 13.09,3.81 12,5.08C10.91,3.81 9.24,3 7.5,3C4.42,3 2,5.41 2,8.5C2,12.27 5.4,15.36 10.55,20.03L12,21.35L13.45,20.03C18.6,15.36 22,12.27 22,8.5C22,5.41 19.58,3 16.5,3Z" />
                                                            </svg>
                                                            like
                                          </a>
                                                        <a href="javascript:void(0);" class="me-3">
                                                            <svg width="20" height="20" class="me-1" viewBox="0 0 24 24">
                                                                <path fill="currentColor" d="M8,9.8V10.7L9.7,11C12.3,11.4 14.2,12.4 15.6,13.7C13.9,13.2 12.1,12.9 10,12.9H8V14.2L5.8,12L8,9.8M10,5L3,12L10,19V14.9C15,14.9 18.5,16.5 21,20C20,15 17,10 10,9" />
                                                            </svg>
                                                            reply
                                          </a>
                                                        <a href="javascript:void(0);" class="me-3">translate</a>
                                                        <span>5 min </span>
                                                    </div>
                                                </div>
                                            </div>
                                        </li>
                                    </ul>--%>
                                    <%--                                    <form class="comment-text d-flex align-items-center mt-3" action="javascript:void(0);">
                                        <input type="text" class="form-control rounded" placeholder="Lovely!">
                                        <div class="comment-attagement d-flex">
                                            <a href="javascript:void(0);" class="me-2 text-body">
                                                <svg width="20" height="20" viewBox="0 0 24 24">
                                                    <path fill="currentColor" d="M20,12A8,8 0 0,0 12,4A8,8 0 0,0 4,12A8,8 0 0,0 12,20A8,8 0 0,0 20,12M22,12A10,10 0 0,1 12,22A10,10 0 0,1 2,12A10,10 0 0,1 12,2A10,10 0 0,1 22,12M10,9.5C10,10.3 9.3,11 8.5,11C7.7,11 7,10.3 7,9.5C7,8.7 7.7,8 8.5,8C9.3,8 10,8.7 10,9.5M17,9.5C17,10.3 16.3,11 15.5,11C14.7,11 14,10.3 14,9.5C14,8.7 14.7,8 15.5,8C16.3,8 17,8.7 17,9.5M12,17.23C10.25,17.23 8.71,16.5 7.81,15.42L9.23,14C9.68,14.72 10.75,15.23 12,15.23C13.25,15.23 14.32,14.72 14.77,14L16.19,15.42C15.29,16.5 13.75,17.23 12,17.23Z" />
                                                </svg>
                                            </a>
                                            <a href="javascript:void(0);" class="text-body">
                                                <svg width="20" height="20" viewBox="0 0 24 24">
                                                    <path fill="currentColor" d="M20,4H16.83L15,2H9L7.17,4H4A2,2 0 0,0 2,6V18A2,2 0 0,0 4,20H20A2,2 0 0,0 22,18V6A2,2 0 0,0 20,4M20,18H4V6H8.05L9.88,4H14.12L15.95,6H20V18M12,7A5,5 0 0,0 7,12A5,5 0 0,0 12,17A5,5 0 0,0 17,12A5,5 0 0,0 12,7M12,15A3,3 0 0,1 9,12A3,3 0 0,1 12,9A3,3 0 0,1 15,12A3,3 0 0,1 12,15Z" />
                                                </svg>
                                            </a>
                                        </div>
                                    </form>--%>
                                </div>
                            </div>
                        </div>
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