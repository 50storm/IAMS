<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="IAMS_makeMeeting.aspx.cs" Inherits="IAMS.IAMS_makeMeeting" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<link href="css/Validation.css" rel="stylesheet" type="text/css" />
<style>
    .itp_td{
        background-color:#1C5E55;color:White;width:120px;
    }
    .etl_td
    {
    	background-color:#CC5E55;color:White; width:150px;
    	}
    .style1
    {
        width: 160px;
    }
    .style2
    {
        background-color: #CC5E55;
        color: White;
        width: 162px;
    }
</style>

<script language="javascript">
    function msgConfirm() {
        if (!confirm("OK?")) {
            return false;
        }
    }
    function validatePlace(source, args) {
        if (args.Value.length == 0) {
            args.IsValid = false;
 
            obj = document.getElementById('fvMeetingMain_txtPlace');
            //obj.style.backgroundColor = "Pink";
            obj.style.backgroundColor = "lime";

            
        return false;
        } else {
            args.IsValid = true;
        }

    }
</script>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div id="Header">
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
    </div>
    <div>
        <asp:FormView ID="fvMeetingMain" runat="server"  Width="242px"   
            DataKeyNames="MeetingID" DataSourceID="sdsMeetingMain" AllowPaging="True" 
             >
            <EmptyDataTemplate>
                登録がありません。
            </EmptyDataTemplate>
            <HeaderTemplate>
                <asp:Label ID="Label2" runat="server" Text="会議管理画面"></asp:Label>
            </HeaderTemplate>
            <EditItemTemplate>
                <table border="1px"  width="400"> 
                    <tbody>
                        <tr>
                            <td class="style2">
                                ID:
                            </td>
                            <td class="style1">
                                <asp:Label ID="MeetingIDLabel1" runat="server"  Text='<%# Eval("MeetingID") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td class="style2">
                                会議名:             
                            </td>
                            <td class="style1">
                               <asp:TextBox ID="txtName" runat="server" Text='<%# Bind("Name") %>' />
                                <asp:RequiredFieldValidator ID="rfvNameTextBox" runat="server" 
                                    ErrorMessage="*会議名は必須" ControlToValidate="txtName" CssClass="Invalid">*</asp:RequiredFieldValidator>

                           </td>
                        </tr>
                        <tr>
                            <td class="style2">
                                年-月-日:
                            </td>
                            <td class="style1">
                                <asp:TextBox ID="txtYear" runat="server"  Text='<%# Bind("DateYear") %>' 
                                    Width="50" ControlToValidate="DateYearTextBox" />
                                -
                                <asp:TextBox ID="txtMonth" runat="server"  Text='<%# Bind("DateMonth") %>' 
                                    Width="20" />
                                -
                                <asp:TextBox ID="txtDay" runat="server" Text='<%# Bind("DateDay") %>' 
                                    Width="20" />

                                <asp:RequiredFieldValidator ID="rfvDateYearTextBox" runat="server"  
                                    ControlToValidate="txtYear"  ErrorMessage="*年は必須です。" CssClass="Invalid"  
                                    Text="*"></asp:RequiredFieldValidator>
                                <asp:RequiredFieldValidator ID="rfvDateMonthTextBox" runat="server"  
                                    ControlToValidate="txtMonth"  ErrorMessage="*月は必須です。" CssClass="Invalid"  
                                    Text="*"></asp:RequiredFieldValidator>
                                <asp:RequiredFieldValidator ID="rfvDateDayTextBox" runat="server"  
                                    ControlToValidate="txtDay"  ErrorMessage="*日は必須です。" CssClass="Invalid"  
                                    Text="*"></asp:RequiredFieldValidator>

                                <asp:RegularExpressionValidator ID="revDateYearTextBox" runat="server" Text="*" CssClass="Invalid"  
                                    ErrorMessage="*0000～9999" ControlToValidate="txtYear" 
                                    ValidationExpression="\d{4}"></asp:RegularExpressionValidator>

                            </td>
                        </tr>
                        <tr>
                            <td class="style2">
                                場所：
                            </td>
                            <td class="style1">
                                <asp:TextBox ID="txtPlace" runat="server" Text='<%# Bind("Place") %>' />
                                <asp:CustomValidator ID="CustomValidator1" runat="server" 
                                    ErrorMessage="CustomValidator" ControlToValidate="txtPlace" 
                                    onservervalidate="CustomValidator1_ServerValidate" 
                                    ValidateEmptyText="True" ClientValidationFunction="validatePlace"></asp:CustomValidator>    
                        </td>
                        </tr>
                        
                        <tr>
                            <td class="style2">
                                開始時刻：
                            </td>
                            <td class="style1">
                                <asp:TextBox ID="txtStartHH" runat="server" Text='<%# Bind("StartHH") %>' 
                                    Width="20" />:                
                                <asp:TextBox ID="txtStartMM" runat="server" Text='<%# Bind("StartMM") %>' 
                                    Width="20" />                
                               
                            </td>
                    </tr>

                    <tr>
                        <td class="style2">
                            終了時刻：
                        </td>
                        <td class="style1">
                            <asp:TextBox ID="txtEndHH" runat="server" Text='<%# Bind("EndHH") %>' 
                                Width="20" />
                            :
                            <asp:TextBox ID="txtEndMM" runat="server" Text='<%# Bind("EndMM") %>' 
                                Width="20" />
                        </td>
                    </tr>
                    <tr>
                        <td class="style2">
                            コメント：
                        </td>
                        <td class="style1">
                            <asp:TextBox ID="txtComment" runat="server" Text='<%# Bind("Comment") %>' 
                                TextMode="MultiLine" />
                        </td>
                    </tr>
                    </tbody>
                </table>
                    <asp:ValidationSummary ID="vsEdit" runat="server" CssClass="Invalid"  />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True"   
                    CommandName="Update" Text="更新" onclientclick="return msgConfirm();" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server"  CausesValidation="False" CommandName="Cancel" Text="キャンセル" />
            </EditItemTemplate>
            <InsertItemTemplate>
                <table border="1px"  width="300"> 
                    <tbody>
                        <tr>
                            <td class="style2">
                                会議名:             
                            </td>
                            <td class="style1">
                               <asp:TextBox ID="txtName" runat="server" Text='<%# Bind("Name") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td class="style2">
                                年-月-日:
                            </td>
                            <td class="style1">
                                <asp:TextBox ID="txtDateYear" runat="server"  Text='<%# Bind("DateYear") %>' Width="50" />
                                -
                                <asp:TextBox ID="txtDateMonth" runat="server"  Text='<%# Bind("DateMonth") %>' Width="20" />
                                -
                                <asp:TextBox ID="txtDateDay" runat="server" Text='<%# Bind("DateDay") %>' Width="20" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style2">
                                場所：
                            </td>
                            <td class="style1">
                                <asp:TextBox ID="txtPlace" runat="server" Text='<%# Bind("Place") %>' />
                            </td>
                        </tr>
                        
                        <tr>
                            <td class="style2">
                                開始時刻：
                            </td>
                            <td class="style1">
                                <asp:TextBox ID="txtStartHH" runat="server" Text='<%# Bind("StartHH") %>' Width="20" />:                
                                <asp:TextBox ID="txtStartMM" runat="server" Text='<%# Bind("StartMM") %>' Width="20" />                
                            </td>
                    </tr>

                    <tr>
                        <td class="style2">
                            終了時刻：
                        </td>
                        <td class="style1">
                            <asp:TextBox ID="txtEndHH" runat="server" Text='<%# Bind("EndHH") %>' Width="20" />
                            :
                            <asp:TextBox ID="txtEndMM" runat="server" Text='<%# Bind("EndMM") %>' Width="20" />
                        </td>
                    </tr>
                    <tr>
                        <td class="style2">
                            コメント：
                        </td>
                        <td class="style1">
                            <asp:TextBox ID="txtComment" runat="server" Text='<%# Bind("Comment") %>' TextMode="MultiLine" />
                        </td>
                    </tr>
                    </tbody>
                </table>           
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                    CommandName="Insert" Text="挿入" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                    CausesValidation="False" CommandName="Cancel" Text="キャンセル" />
            </InsertItemTemplate>
            <ItemTemplate>
                <table border="1px" > 
                    <tbody>
                        <tr>              
                            <td class="itp_td">
                                ID:
                            </td>
                            <td>
                                 <asp:Label ID="lblMeetingID" runat="server" Text='<%# Eval("MeetingID") %>' />
                            </td>
                        </tr>
                        <tr>              
                            <td class="itp_td">
                                会議名:             
                            </td>
                            <td>
                                <asp:Label ID="lblName" runat="server" Text='<%# Bind("Name") %>' />             
                            </td>
                        </tr>
                        <tr>
                            <td class="itp_td">
                                年-月-日:
                            </td>
                            <td>
                                <asp:Label ID="DateYearLabel" runat="server" Text='<%# Bind("DateYear") %>' />
                                -
                                <asp:Label ID="DateMonthLabel" runat="server" Text='<%# Bind("DateMonth") %>' />
                                -
                                <asp:Label ID="DateDayLabel" runat="server" Text='<%# Bind("DateDay") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td class="itp_td">
                                場所：
                            </td>
                            <td>
                                <asp:Label ID="PlaceLabel" runat="server" Text='<%# Bind("Place") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td class="itp_td">
                                開始時刻：
                            </td>
                            <td>
                                <asp:Label ID="StartHHLabel" runat="server" Text='<%# Bind("StartHH") %>' />
                                :
                                <asp:Label ID="StartMMLabel" runat="server" Text='<%# Bind("StartMM") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td class="itp_td">
                                終了時刻：
                            </td>
                            <td>
                                <asp:Label ID="EndHHLabel" runat="server" Text='<%# Bind("EndHH") %>' />
                                :
                                <asp:Label ID="EndMMLabel" runat="server" Text='<%# Bind("EndMM") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td class="itp_td">
                                コメント：
                            </td>
                            <td>
                                <asp:Label ID="CommentLabel" runat="server" Text='<%# Bind("Comment") %>' />
                            </td>
                        </tr>
                    </tbody>
                </table>
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
                <br />
                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" 
                    CommandName="Edit" Text="編集" />
                &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" 
                    CommandName="Delete" Text="削除" onclientclick="return msgConfirm();" />
                &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" 
                    CommandName="New" Text="新規作成" />
            </ItemTemplate>
        </asp:FormView>

        <asp:SqlDataSource ID="sdsMeetingMain" runat="server" 
            ConflictDetection="CompareAllValues" 
            ConnectionString="<%$ ConnectionStrings:IAMSConnectionString %>" 
            DeleteCommand="DELETE FROM [MeetingMain] WHERE [MeetingID] = @original_MeetingID AND (([Name] = @original_Name) OR ([Name] IS NULL AND @original_Name IS NULL)) AND (([DateYear] = @original_DateYear) OR ([DateYear] IS NULL AND @original_DateYear IS NULL)) AND (([DateMonth] = @original_DateMonth) OR ([DateMonth] IS NULL AND @original_DateMonth IS NULL)) AND (([DateDay] = @original_DateDay) OR ([DateDay] IS NULL AND @original_DateDay IS NULL)) AND (([Place] = @original_Place) OR ([Place] IS NULL AND @original_Place IS NULL)) AND (([StartHH] = @original_StartHH) OR ([StartHH] IS NULL AND @original_StartHH IS NULL)) AND (([StartMM] = @original_StartMM) OR ([StartMM] IS NULL AND @original_StartMM IS NULL)) AND (([EndHH] = @original_EndHH) OR ([EndHH] IS NULL AND @original_EndHH IS NULL)) AND (([EndMM] = @original_EndMM) OR ([EndMM] IS NULL AND @original_EndMM IS NULL)) AND (([Comment] = @original_Comment) OR ([Comment] IS NULL AND @original_Comment IS NULL))" 
            InsertCommand="INSERT INTO [MeetingMain] ([Name], [DateYear], [DateMonth], [DateDay], [Place], [StartHH], [StartMM], [EndHH], [EndMM], [Comment]) VALUES (@Name, @DateYear, @DateMonth, @DateDay, @Place, @StartHH, @StartMM, @EndHH, @EndMM, @Comment)" 
            OldValuesParameterFormatString="original_{0}" 
            SelectCommand="SELECT * FROM [MeetingMain]" 
            
            UpdateCommand="UPDATE [MeetingMain] SET [Name] = @Name, [DateYear] = @DateYear, [DateMonth] = @DateMonth, [DateDay] = @DateDay, [Place] = @Place, [StartHH] = @StartHH, [StartMM] = @StartMM, [EndHH] = @EndHH, [EndMM] = @EndMM, [Comment] = @Comment WHERE [MeetingID] = @original_MeetingID AND (([Name] = @original_Name) OR ([Name] IS NULL AND @original_Name IS NULL)) AND (([DateYear] = @original_DateYear) OR ([DateYear] IS NULL AND @original_DateYear IS NULL)) AND (([DateMonth] = @original_DateMonth) OR ([DateMonth] IS NULL AND @original_DateMonth IS NULL)) AND (([DateDay] = @original_DateDay) OR ([DateDay] IS NULL AND @original_DateDay IS NULL)) AND (([Place] = @original_Place) OR ([Place] IS NULL AND @original_Place IS NULL)) AND (([StartHH] = @original_StartHH) OR ([StartHH] IS NULL AND @original_StartHH IS NULL)) AND (([StartMM] = @original_StartMM) OR ([StartMM] IS NULL AND @original_StartMM IS NULL)) AND (([EndHH] = @original_EndHH) OR ([EndHH] IS NULL AND @original_EndHH IS NULL)) AND (([EndMM] = @original_EndMM) OR ([EndMM] IS NULL AND @original_EndMM IS NULL)) AND (([Comment] = @original_Comment) OR ([Comment] IS NULL AND @original_Comment IS NULL))" 
            onupdating="sdsMeetingMain_Updating">
            <DeleteParameters>
                <asp:Parameter Name="original_MeetingID" Type="Int32" />
                <asp:Parameter Name="original_Name" Type="String" />
                <asp:Parameter Name="original_DateYear" Type="Int32" />
                <asp:Parameter Name="original_DateMonth" Type="Int32" />
                <asp:Parameter Name="original_DateDay" Type="Int32" />
                <asp:Parameter Name="original_Place" Type="String" />
                <asp:Parameter Name="original_StartHH" Type="Int32" />
                <asp:Parameter Name="original_StartMM" Type="Int32" />
                <asp:Parameter Name="original_EndHH" Type="Int32" />
                <asp:Parameter Name="original_EndMM" Type="String" />
                <asp:Parameter Name="original_Comment" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="DateYear" Type="Int32" />
                <asp:Parameter Name="DateMonth" Type="Int32" />
                <asp:Parameter Name="DateDay" Type="Int32" />
                <asp:Parameter Name="Place" Type="String" />
                <asp:Parameter Name="StartHH" Type="Int32" />
                <asp:Parameter Name="StartMM" Type="Int32" />
                <asp:Parameter Name="EndHH" Type="Int32" />
                <asp:Parameter Name="EndMM" Type="String" />
                <asp:Parameter Name="Comment" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="DateYear" Type="Int32" />
                <asp:Parameter Name="DateMonth" Type="Int32" />
                <asp:Parameter Name="DateDay" Type="Int32" />
                <asp:Parameter Name="Place" Type="String" />
                <asp:Parameter Name="StartHH" Type="Int32" />
                <asp:Parameter Name="StartMM" Type="Int32" />
                <asp:Parameter Name="EndHH" Type="Int32" />
                <asp:Parameter Name="EndMM" Type="String" />
                <asp:Parameter Name="Comment" Type="String" />
                <asp:Parameter Name="original_MeetingID" Type="Int32" />
                <asp:Parameter Name="original_Name" Type="String" />
                <asp:Parameter Name="original_DateYear" Type="Int32" />
                <asp:Parameter Name="original_DateMonth" Type="Int32" />
                <asp:Parameter Name="original_DateDay" Type="Int32" />
                <asp:Parameter Name="original_Place" Type="String" />
                <asp:Parameter Name="original_StartHH" Type="Int32" />
                <asp:Parameter Name="original_StartMM" Type="Int32" />
                <asp:Parameter Name="original_EndHH" Type="Int32" />
                <asp:Parameter Name="original_EndMM" Type="String" />
                <asp:Parameter Name="original_Comment" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>

        
    </div>
    <hr/>   
    <div>

    </div>
    <div>
<asp:DetailsView ID="dvMeetingSub" runat="server" Height="50px" Width="310px" 
            AllowPaging="True" DataSourceID="sdsMeetingSub" AutoGenerateRows="False" 
            DataKeyNames="MeetingID,SubID" CellPadding="4" ForeColor="#333333" 
            GridLines="None">
    <AlternatingRowStyle BackColor="White" />
    <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
    <EditRowStyle BackColor="#2461BF" />
    <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
    <Fields>
        <asp:BoundField DataField="MeetingID" HeaderText="MeetingID"  
            SortExpression="MeetingID" />
        <asp:BoundField DataField="SubID" HeaderText="SubID" 
            SortExpression="SubID" />
        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
        <asp:BoundField DataField="OkName" HeaderText="OkName" 
            SortExpression="OkName" />
        <asp:BoundField DataField="NgName" HeaderText="NgName" 
            SortExpression="NgName" />
        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
            ShowInsertButton="True" />
    </Fields>
    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
    <RowStyle BackColor="#EFF3FB" />
</asp:DetailsView>
        <asp:SqlDataSource ID="sdsMeetingSub" runat="server" 
            ConflictDetection="CompareAllValues" 
            ConnectionString="<%$ ConnectionStrings:IAMSConnectionString %>" 
            DeleteCommand="DELETE FROM [MeetingSub] WHERE [MeetingID] = @original_MeetingID AND [SubID] = @original_SubID AND (([Name] = @original_Name) OR ([Name] IS NULL AND @original_Name IS NULL)) AND (([OkName] = @original_OkName) OR ([OkName] IS NULL AND @original_OkName IS NULL)) AND (([NgName] = @original_NgName) OR ([NgName] IS NULL AND @original_NgName IS NULL))" 
            InsertCommand="INSERT INTO [MeetingSub] ([MeetingID], [SubID], [Name], [OkName], [NgName]) VALUES (@MeetingID, @SubID, @Name, @OkName, @NgName)" 
            OldValuesParameterFormatString="original_{0}" 
            SelectCommand="SELECT * FROM [MeetingSub]" 
            UpdateCommand="UPDATE [MeetingSub] SET [Name] = @Name, [OkName] = @OkName, [NgName] = @NgName WHERE [MeetingID] = @original_MeetingID AND [SubID] = @original_SubID AND (([Name] = @original_Name) OR ([Name] IS NULL AND @original_Name IS NULL)) AND (([OkName] = @original_OkName) OR ([OkName] IS NULL AND @original_OkName IS NULL)) AND (([NgName] = @original_NgName) OR ([NgName] IS NULL AND @original_NgName IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_MeetingID" Type="Int32" />
                <asp:Parameter Name="original_SubID" Type="Int32" />
                <asp:Parameter Name="original_Name" Type="String" />
                <asp:Parameter Name="original_OkName" Type="String" />
                <asp:Parameter Name="original_NgName" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="MeetingID" Type="Int32" />
                <asp:Parameter Name="SubID" Type="Int32" />
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="OkName" Type="String" />
                <asp:Parameter Name="NgName" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="OkName" Type="String" />
                <asp:Parameter Name="NgName" Type="String" />
                <asp:Parameter Name="original_MeetingID" Type="Int32" />
                <asp:Parameter Name="original_SubID" Type="Int32" />
                <asp:Parameter Name="original_Name" Type="String" />
                <asp:Parameter Name="original_OkName" Type="String" />
                <asp:Parameter Name="original_NgName" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>

    <div>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Text="Button" onclick="Button1_Click" />
    </div>
</form>
</body>
</html>