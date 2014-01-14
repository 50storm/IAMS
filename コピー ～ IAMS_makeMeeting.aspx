<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="IAMS_makeMeeting.aspx.cs" Inherits="IAMS.IAMS_makeMeeting" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div id="Header">
        <h1><asp:Label ID="Label1" runat="server" Text="会議管理画面"></asp:Label></h1>
    </div>
        <div　id="MeetingMain">
<asp:Panel ID="PanelMain" runat="server" BackColor="Silver" BorderWidth="1px" 
        Width="300px">
            <table>
                <tr>
                    <td>
                        <asp:Label ID="lblID" runat="server" Text="ID" BackColor="Silver" Width="100px"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtID" runat="server" MaxLength="5">99999</asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblMeetingName" runat="server" Text="会議名" BackColor="Silver" 
                            Width="100px"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtMeetingName" runat="server" MaxLength="30">ＸＸＸＸ会議</asp:TextBox>
                    </td>
                </tr>
                <tr>
                	<td>
                        <asp:Label ID="Label2" runat="server" Text="年月日" BackColor="Silver" 
                            Width="100px"></asp:Label>
                	</td>
                	<td>
                        <asp:TextBox ID="TextBox1" runat="server" MaxLength="4" Width="50px">2014</asp:TextBox>
                        <asp:Label ID="Label6" runat="server" Text="-"></asp:Label>
                        <asp:TextBox ID="TextBox3" runat="server" MaxLength="2" Width="30px">12</asp:TextBox>
                        <asp:Label ID="Label7" runat="server" Text="-"></asp:Label>
                        <asp:TextBox ID="TextBox4" runat="server" MaxLength="2" Width="30px">12</asp:TextBox>
                	</td>
                </tr>
                <tr>
                	<td>
                        <asp:Label ID="Label3" runat="server" Text="場所" BackColor="Silver" 
                            Width="100px"></asp:Label>
                	</td>
                	<td>
                        <asp:TextBox ID="TextBox2" runat="server" MaxLength="30">ＡＢＣ会議室</asp:TextBox>
                	</td>
                </tr>
                <tr>
                	<td>
                        <asp:Label ID="Label4" runat="server" Text="開始時間" BackColor="Silver" 
                            Width="100px"></asp:Label>
                        
                	</td>
                	<td>
                        <asp:TextBox ID="TextBox5" runat="server" Width="30px"></asp:TextBox>
                        <asp:Label ID="Label8" runat="server" Text="-"></asp:Label>
                        <asp:TextBox ID="TextBox6" runat="server" Width="30px"></asp:TextBox>
                	</td>
                </tr>
                <tr>
                	<td>
                        <asp:Label ID="Label5" runat="server" Text="終了時間" BackColor="Silver" 
                            Width="100px"></asp:Label>
                	</td>
                	<td>
                        <asp:TextBox ID="TextBox7" runat="server" Width="30px"></asp:TextBox>
                        <asp:Label ID="Label9" runat="server" Text="-"></asp:Label>
                        <asp:TextBox ID="TextBox8" runat="server" Width="30px"></asp:TextBox>
                	</td>
                </tr>
                <tr>
	                <td>
                        <asp:Label ID="Label10" runat="server" Text="コメント" BackColor="Silver" 
                            Width="100px"></asp:Label>
	                </td>
	                <td>
                        <asp:TextBox ID="TextBox9" runat="server"　 TextMode="MultiLine"></asp:TextBox>
	                </td>
                </tr>
            </table>
</asp:Panel>

        </div>
        <br/>
<asp:Panel ID="PanelSub" runat="server" BackColor="#CCCCCC" Width="500px">
            <asp:CheckBox ID="CheckBox1" runat="server" />
            <table>
                <tr>
                	<td>
                        <asp:Label ID="Label11" runat="server" Text="サブイベント" BackColor="Silver"></asp:Label>
                	</td>
                	<td>
                        <asp:Label ID="Label12" runat="server" Text="〇" BackColor="Silver"></asp:Label>
                	</td>
                	<td>
                        <asp:Label ID="Label13" runat="server" Text="×" BackColor="Silver"></asp:Label>
                	</td>
                </tr>
                <tr>
                	<td>
                        <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
                	</td>
                	<td>
                        <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
                	</td>
                	<td>
                        <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox>
                	</td>
                </tr>
                <tr>
                	<td>
                        <asp:TextBox ID="TextBox13" runat="server"></asp:TextBox>
                	</td>
                	<td>
                        <asp:TextBox ID="TextBox14" runat="server"></asp:TextBox>
                	</td>
                	<td>
                        <asp:TextBox ID="TextBox15" runat="server"></asp:TextBox>
                	</td>
                </tr>
                <tr>
                	<td>
                        <asp:TextBox ID="TextBox16" runat="server"></asp:TextBox>
                	</td>
                	<td>
                        <asp:TextBox ID="TextBox17" runat="server"></asp:TextBox>
                	</td>
                	<td>
                        <asp:TextBox ID="TextBox18" runat="server"></asp:TextBox>
                	</td>
                </tr>
                <tr>
                	<td>
                        <asp:TextBox ID="TextBox19" runat="server"></asp:TextBox>
                	</td>
                	<td>
                        <asp:TextBox ID="TextBox20" runat="server"></asp:TextBox>
                	</td>
                	<td>
                        <asp:TextBox ID="TextBox21" runat="server"></asp:TextBox>
                	</td>
                </tr>
                <tr>
                	<td>
                        <asp:TextBox ID="TextBox22" runat="server"></asp:TextBox>
                	</td>
                	<td>
                        <asp:TextBox ID="TextBox23" runat="server"></asp:TextBox>
                	</td>
                	<td>
                        <asp:TextBox ID="TextBox24" runat="server"></asp:TextBox>
                	</td>
                </tr>
            </table>

</asp:Panel>
        <div>
        </div>
        <div>
            <asp:Button ID="btnInsert" runat="server" Text="登録" onclick="btnInsert_Click" />
        </div>
    <asp:SqlDataSource ID="sdsMeetingMain" runat="server" 
        ConnectionString="<%$ ConnectionStrings:IAMSConnectionString %>" 
        oninserting="sdsMeetingMain_Inserting" 
        SelectCommand="SELECT * FROM [MeetingMain]"></asp:SqlDataSource>
    </form>
</body>
</html>
