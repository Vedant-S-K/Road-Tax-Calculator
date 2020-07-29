<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Car.aspx.cs" Inherits="RoadTaxCalculator.Car" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8"/>
    <link rel="stylesheet" href="Cstye.css"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Road Tax Calculator</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div class="car_card">
            <label class="label1">Road Tax Calculator</label>
            <div class="toggle">
                <asp:Button ID="CarBtn" Cssclass="CarBtn" runat="server" Text="Car" OnClick="CarBtn_Click" />
                <asp:Button ID="BikeBtn" CssClass="BikeBtn" runat="server" Text="Bike" OnClick="BikeBtn_Click" />
            </div>
            <div class="Car">
               <label class="label2">Registration Date</label>
               <br />
               <asp:TextBox ID="RegDate" runat="server" TextMode="Date" CssClass="Date"></asp:TextBox>
               <br />
               <label class="label3">Price</label>
               <br />
               <asp:TextBox ID="Price" runat="server" CssClass="Price" TextMode="Number"></asp:TextBox>
               <br />
               <label class="label4">Fuel Type</label>
               <br />
               <asp:DropDownList ID="DropDownList1" runat="server" CssClass="Drop1">
                   <asp:ListItem Value="1">Petrol</asp:ListItem>
                   <asp:ListItem Value="2">CNG</asp:ListItem>
                   <asp:ListItem Value="3">Diesel</asp:ListItem>
                </asp:DropDownList>
               <br />
               <label class="label5">User Type</label>
               <br />
               <asp:DropDownList ID="DropDownList2" runat="server" CssClass="Drop2">
                   <asp:ListItem Value="1" >Personal</asp:ListItem>
                   <asp:ListItem Value="2" >Commercial</asp:ListItem>
                </asp:DropDownList>
               <br />
                <label class="label7">Calculated Road Tax &#8659;</label>
               <br />
                <asp:TextBox ID="CalTax" runat="server" CssClass="CalTax"></asp:TextBox>
               <br />
                <asp:Button ID="TaxBtn" runat="server" Text="Get Road Tax" CssClass="TaxBtn" OnClick="TaxBtn_Click" />
            </div>
        </div>
    </div>
    </form>
</body>
</html>
