<%-- 
    Document   : profile
    Created on : Jun 8, 2023, 8:14:18 AM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <title>Account Settings UI Design</title>
        <meta
            content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"
            name="viewport"
            />
        <link
            rel="stylesheet"
            type="text/css"
            href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
            />
        <link
            rel="stylesheet"
            href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
            />
        <link rel="stylesheet" type="text/css" href="css/profile.css" />
    </head>
    <style>
        @import url("https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap");
        body {
            background: #f9f9f9;
            font-family: "Roboto", sans-serif;
        }

        .shadow {
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1) !important;
        }

        .profile-tab-nav {
            min-width: 250px;
        }

        .tab-content {
            flex: 1;
        }

        .form-group {
            margin-bottom: 1.5rem;
        }

        .nav-pills a.nav-link {
            padding: 15px 20px;
            border-bottom: 1px solid #ddd;
            border-radius: 0;
            color: #333;
        }
        .nav-pills a.nav-link i {
            width: 20px;
        }

        .img-circle img {
            height: 100px;
            width: 100px;
            border-radius: 100%;
            border: 5px solid #fff;
        }
        .btn_cancel:hover{
            text-decoration: none;
        }
    </style>
    <body>

        <section class="py-5 my-5">
            <!--            <a href="HomeController">Quay lai trang chu</a>-->
            <div class="container">
                <h1 class="mb-5">Account Settings</h1>
                <div class="bg-white shadow rounded-lg d-block d-sm-flex">
                    <div class="profile-tab-nav border-right">
                        <div class="p-4">
                            <a href="HomeController"><i class="fa fa-chevron-left" aria-hidden="true"></i></a>
                            <div class="img-circle text-center mb-3">
                                <img src="img/${account.getAvatar()}" alt="Image" class="shadow" />
                            </div>
                            <a href="uploadImg">Upload</a>
                            <h4 class="text-center">${account.getUsername()}</h4>


                        </div>
                        <div
                            class="nav flex-column nav-pills"
                            id="v-pills-tab"
                            role="tablist"
                            aria-orientation="vertical"
                            >
                            <a
                                class="nav-link active"
                                id="account-tab"
                                data-toggle="pill"
                                href="#account"
                                role="tab"
                                aria-controls="account"
                                aria-selected="true"
                                >
                                <i class="fa fa-home text-center mr-1"></i>
                                Account
                            </a>
                            <a
                                class="nav-link"
                                id="password-tab"
                                data-toggle="pill"
                                href="#password"
                                role="tab"
                                aria-controls="password"
                                aria-selected="false"
                                >
                                <i class="fa fa-key text-center mr-1"></i>
                                Password
                            </a>
                        </div>
                    </div>
                    <div class="tab-content p-4 p-md-5" id="v-pills-tabContent">
                        <div
                            class="tab-pane fade show active"
                            id="account"
                            role="tabpanel"
                            aria-labelledby="account-tab"
                            >
                            <h3 class="mb-4">Account Settings</h3>
                            <form action="Profile" method="post">
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>ID</label>
                                            <input type="text" name="id" class="form-control" value="${account.getId()}" readonly="true"/>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>UserName</label>
                                            <input type="text" name="username" class="form-control"  value="${account.getUsername()}" readonly="true"/>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>Email</label>
                                            <input
                                                name="email"
                                                type="text"
                                                class="form-control"
                                                value="${account.getEmail()}"
                                                />
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>Phone number</label>
                                            <input
                                                name="phone"
                                                type="text"
                                                class="form-control"
                                                value="${account.getPhone()}"
                                                pattern="[-+]?[0-10]"
                                                />
                                        </div>
                                    </div>
                                </div>

                                <div>
                                    <button class="btn btn-primary" type="submit">Update</button>
                                    <button class="btn btn-light"><a href="HomeController"class="btn_cancel">Cancel</a></button>    

                                </div>
                            </form>
                        </div>
                        <div
                            class="tab-pane fade"
                            id="password"
                            role="tabpanel"
                            aria-labelledby="password-tab"
                            >
                            <h3 class="mb-4">Password Settings</h3>
                            <form action="UpdatePassword" method="post">
                                <div class="row">
                                    <div class="col-md-6">
                                        <input type="hidden" name="id" class="form-control" value="${account.getId()}"/>
                                        <div class="form-group">
                                            <label>Old password</label>
                                            <input type="password" class="form-control" name="oldpass" value="${account.getPassword()}"/>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>New password</label>
                                            <input type="password" class="form-control" name="newpass"/>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>Confirm new password</label>
                                            <input type="password" class="form-control" name="confpass"/>
                                        </div>
                                    </div>
                                </div>
                                <div>
                                    <button class="btn btn-primary">Update</button>
                                    <button class="btn btn-light"><a href="HomeController"class="btn_cancel">Cancel</a></button>
                                </div>
                            </form>
                        </div>
                        <div
                            class="tab-pane fade"
                            id="security"
                            role="tabpanel"
                            aria-labelledby="security-tab"
                            >
                            <h3 class="mb-4">Security Settings</h3>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Login</label>
                                        <input type="text" class="form-control" />
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Two-factor auth</label>
                                        <input type="text" class="form-control" />
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <div class="form-check">
                                            <input
                                                class="form-check-input"
                                                type="checkbox"
                                                value=""
                                                id="recovery"
                                                />
                                            <label class="form-check-label" for="recovery">
                                                Recovery
                                            </label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div>
                                <button class="btn btn-primary">Update</button>
                                <button class="btn btn-light">Cancel</button>
                            </div>
                        </div>
                        <div
                            class="tab-pane fade"
                            id="application"
                            role="tabpanel"
                            aria-labelledby="application-tab"
                            >
                            <h3 class="mb-4">Application Settings</h3>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <div class="form-check">
                                            <input
                                                class="form-check-input"
                                                type="checkbox"
                                                value=""
                                                id="app-check"
                                                />
                                            <label class="form-check-label" for="app-check">
                                                App check
                                            </label>
                                        </div>
                                        <div class="form-check">
                                            <input
                                                class="form-check-input"
                                                type="checkbox"
                                                value=""
                                                id="defaultCheck2"
                                                />
                                            <label class="form-check-label" for="defaultCheck2">
                                                Lorem ipsum dolor sit.
                                            </label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div>
                                <button class="btn btn-primary">Update</button>
                                <button class="btn btn-light"><a href="HomeController" class="btn_cancel">Cancel</a></button>
                            </div>
                        </div>
                        <div
                            class="tab-pane fade"
                            id="notification"
                            role="tabpanel"
                            aria-labelledby="notification-tab"
                            >
                            <h3 class="mb-4">Notification Settings</h3>
                            <div class="form-group">
                                <div class="form-check">
                                    <input
                                        class="form-check-input"
                                        type="checkbox"
                                        value=""
                                        id="notification1"
                                        />
                                    <label class="form-check-label" for="notification1">
                                        Lorem ipsum dolor sit amet consectetur adipisicing elit.
                                        Dolorum accusantium accusamus, neque cupiditate quis
                                    </label>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="form-check">
                                    <input
                                        class="form-check-input"
                                        type="checkbox"
                                        value=""
                                        id="notification2"
                                        />
                                    <label class="form-check-label" for="notification2">
                                        hic nesciunt repellat perferendis voluptatum totam porro
                                        eligendi.
                                    </label>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="form-check">
                                    <input
                                        class="form-check-input"
                                        type="checkbox"
                                        value=""
                                        id="notification3"
                                        />
                                    <label class="form-check-label" for="notification3">
                                        commodi fugiat molestiae tempora corporis. Sed dignissimos
                                        suscipit
                                    </label>
                                </div>
                            </div>
                            <div>
                                <button class="btn btn-primary">Update</button>
                                <button class="btn btn-light">Cancel</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    </body>
</html>