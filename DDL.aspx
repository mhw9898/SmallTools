<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ddl.aspx.cs" Inherits="mhw.ddl" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/chosen/1.8.7/chosen.jquery.min.js"></script>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/chosen/1.8.7/chosen.min.css" rel="stylesheet" />   
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:DropDownList ID="DropDownList1" CssClass="da" runat="server"></asp:DropDownList>
        <asp:DropDownList ID="ddl1" CssClass="d" runat="server" Width="300px">
            <asp:ListItem Selected="True">اختر</asp:ListItem>
            <asp:ListItem>1</asp:ListItem>
            <asp:ListItem>2</asp:ListItem>
            <asp:ListItem>3</asp:ListItem>
            <asp:ListItem>4</asp:ListItem>
        </asp:DropDownList>
    </div>
    </form>
    <script>
        $('#<% =ddl1.ClientID %>').chosen();
    </script>
    <style>
    .da{
        color:#ff0000;
        margin-top:40px;
        padding:50px;
    }

</style> 
</body>
</html>
