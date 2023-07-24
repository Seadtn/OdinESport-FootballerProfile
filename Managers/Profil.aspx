<%@ Page Title="" Language="C#" MasterPageFile="Manager.Master" AutoEventWireup="true" CodeBehind="Profil.aspx.cs" Inherits="OdinESport.Managers.Profil" %>

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
                                        <img src="../assets/images/avatars/SidneyBroutinovski.jpg" alt="profile-img" class="rounded-pill avatar-130 img-fluid">
                                    </div>
                                    <div class="mt-3">
                                        <h3 class="d-inline-block">Sidney-Broutinovski</h3>
                                        <p class="d-inline-block pl-3">- Football Manager</p>
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
                                                        <input type="email" class="form-control" name="email" placeholder="Email Id" />
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
                                                        <label class="form-label">SidneyBroutinovski@gmail.com</label>
                                                        <%--<input type="email" class="form-control" name="email" placeholder="Email Id" />--%>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="form-label">Username: </label>
                                                        <label class="form-label">SidneyBroutinovski</label>
                                                        <%--<input type="text" class="form-control" name="uname" placeholder="UserName" />--%>
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
                                                        <label class="form-label">Sidney</label>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="form-label">Last Name: </label>
                                                        <label class="form-label">Broutinovski</label>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="form-label">Contact No.: </label>
                                                        <label class="form-label">+99 1256348526</label>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="form-label">Date of Birth: </label>
                                                        <label class="form-label">24 juin 1987</label>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="form-label">Pays: </label>
                                                        <label class="form-label">France </label>
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
                                            <input type="file" class="form-control" name="pic" accept="image/*">
                                        </div>
                                        <%--                                    <div class="form-group">
                                    <label class="form-label">Upload Signature Photo:</label>
                                    <input type="file" class="form-control" name="pic-2" accept="image/*">
                                    </div>--%>
                                    </div>
                                    <button type="button" name="next" class="btn btn-primary next action-button float-end" value="Submit">Save</button>
                                </fieldset>

                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <%--       <div class="col-lg-3">
                <div class="card">
                    <div class="card-header">
                        <div class="header-title">
                            <h4 class="card-title">About</h4>
                        </div>
                    </div>
                    <div class="card-body">
                        <p>Lorem ipsum dolor sit amet, contur adipiscing elit.</p>
                        <div class="mb-1">Email: <a href="#" class="ms-3">nikjone@demoo.com</a></div>
                        <div class="mb-1">Phone: <a href="#" class="ms-3">001 2351 256 12</a></div>
                        <div>Location: <span class="ms-3">USA</span></div>
                    </div>
                </div>
                <div class="card">
                    <div class="card-header">
                        <div class="header-title">
                            <h4 class="card-title">Stories</h4>
                        </div>
                    </div>
                    <div class="card-body">
                        <ul class="list-inline m-0 p-0">
                            <li class="d-flex mb-4 align-items-center active">
                                <img src="../assets/images/icons/06.png" alt="story-img" class="rounded-pill avatar-70 p-1 border bg-soft-light img-fluid">
                                <div class="ms-3">
                                    <h5>Web Design</h5>
                                    <p class="mb-0">1 hour ago</p>
                                </div>
                            </li>
                            <li class="d-flex mb-4 align-items-center">
                                <img src="../assets/images/icons/03.png" alt="story-img" class="rounded-pill avatar-70 p-1 border img-fluid bg-soft-danger">
                                <div class="ms-3">
                                    <h5>App Design</h5>
                                    <p class="mb-0">4 hour ago</p>
                                </div>
                            </li>
                            <li class="d-flex align-items-center">
                                <img src="../assets/images/icons/07.png" alt="story-img" class="rounded-pill avatar-70 p-1 border bg-soft-primary img-fluid">
                                <div class="ms-3">
                                    <h5>Abstract Design</h5>
                                    <p class="mb-0">9 hour ago</p>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="card">
                    <div class="card-header">
                        <div class="header-title">
                            <h4 class="card-title">Suggestions</h4>
                        </div>
                    </div>
                    <div class="card-body">
                        <ul class="list-inline m-0 p-0">
                            <li class="d-flex mb-4 align-items-center">
                                <div class="img-fluid bg-soft-warning rounded-pill">
                                    <img src="../assets/images/icons/05.png" alt="story-img" class="rounded-pill avatar-40">
                                </div>
                                <div class="ms-3 flex-grow-1">
                                    <h6>Paul Molive</h6>
                                    <p class="mb-0">4 mutual friends</p>
                                </div>
                                <a href="javascript:void(0);" class="btn btn-outline-primary rounded-circle btn-icon btn-sm p-2">
                                    <span class="btn-inner">
                                        <svg width="20" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                            <path fill-rule="evenodd" clip-rule="evenodd" d="M9.87651 15.2063C6.03251 15.2063 2.74951 15.7873 2.74951 18.1153C2.74951 20.4433 6.01251 21.0453 9.87651 21.0453C13.7215 21.0453 17.0035 20.4633 17.0035 18.1363C17.0035 15.8093 13.7415 15.2063 9.87651 15.2063Z" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"></path>
                                            <path fill-rule="evenodd" clip-rule="evenodd" d="M9.8766 11.886C12.3996 11.886 14.4446 9.841 14.4446 7.318C14.4446 4.795 12.3996 2.75 9.8766 2.75C7.3546 2.75 5.3096 4.795 5.3096 7.318C5.3006 9.832 7.3306 11.877 9.8456 11.886H9.8766Z" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"></path>
                                            <path d="M19.2036 8.66919V12.6792" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"></path>
                                            <path d="M21.2497 10.6741H17.1597" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"></path>
                                        </svg>
                                    </span>
                                </a>
                            </li>
                            <li class="d-flex mb-4 align-items-center">
                                <div class="img-fluid bg-soft-danger rounded-pill">
                                    <img src="../assets/images/icons/03.png" alt="story-img" class="rounded-pill avatar-40">
                                </div>
                                <div class="ms-3 flex-grow-1">
                                    <h6>Robert Fox</h6>
                                    <p class="mb-0">4 mutual friends</p>
                                </div>
                                <a href="javascript:void(0);" class="btn btn-outline-primary rounded-circle btn-icon btn-sm p-2">
                                    <span class="btn-inner">
                                        <svg width="20" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                            <path fill-rule="evenodd" clip-rule="evenodd" d="M9.87651 15.2063C6.03251 15.2063 2.74951 15.7873 2.74951 18.1153C2.74951 20.4433 6.01251 21.0453 9.87651 21.0453C13.7215 21.0453 17.0035 20.4633 17.0035 18.1363C17.0035 15.8093 13.7415 15.2063 9.87651 15.2063Z" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"></path>
                                            <path fill-rule="evenodd" clip-rule="evenodd" d="M9.8766 11.886C12.3996 11.886 14.4446 9.841 14.4446 7.318C14.4446 4.795 12.3996 2.75 9.8766 2.75C7.3546 2.75 5.3096 4.795 5.3096 7.318C5.3006 9.832 7.3306 11.877 9.8456 11.886H9.8766Z" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"></path>
                                            <path d="M19.2036 8.66919V12.6792" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"></path>
                                            <path d="M21.2497 10.6741H17.1597" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"></path>
                                        </svg>
                                    </span>
                                </a>
                            </li>
                            <li class="d-flex mb-4 align-items-center">
                                <div class="img-fluid bg-soft-dark rounded-pill">
                                    <img src="../assets/images/icons/06.png" alt="story-img" class="rounded-pill avatar-40">
                                </div>
                                <div class="ms-3 flex-grow-1">
                                    <h6>Jenny Wilson</h6>
                                    <p class="mb-0">6 mutual friends</p>
                                </div>
                                <a href="javascript:void(0);" class="btn btn-outline-primary rounded-circle btn-icon btn-sm p-2">
                                    <span class="btn-inner">
                                        <svg width="20" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                            <path fill-rule="evenodd" clip-rule="evenodd" d="M9.87651 15.2063C6.03251 15.2063 2.74951 15.7873 2.74951 18.1153C2.74951 20.4433 6.01251 21.0453 9.87651 21.0453C13.7215 21.0453 17.0035 20.4633 17.0035 18.1363C17.0035 15.8093 13.7415 15.2063 9.87651 15.2063Z" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"></path>
                                            <path fill-rule="evenodd" clip-rule="evenodd" d="M9.8766 11.886C12.3996 11.886 14.4446 9.841 14.4446 7.318C14.4446 4.795 12.3996 2.75 9.8766 2.75C7.3546 2.75 5.3096 4.795 5.3096 7.318C5.3006 9.832 7.3306 11.877 9.8456 11.886H9.8766Z" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"></path>
                                            <path d="M19.2036 8.66919V12.6792" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"></path>
                                            <path d="M21.2497 10.6741H17.1597" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"></path>
                                        </svg>
                                    </span>
                                </a>
                            </li>
                            <li class="d-flex mb-4 align-items-center">
                                <div class="img-fluid bg-soft-primary rounded-pill">
                                    <img src="../assets/images/icons/07.png" alt="story-img" class="rounded-pill avatar-40">
                                </div>
                                <div class="ms-3 flex-grow-1">
                                    <h6>Cody Fisher</h6>
                                    <p class="mb-0">8 mutual friends</p>
                                </div>
                                <a href="javascript:void(0);" class="btn btn-outline-primary rounded-circle btn-icon btn-sm p-2">
                                    <span class="btn-inner">
                                        <svg width="20" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                            <path fill-rule="evenodd" clip-rule="evenodd" d="M9.87651 15.2063C6.03251 15.2063 2.74951 15.7873 2.74951 18.1153C2.74951 20.4433 6.01251 21.0453 9.87651 21.0453C13.7215 21.0453 17.0035 20.4633 17.0035 18.1363C17.0035 15.8093 13.7415 15.2063 9.87651 15.2063Z" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"></path>
                                            <path fill-rule="evenodd" clip-rule="evenodd" d="M9.8766 11.886C12.3996 11.886 14.4446 9.841 14.4446 7.318C14.4446 4.795 12.3996 2.75 9.8766 2.75C7.3546 2.75 5.3096 4.795 5.3096 7.318C5.3006 9.832 7.3306 11.877 9.8456 11.886H9.8766Z" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"></path>
                                            <path d="M19.2036 8.66919V12.6792" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"></path>
                                            <path d="M21.2497 10.6741H17.1597" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"></path>
                                        </svg>
                                    </span>
                                </a>
                            </li>
                            <li class="d-flex mb-4 align-items-center">
                                <div class="img-fluid bg-soft-info rounded-pill">
                                    <img src="../assets/images/icons/04.png" alt="story-img" class="rounded-pill avatar-40">
                                </div>
                                <div class="ms-3 flex-grow-1">
                                    <h6>Bessie Cooper</h6>
                                    <p class="mb-0">1 mutual friends</p>
                                </div>
                                <a href="javascript:void(0);" class="btn btn-outline-primary rounded-circle btn-icon btn-sm p-2">
                                    <span class="btn-inner">
                                        <svg width="20" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                            <path fill-rule="evenodd" clip-rule="evenodd" d="M9.87651 15.2063C6.03251 15.2063 2.74951 15.7873 2.74951 18.1153C2.74951 20.4433 6.01251 21.0453 9.87651 21.0453C13.7215 21.0453 17.0035 20.4633 17.0035 18.1363C17.0035 15.8093 13.7415 15.2063 9.87651 15.2063Z" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"></path>
                                            <path fill-rule="evenodd" clip-rule="evenodd" d="M9.8766 11.886C12.3996 11.886 14.4446 9.841 14.4446 7.318C14.4446 4.795 12.3996 2.75 9.8766 2.75C7.3546 2.75 5.3096 4.795 5.3096 7.318C5.3006 9.832 7.3306 11.877 9.8456 11.886H9.8766Z" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"></path>
                                            <path d="M19.2036 8.66919V12.6792" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"></path>
                                            <path d="M21.2497 10.6741H17.1597" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"></path>
                                        </svg>
                                    </span>
                                </a>
                            </li>
                            <li class="d-flex mb-4 align-items-center">
                                <div class="img-fluid bg-soft-warning rounded-pill">
                                    <img src="../assets/images/icons/02.png" alt="story-img" class="rounded-pill avatar-40">
                                </div>
                                <div class="ms-3 flex-grow-1">
                                    <h6>Wade Warren</h6>
                                    <p class="mb-0">3 mutual friends</p>
                                </div>
                                <a href="javascript:void(0);" class="btn btn-outline-primary rounded-circle btn-icon btn-sm p-2">
                                    <span class="btn-inner">
                                        <svg width="20" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                            <path fill-rule="evenodd" clip-rule="evenodd" d="M9.87651 15.2063C6.03251 15.2063 2.74951 15.7873 2.74951 18.1153C2.74951 20.4433 6.01251 21.0453 9.87651 21.0453C13.7215 21.0453 17.0035 20.4633 17.0035 18.1363C17.0035 15.8093 13.7415 15.2063 9.87651 15.2063Z" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"></path>
                                            <path fill-rule="evenodd" clip-rule="evenodd" d="M9.8766 11.886C12.3996 11.886 14.4446 9.841 14.4446 7.318C14.4446 4.795 12.3996 2.75 9.8766 2.75C7.3546 2.75 5.3096 4.795 5.3096 7.318C5.3006 9.832 7.3306 11.877 9.8456 11.886H9.8766Z" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"></path>
                                            <path d="M19.2036 8.66919V12.6792" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"></path>
                                            <path d="M21.2497 10.6741H17.1597" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"></path>
                                        </svg>
                                    </span>
                                </a>
                            </li>
                            <li class="d-flex mb-4 align-items-center">
                                <div class="img-fluid bg-soft-success rounded-pill">
                                    <img src="../assets/images/icons/01.png" alt="story-img" class="rounded-pill avatar-40">
                                </div>
                                <div class="ms-3 flex-grow-1">
                                    <h6>Guy Hawkins</h6>
                                    <p class="mb-0">12 mutual friends</p>
                                </div>
                                <a href="javascript:void(0);" class="btn btn-outline-primary rounded-circle btn-icon btn-sm p-2">
                                    <span class="btn-inner">
                                        <svg width="20" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                            <path fill-rule="evenodd" clip-rule="evenodd" d="M9.87651 15.2063C6.03251 15.2063 2.74951 15.7873 2.74951 18.1153C2.74951 20.4433 6.01251 21.0453 9.87651 21.0453C13.7215 21.0453 17.0035 20.4633 17.0035 18.1363C17.0035 15.8093 13.7415 15.2063 9.87651 15.2063Z" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"></path>
                                            <path fill-rule="evenodd" clip-rule="evenodd" d="M9.8766 11.886C12.3996 11.886 14.4446 9.841 14.4446 7.318C14.4446 4.795 12.3996 2.75 9.8766 2.75C7.3546 2.75 5.3096 4.795 5.3096 7.318C5.3006 9.832 7.3306 11.877 9.8456 11.886H9.8766Z" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"></path>
                                            <path d="M19.2036 8.66919V12.6792" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"></path>
                                            <path d="M21.2497 10.6741H17.1597" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"></path>
                                        </svg>
                                    </span>
                                </a>
                            </li>
                            <li class="d-flex align-items-center">
                                <div class="img-fluid bg-soft-info rounded-pill">
                                    <img src="../assets/images/icons/08.png" alt="story-img" class="rounded-pill avatar-40">
                                </div>
                                <div class="ms-3 flex-grow-1">
                                    <h6>Floyd Miles</h6>
                                    <p class="mb-0">2 mutual friends</p>
                                </div>
                                <a href="javascript:void(0);" class="btn btn-outline-primary rounded-circle btn-icon btn-sm p-2">
                                    <span class="btn-inner">
                                        <svg width="20" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                            <path fill-rule="evenodd" clip-rule="evenodd" d="M9.87651 15.2063C6.03251 15.2063 2.74951 15.7873 2.74951 18.1153C2.74951 20.4433 6.01251 21.0453 9.87651 21.0453C13.7215 21.0453 17.0035 20.4633 17.0035 18.1363C17.0035 15.8093 13.7415 15.2063 9.87651 15.2063Z" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"></path>
                                            <path fill-rule="evenodd" clip-rule="evenodd" d="M9.8766 11.886C12.3996 11.886 14.4446 9.841 14.4446 7.318C14.4446 4.795 12.3996 2.75 9.8766 2.75C7.3546 2.75 5.3096 4.795 5.3096 7.318C5.3006 9.832 7.3306 11.877 9.8456 11.886H9.8766Z" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"></path>
                                            <path d="M19.2036 8.66919V12.6792" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"></path>
                                            <path d="M21.2497 10.6741H17.1597" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"></path>
                                        </svg>
                                    </span>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>--%>
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
