<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="OdinESport.Managers.Signup" %>




<!doctype html>
<html lang="en" dir="ltr">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>ODIN ESPORT | Sign Up</title>

    <!-- Favicon -->
    <link rel="shortcut icon" href="../../assets/images/favicon.ico" />

    <!-- Library / Plugin Css Build -->
    <link rel="stylesheet" href="../../assets/css/core/libs.min.css" />


    <!-- Hope Ui Design System Css -->
    <link rel="stylesheet" href="../../assets/css/hope-ui.min.css?v=1.2.0" />

    <!-- Custom Css -->
    <link rel="stylesheet" href="../../assets/css/custom.min.css?v=1.2.0" />

    <!-- Dark Css -->
    <link rel="stylesheet" href="../../assets/css/dark.min.css" />

    <!-- Customizer Css -->
    <link rel="stylesheet" href="../../assets/css/customizer.min.css" />

    <!-- RTL Css -->
    <link rel="stylesheet" href="../../assets/css/rtl.min.css" />

</head>
<body class=" " data-bs-spy="scroll" data-bs-target="#elements-section" data-bs-offset="0" tabindex="0">
    <!-- loader Start -->
    <div id="loading">
        <div class="loader simple-loader">
            <div class="loader-body"></div>
        </div>
    </div>
    <!-- loader END -->

    <div class="wrapper">
        <section class="login-content">
            <div class="row m-0 align-items-center bg-white vh-100">

                <div class="col-md-12">
                    <div class="row justify-content-center">
                        <div class="col-md-12">
                            <div class="card card-transparent auth-card shadow-none d-flex justify-content-center mb-0 auth-card">
                                <div class="card-body">
                                    <a href="../../dashboard/index.html" class="navbar-brand d-flex align-items-center mb-3">
                                        <!--Logo start-->
                                        <svg id="Calque_1" width="150" data-name="Calque 1" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1446 528.75">
                                            <defs>
                                                <style>
                                                    .cls-1 {
                                                        fill: #0d055b;
                                                    }

                                                    .cls-2 {
                                                        fill: #1effb1;
                                                    }
                                                </style>
                                            </defs><path class="cls-1" d="M952.26,877.79v386.59H686.48l-24.17-48.32-24.16-48.33L614,1119.41l-24.16-48.33L614,1022.76l24.16-48.32,24.16-48.33,24.17-48.32ZM710.64,926.11l-24.16,48.33-24.17,48.32-24.16,48.32,24.16,48.33,24.17,48.32,24.16,48.33H903.93V926.11Z" transform="translate(-277 -735.62)" /><path class="cls-1" d="M542.78,877.79l24.16,48.32,24.16,48.33,24.16,48.32,24.17,48.32-24.17,48.33-24.16,48.32-24.16,48.33-24.16,48.32H277V877.79ZM325.33,926.11v289.95H518.62l24.16-48.33,24.16-48.32,24.16-48.33-24.16-48.32-24.16-48.32-24.16-48.33Z" transform="translate(-277 -735.62)" /><rect class="cls-2" x="690.73" width="48.83" height="46.55" /><path class="cls-1" d="M1091.4,1029.9q-17.16,0-29.74-6.07a61.71,61.71,0,0,1-20.81-15.87,68.76,68.76,0,0,1-12.31-21.15,64.82,64.82,0,0,1-4.08-21.94v-3.82a67.7,67.7,0,0,1,4.17-23.15A63,63,0,0,1,1041.2,917a61.81,61.81,0,0,1,20.9-15q12.48-5.62,29.3-5.63,16.65,0,29.14,5.63a62,62,0,0,1,20.9,15A63.36,63.36,0,0,1,1154,937.9a67.68,67.68,0,0,1,4.16,23.15v3.82a65,65,0,0,1-4.07,21.94,69,69,0,0,1-12.32,21.15,61.71,61.71,0,0,1-20.81,15.87Q1108.4,1029.91,1091.4,1029.9Zm0-22.89a42.08,42.08,0,0,0,17.43-3.47,38.43,38.43,0,0,0,13.18-9.62,43.08,43.08,0,0,0,8.33-14,48.66,48.66,0,0,0,2.86-16.74,51.5,51.5,0,0,0-2.86-17.51,40.07,40.07,0,0,0-8.33-13.88,38,38,0,0,0-13.26-9.19,47.82,47.82,0,0,0-34.86,0,38,38,0,0,0-13.27,9.19,40.2,40.2,0,0,0-8.32,13.88,51.5,51.5,0,0,0-2.86,17.51,48.66,48.66,0,0,0,2.86,16.74,43.23,43.23,0,0,0,8.32,14,38.3,38.3,0,0,0,13.27,9.62A42.69,42.69,0,0,0,1091.4,1007Z" transform="translate(-277 -735.62)" /><path class="cls-1" d="M1181.93,1027.3V899.14h24.62V1027.3Zm21.16,0v-22.89h26.18a47.64,47.64,0,0,0,17.6-3,36.58,36.58,0,0,0,13.1-8.58,38.07,38.07,0,0,0,8.24-13.09,47,47,0,0,0,2.86-16.74,48.06,48.06,0,0,0-2.86-17.08A36.18,36.18,0,0,0,1260,933a35,35,0,0,0-13.1-8.15,51.8,51.8,0,0,0-17.6-2.78h-26.18V899.14h24.62q17.18,0,30,5A59.43,59.43,0,0,1,1279,918a57.79,57.79,0,0,1,12.75,19.94,64.72,64.72,0,0,1,4.25,23.15v3.82a62.59,62.59,0,0,1-4.25,22.54,60.5,60.5,0,0,1-34.08,34.51q-12.82,5.39-30,5.38Z" transform="translate(-277 -735.62)" /><path class="cls-1" d="M1318.41,1026.61V900H1343v126.6Z" transform="translate(-277 -735.62)" /><path class="cls-1" d="M1374.6,1026.61V900H1415l53.24,106.13H1474l-3.47,3.12V900h23.24v126.6h-40.59l-53.23-106.14H1394l3.47-3.12v109.26Z" transform="translate(-277 -735.62)" /><path class="cls-1" d="M1031.92,1234.71v-126.6H1056v126.6Zm20.64-105.79v-20.81h56v20.81Zm0,51.86V1160h52.89v20.81Zm0,53.93V1213.9H1110v20.81Z" transform="translate(-277 -735.62)" /><path class="cls-1" d="M1177.42,1238q-16.82,0-28.35-5.38t-17.61-14.83a38.74,38.74,0,0,1-6.07-21.41h24.11a19.2,19.2,0,0,0,2.77,9.79,19.76,19.76,0,0,0,8.94,7.72q6.15,3,16.21,2.95a38.5,38.5,0,0,0,15.09-2.6,20.48,20.48,0,0,0,9-6.85,16.51,16.51,0,0,0,2.94-9.63,12.67,12.67,0,0,0-5.72-10.84q-5.71-4.07-17.69-5.11L1170,1181q-18.21-1.56-29-11.36t-10.84-25.92q0-12.15,5.72-20.9a37.31,37.31,0,0,1,16-13.53q10.32-4.77,24.19-4.77,14.4,0,24.8,5a38.15,38.15,0,0,1,16.13,14.14q5.73,9.09,5.72,21.41h-24.1a19.09,19.09,0,0,0-2.52-9.62,18.41,18.41,0,0,0-7.45-7.11q-5-2.68-12.58-2.69a27,27,0,0,0-12.14,2.43,16.91,16.91,0,0,0-7.28,6.59,17.56,17.56,0,0,0-2.43,9,14.25,14.25,0,0,0,4.34,10.31q4.34,4.43,13.7,5.12l11.1,1a69.63,69.63,0,0,1,23.76,5.72,38.48,38.48,0,0,1,15.86,12.66q5.64,8,5.64,19.25a36.36,36.36,0,0,1-6.24,21.07q-6.24,9.11-17.78,14.14T1177.42,1238Z" transform="translate(-277 -735.62)" /><path class="cls-1" d="M1251.12,1234.71V1107.25h24.63v127.46Zm21.16-38.85v-21.33h24.63a24.87,24.87,0,0,0,12.57-2.94,19.65,19.65,0,0,0,7.8-8.16,28,28,0,0,0,0-23.93,19.07,19.07,0,0,0-7.8-8.06,25.4,25.4,0,0,0-12.57-2.86h-24.63v-21.33h22.55q15.95,0,27.14,5.2a38.38,38.38,0,0,1,17.08,14.83q5.9,9.62,5.9,22.8v2.78q0,13.17-5.9,22.8a38.93,38.93,0,0,1-17.08,14.92q-11.19,5.28-27.14,5.28Z" transform="translate(-277 -735.62)" /><path class="cls-1" d="M1424.72,1238q-17.17,0-29.75-6.07a62,62,0,0,1-20.81-15.87,69,69,0,0,1-12.31-21.16,64.71,64.71,0,0,1-4.07-21.94v-3.81a67.64,67.64,0,0,1,4.16-23.15,62.92,62.92,0,0,1,12.57-20.9,61.91,61.91,0,0,1,20.9-15q12.48-5.64,29.31-5.64,16.65,0,29.13,5.64a61.91,61.91,0,0,1,20.9,15,63.09,63.09,0,0,1,12.57,20.9,67.64,67.64,0,0,1,4.16,23.15V1173a65,65,0,0,1-4.07,21.94,69,69,0,0,1-12.31,21.16,62.11,62.11,0,0,1-20.82,15.87Q1441.71,1238,1424.72,1238Zm0-22.89a42.15,42.15,0,0,0,17.43-3.47,38.65,38.65,0,0,0,13.18-9.63,43,43,0,0,0,8.32-14,48.8,48.8,0,0,0,2.86-16.73,51.76,51.76,0,0,0-2.86-17.52,40.16,40.16,0,0,0-8.32-13.87,38.11,38.11,0,0,0-13.27-9.19,47.68,47.68,0,0,0-34.86,0,38.11,38.11,0,0,0-13.27,9.19,40.16,40.16,0,0,0-8.32,13.87,51.51,51.51,0,0,0-2.86,17.52,48.56,48.56,0,0,0,2.86,16.73,43,43,0,0,0,8.32,14,38.42,38.42,0,0,0,13.27,9.63A42.71,42.71,0,0,0,1424.72,1215.12Z" transform="translate(-277 -735.62)" /><path class="cls-1" d="M1515.24,1234.71V1107.25h24.63v127.46Zm17.34-42.31v-20h32.26a23.49,23.49,0,0,0,11.7-2.77,19.6,19.6,0,0,0,7.72-7.81,23.26,23.26,0,0,0,2.78-11.44,23.66,23.66,0,0,0-2.78-11.62,19.73,19.73,0,0,0-7.72-7.81,23.6,23.6,0,0,0-11.7-2.77h-32.26v-21h29.66q15.26,0,26.44,4.51a36.24,36.24,0,0,1,17.26,13.7q6.07,9.18,6.07,23.06v2.78q0,14-6.16,23.06a37.24,37.24,0,0,1-17.25,13.53q-11.1,4.52-26.36,4.51Zm60,42.31-38.85-55.15h27.58l40,55.15Z" transform="translate(-277 -735.62)" /><path class="cls-1" d="M1625.19,1129.79v-21.68H1723v21.68Zm36.59,104.92V1126.32h24.63v108.39Z" transform="translate(-277 -735.62)" /></svg>

                                        <!--logo End-->
                                    </a>
                                    <h2 class="mb-2 text-center">Sign Up Manager</h2>
                                    <p class="text-center">Create your ODIN ESPORT account.</p>
                                    <form id="form-wizard1" class="mt-3 text-center">
                                        <ul id="top-tab-list" class="p-0 row list-inline">
                                            <li class="mb-2 col-lg-3 col-md-6 text-start active" id="account">
                                                <a href="javascript:void();">
                                                    <div class="iq-icon me-3">
                                                        <svg class="svg-icon" xmlns="http://www.w3.org/2000/svg" height="20" width="20" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                                                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M8 11V7a4 4 0 118 0m-4 8v2m-6 4h12a2 2 0 002-2v-6a2 2 0 00-2-2H6a2 2 0 00-2 2v6a2 2 0 002 2z" />
                                                        </svg>
                                                    </div>
                                                    <span class="dark-wizard">Account</span>
                                                </a>
                                            </li>
                                            <li id="personal" class="mb-2 col-lg-3 col-md-6 text-start">
                                                <a href="javascript:void();">
                                                    <div class="iq-icon me-3">
                                                        <svg class="svg-icon" xmlns="http://www.w3.org/2000/svg" height="20" width="20" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                                                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M16 7a4 4 0 11-8 0 4 4 0 018 0zM12 14a7 7 0 00-7 7h14a7 7 0 00-7-7z" />
                                                        </svg>
                                                    </div>
                                                    <span class="dark-wizard">Personal</span>
                                                </a>
                                            </li>
                                            <li id="payment" class="mb-2 col-lg-3 col-md-6 text-start">
                                                <a href="javascript:void();">
                                                    <div class="iq-icon me-3">
                                                        <svg class="svg-icon" xmlns="http://www.w3.org/2000/svg" height="20" width="20" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                                                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M3 9a2 2 0 012-2h.93a2 2 0 001.664-.89l.812-1.22A2 2 0 0110.07 4h3.86a2 2 0 011.664.89l.812 1.22A2 2 0 0018.07 7H19a2 2 0 012 2v9a2 2 0 01-2 2H5a2 2 0 01-2-2V9z" />
                                                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15 13a3 3 0 11-6 0 3 3 0 016 0z" />
                                                        </svg>

                                                    </div>
                                                    <span class="dark-wizard">Image</span>
                                                </a>
                                            </li>
                                            <li id="confirm" class="mb-2 col-lg-3 col-md-6 text-start">
                                                <a href="javascript:void();">
                                                    <div class="iq-icon me-3">
                                                        <svg class="svg-icon" xmlns="http://www.w3.org/2000/svg" height="20" width="20" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                                                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 13l4 4L19 7" />
                                                        </svg>
                                                    </div>
                                                    <span class="dark-wizard">Finish</span>
                                                </a>
                                            </li>
                                        </ul>
                                        <!-- fieldsets -->
                                        <fieldset>
                                            <div class="form-card text-start">
                                                <div class="row">
                                                    <div class="col-7">
                                                        <h3 class="mb-4">Account Information:</h3>
                                                    </div>
                                                    <div class="col-5">
                                                        <h2 class="steps">Step 1 - 4</h2>
                                                    </div>
                                                </div>
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
                                            <button type="button" name="next" class="btn btn-primary next action-button float-end" value="Next">Next</button>
                                        </fieldset>
                                        <fieldset>
                                            <div class="form-card text-start">
                                                <div class="row">
                                                    <div class="col-7">
                                                        <h3 class="mb-4">Personal Information:</h3>
                                                    </div>
                                                    <div class="col-5">
                                                        <h2 class="steps">Step 2 - 4</h2>
                                                    </div>
                                                </div>

                                                <div class="row">
                                                    <div class="col-md-12">
                                                        <div class="form-group">
                                                            <label class="form-label">Manager: *</label>
                                                            <div class="form-check form-check-inline">
                                                                <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault1">
                                                                <label class="form-check-label" for="flexRadioDefault1">
                                                                    Agent
                               
                                                                </label>
                                                            </div>
                                                            <div class="form-check form-check-inline">
                                                                <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault2" checked>
                                                                <label class="form-check-label" for="flexRadioDefault2">
                                                                    Coatch                               
                                                                </label>
                                                            </div>
                                                            <div class="form-check form-check-inline">
                                                                <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault3">
                                                                <label class="form-check-label" for="flexRadioDefault2">
                                                                    Club                               
                                                                </label>
                                                            </div>

                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-12">
                                                        <div class="form-group">
                                                            <label class="form-label">Club Name: *</label><div></div>
                                                            <input type="text" class="form-control" name="fname" placeholder="Club Name" />
                                                        </div>
                                                    </div>
                                                </div>
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
                                            <button type="button" name="next" class="btn btn-primary next action-button float-end" value="Next">Next</button>
                                            <button type="button" name="previous" class="btn btn-dark previous action-button-previous float-end me-1" value="Previous">Previous</button>
                                        </fieldset>
                                        <fieldset>
                                            <div class="form-card text-start">
                                                <div class="row">
                                                    <div class="col-7">
                                                        <h3 class="mb-4">Image Upload:</h3>
                                                    </div>
                                                    <div class="col-5">
                                                        <h2 class="steps">Step 3 - 4</h2>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label class="form-label">Upload Your Photo:</label>
                                                    <input type="file" class="form-control" name="pic" accept="image/*">
                                                </div>
                                                <%--                                    <div class="form-group">
                                    <label class="form-label">Upload Signature Photo:</label>
                                    <input type="file" class="form-control" name="pic-2" accept="image/*">
                                    </div>--%>
                                            </div>
                                            <button type="button" name="next" class="btn btn-primary next action-button float-end" value="Submit">Submit</button>
                                            <button type="button" name="previous" class="btn btn-dark previous action-button-previous float-end me-1" value="Previous">Previous</button>
                                        </fieldset>
                                        <fieldset>
                                            <div class="form-card">
                                                <div class="row">
                                                    <div class="col-7">
                                                        <h3 class="mb-4 text-left">Finish:</h3>
                                                    </div>
                                                    <div class="col-5">
                                                        <h2 class="steps">Step 4 - 4</h2>
                                                    </div>
                                                </div>
                                                <br>
                                                <br>
                                                <h2 class="text-center text-success"><strong>SUCCESS !</strong></h2>
                                                <br>
                                                <div class="row justify-content-center">
                                                    <div class="col-3">
                                                        <img width="50%" src="../../assets/images/pages/img-success.png" class="img-fluid" alt="fit-image">
                                                    </div>
                                                </div>
                                                <br>
                                                <br>
                                                <div class="row justify-content-center">
                                                    <div class="text-center col-7">
                                                        <h5 class="text-center purple-text">You Have Successfully Signed Up <a href="signin.aspx" class="btn btn-success">Click here to Sign In.</a></h5>

                                                    </div>
                                                </div>
                                            </div>
                                        </fieldset>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="sign-bg sign-bg-right">
                        <svg id="Calque_2" width="280" opacity="0.05" height="230" data-name="Calque 1" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 736 526.21">
                            <defs>
                                <style>
                                    .cls-1 {
                                        fill: #0d055b;
                                    }

                                    .cls-2 {
                                        fill: #1effb1;
                                    }
                                </style>
                            </defs>
                            <path class="cls-1" d="M1304,876.3V1261H1039.51l-24-48.09-24.05-48.09-24-48.09-24-48.09,24-48.09,24-48.09,24.05-48.09,24-48.09Zm-240.45,48.09-24,48.09-24,48.09-24.05,48.09,24.05,48.09,24,48.09,24,48.09h192.36V924.39Z" transform="translate(-632 -734.81)" />
                            <path class="cls-1" d="M896.5,876.3l24,48.09,24,48.09,24,48.09,24,48.09-24,48.09-24,48.09-24,48.09-24,48.09H632V876.3ZM680.09,924.39v288.54H872.45l24-48.09,24-48.09,24-48.09-24-48.09-24-48.09-24-48.09Z" transform="translate(-632 -734.81)" />
                            <rect class="cls-2" x="687.4" width="48.6" height="46.32" />
                        </svg>

                        <%--<svg width="280" height="230" viewBox="0 0 421 359" fill="none" xmlns="http://www.w3.org/2000/svg">
                     <g opacity="0.05">
                        <rect x="-15.0845" y="154.773" width="543" height="77.5714" rx="38.7857" transform="rotate(-45 -15.0845 154.773)" fill="#0d055b"/>
                        <rect x="149.47" y="319.328" width="543" height="77.5714" rx="38.7857" transform="rotate(-45 149.47 319.328)" fill="#0d055b"/>
                        <rect x="203.936" y="99.543" width="310.286" height="77.5714" rx="38.7857" transform="rotate(45 203.936 99.543)" fill="#0d055b"/>
                        <rect x="204.316" y="-229.172" width="543" height="77.5714" rx="38.7857" transform="rotate(45 204.316 -229.172)" fill="#0d055b"/>
                     </g>
                  </svg>--%>
                    </div>
                </div>
            </div>
        </section>
    </div>

    <!-- Library Bundle Script -->
    <script src="../../assets/js/core/libs.min.js"></script>

    <!-- External Library Bundle Script -->
    <script src="../../assets/js/core/external.min.js"></script>

    <!-- Widgetchart Script -->
    <script src="../../assets/js/charts/widgetcharts.js"></script>

    <!-- mapchart Script -->
    <script src="../../assets/js/charts/vectore-chart.js"></script>
    <script src="../../assets/js/charts/dashboard.js"></script>

    <!-- fslightbox Script -->
    <script src="../../assets/js/plugins/fslightbox.js"></script>

    <!-- Settings Script -->
    <script src="../../assets/js/plugins/setting.js"></script>

    <!-- Slider-tab Script -->
    <script src="../../assets/js/plugins/slider-tabs.js"></script>

    <!-- Form Wizard Script -->
    <script src="../../assets/js/plugins/form-wizard2.js"></script>

    <!-- AOS Animation Plugin-->

    <!-- App Script -->
    <script src="../../assets/js/hope-ui.js" defer></script>
</body>
</html>
