<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Portal.aspx.vb" Inherits="WebApplication1vb.Portal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Portal</title>
    <!--added css file now add css link here -->
    <link href="css/bootstrap.css" rel="stylesheet" />
    <link href="css/bootstrap.main.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            width: 781px;
            height: 266px;
        }
        .auto-style2 {
            height: 266px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h3>Welcome&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="currentUserlbl" runat="server" Text="Label"></asp:Label>
            </h3>
                            <asp:Button ID="loginbttn" runat="server" Text="Log Out" class="btn btn-danger" />
            <br />
            <br />
            <asp:Image ID="Image1" runat="server" Width="108px" />
            <br />
            <br />
        <p></p> 

        <table class="table table-bordered">
            <tr>
                <td class="auto-style1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;                            Book Bus:<br />
                    <br />

                            <asp:Label ID="Label1" runat="server" Text="Choose_destination"></asp:Label>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="destErrLbl" runat="server" ForeColor="#FF3300" Text="* field required" Visible="False"></asp:Label>
                            

                            <br />

                            <asp:DropDownList ID="DropDownList1" runat="server" class="form-control">
                                <asp:ListItem></asp:ListItem>
                                <asp:ListItem>SOSH SOUTH TO ARCADIA</asp:ListItem>
                                <asp:ListItem>SOSH SOUTH TO PTA WEST</asp:ListItem>
                                <asp:ListItem>SOSH SOUTH TO GA-RANKUWA</asp:ListItem>
                            </asp:DropDownList>
                            

                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br /><!--space -->
                    <asp:Label ID="Label2" runat="server" Text="Travel Time"></asp:Label>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="timeErrLbl" runat="server" ForeColor="#FF3300" Text="* field required" Visible="False"></asp:Label>

                            <br />

                            <asp:DropDownList ID="DropDownList2" runat="server" class="form-control">
                                <asp:ListItem></asp:ListItem>
                                <asp:ListItem>07:00</asp:ListItem>
                                <asp:ListItem>08:00</asp:ListItem>
                                <asp:ListItem>09:00</asp:ListItem>
                                <asp:ListItem>10:00</asp:ListItem>
                                <asp:ListItem>12:00</asp:ListItem>
                                <asp:ListItem>13:00</asp:ListItem>
                                <asp:ListItem>14:00</asp:ListItem>
                                <asp:ListItem>15:00</asp:ListItem>
                                <asp:ListItem>16:00</asp:ListItem>
                                <asp:ListItem>17:00</asp:ListItem>
                                <asp:ListItem>18:00</asp:ListItem>
                                <asp:ListItem>19:00</asp:ListItem>
                                <asp:ListItem>20:00</asp:ListItem>
                                <asp:ListItem>21:00</asp:ListItem>
                            </asp:DropDownList>

                    &nbsp;
                    <br />
                    <asp:Label ID="Label3" runat="server" Text="Confirm Student Number"></asp:Label>
                    &nbsp;<asp:Label ID="studNoErrlbl" runat="server" ForeColor="#FF3300" Text="* field required" Visible="False"></asp:Label>
                    <br />
                    <asp:TextBox ID="studentNoTxtbox" type ="number" runat="server" class="form-control"></asp:TextBox>
                    <br />
                    <asp:Label ID="Label4" runat="server" class="form-control" Text="Note! Booking a seat 30 minutes before depature time will ensure that your seat is secured, failure to do so puts you at risk of waiting for a bus to secure your seat on the time of departure which can take up to 25 minutes" Font-Size="Small"></asp:Label>

                    <asp:Label ID="iAckErrLbl" runat="server" ForeColor="Red" Text="* field required" Visible="False"></asp:Label>
                    <br />
                    <asp:CheckBox ID="CheckBox1" runat="server" Text="   I Acknowledge" class="form-control" />
                    <br />
                    <asp:Button ID="Button1" runat="server" Text="Book a seat" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="successlbl" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="#33CC33" Text="Success!!!" Visible="False"></asp:Label>
                    <br />

                </td>
                <td class="auto-style2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Bus Status:<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label6" runat="server" Text="Select Time and Destination to check the status"></asp:Label>
                    <br />
                    <br />
                    Destination
                    <asp:DropDownList ID="DropDownList3" runat="server" class="form-control">
                        <asp:ListItem></asp:ListItem>
                                <asp:ListItem>SOSH SOUTH TO ARCADIA</asp:ListItem>
                                <asp:ListItem>SOSH SOUTH TO PTA WEST</asp:ListItem>
                                <asp:ListItem>SOSH SOUTH TO GA-RANKUWA</asp:ListItem>
                    </asp:DropDownList>

                    <br />
                    Time&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:DropDownList ID="DropDownList4" runat="server" class="form-control">
                        <asp:ListItem></asp:ListItem>
                                <asp:ListItem>07:00</asp:ListItem>
                                <asp:ListItem>08:00</asp:ListItem>
                                <asp:ListItem>09:00</asp:ListItem>
                                <asp:ListItem>10:00</asp:ListItem>
                                <asp:ListItem>12:00</asp:ListItem>
                                <asp:ListItem>13:00</asp:ListItem>
                                <asp:ListItem>14:00</asp:ListItem>
                                <asp:ListItem>15:00</asp:ListItem>
                                <asp:ListItem>16:00</asp:ListItem>
                                <asp:ListItem>17:00</asp:ListItem>
                                <asp:ListItem>18:00</asp:ListItem>
                                <asp:ListItem>19:00</asp:ListItem>
                                <asp:ListItem>20:00</asp:ListItem>
                                <asp:ListItem>21:00</asp:ListItem>
                    </asp:DropDownList>

                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="buserrlbl" runat="server" ForeColor="#FF3300" Text="* field required" Visible="False"></asp:Label>
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label5" runat="server" Text="Number of busese available:"></asp:Label>

                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="numBuslbl" runat="server" Text="Label"></asp:Label>

                    <br />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label7" runat="server" Text="Number of passangers:"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="numPasslbl" runat="server" Text="Label"></asp:Label>
                    <br />
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label8" runat="server" Text="Number of seats:"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="numSeatlbl" runat="server" Text="Label"></asp:Label>
                    <br />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label9" runat="server" Text="Available seats:"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="avSeatlbl" runat="server" Text="Label"></asp:Label>
                    <br />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button2" runat="server" Text="Bus Status" />
                    <br /></td>
            </tr>

        </table>



        </div>


    </form>
</body>
</html>