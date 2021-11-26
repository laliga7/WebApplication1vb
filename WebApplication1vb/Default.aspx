<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Default.aspx.vb" Inherits="WebApplication1vb._Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>Default</title>
    <!--added css file now add css link here -->
    <link href="css/bootstrap.css" rel="stylesheet" />
    <link href="css/bootstrap.main.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div>
            <!--Add required fields here -->
                <!--we added textbox and label here -->

                <h3>Login Page </h3>
                <img alt="" src="" /><br />
                <br />
                <br />
                <asp:Image ID="Image1" runat="server" />
                <br />
                <br />
                <br />
                <div class="row">

                    <div class="col-sm-2"></div>
                        <div class="col-sm-2">
                            <asp:Label ID="Label1" runat="server" Text="Student No."></asp:Label></div>
                        <div class="col-sm-2">
                            <asp:TextBox ID="studentNoTbx" runat="server" class="form-control"></asp:TextBox>
                            <asp:Label ID="studentErrlbl" runat="server" Font-Size="Smaller" ForeColor="#FF3300" Text="*Required field" Visible="False"></asp:Label>
                    </div>
                    <div class="col-sm-2"></div>
                </div>
                <br />
                <div class="row">

                    <div class="col-sm-2"></div>
                        <div class="col-sm-2">
                            <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label></div>
                        <div class="col-sm-2">
                            <asp:TextBox ID="password" type="password" runat="server" class="form-control"></asp:TextBox>
                            <asp:Label ID="passErrlbl" runat="server" Font-Size="Smaller" ForeColor="#FF3300" Text="**" Visible="False"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:HyperLink ID="HyperLink1" runat="server" Font-Size="Smaller" href="https://tut4life.tut.ac.za/" target="_blank">Register/forgot password...</asp:HyperLink>
                        </div>
                    <div class="col-sm-2"></div>
                </div>

                <br />
                <div class="row">

                    <div class="col-sm-4"></div>
                        <div class="col-sm-3">
                            <asp:Button ID="loginbttn" runat="server" Text="Login" class="btn btn-danger" />
                        </div>
                        <div class="col-sm-2"></div>
                    <div class="col-sm-2"></div>
                </div>

            </div>

        </div>

    </form>
</body>
</html>