<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="IAMS_InputForm.aspx.cs" Inherits="IAMS.IAMS_InputForm" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Menu ID="Menu1" runat="server" DataSourceID="SiteMapDataSource1" 
            BackColor="#FFFBD6" DynamicHorizontalOffset="2" Font-Names="Verdana" 
            Font-Size="0.8em" ForeColor="#990000" StaticSubMenuIndent="10px">
            <DynamicHoverStyle BackColor="#990000" ForeColor="White" />
            <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
            <DynamicMenuStyle BackColor="#FFFBD6" />
            <DynamicSelectedStyle BackColor="#FFCC66" />
            <StaticHoverStyle BackColor="#990000" ForeColor="White" />
            <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
            <StaticSelectedStyle BackColor="#FFCC66" />
        </asp:Menu>
        <asp:SiteMapDataSource ID="SiteMapDataSource1" runat="server" />
<asp:Label ID="Label1" runat="server" Text="出欠確認画面"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><asp:Button ID="Button1"
runat="server" Text="Button" />
    <div>
<asp:FormView ID="FormView1" runat="server">
</asp:FormView>
<asp:SqlDataSource ID="sdsMeeting" runat="server" 
                ConnectionString="<%$ ConnectionStrings:IAMSConnectionString %>" 
                
            SelectCommand="SELECT * FROM [MeetingMain]">
            </asp:SqlDataSource>

    </div>
    </form>
</body>
</html>
