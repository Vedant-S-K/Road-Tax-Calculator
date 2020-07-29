<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Bike.aspx.cs" Inherits="RoadTaxCalculator.Bike" %>

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
        <div class="bike_card">
            <label class="label1">Road Tax Calculator</label>
            <div class="toggle">
                <asp:Button ID="CarBtn" Cssclass="CarBtn" runat="server" Text="Car" OnClick="CarBtn_Click"  />
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
               <label class="label6">Bike CC</label>
               <br />
               <asp:TextBox ID="BikeCC" runat="server" CssClass="BikeCC" TextMode="Number" ></asp:TextBox>
               <br />
               <label class="label8">Calculated Road Tax &#8659;</label>
               <br />
               <asp:TextBox ID="CalBTax" runat="server" CssClass="CalBTax"></asp:TextBox>
               <br />
               <asp:Button ID="TaxBtn2" runat="server" Text="Get Road Tax" CssClass="TaxBtn2" OnClick="TaxBtn2_Click" />
            </div>
        </div>
    </div>
    </form>
</body>
</html>
