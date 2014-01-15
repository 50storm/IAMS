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
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div id="Header">
        <h1><asp:Label ID="Label1" runat="server" Text="会議出欠確認システム(サンプル)"></asp:Label></h1>
    </div>
    <div>
        <asp:FormView ID="fvMeetingMain" runat="server"  Width="242px"   
            DataKeyNames="MeetingID" DataSourceID="sdsMeetingMain" AllowPaging="True" 
             >
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
                               <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                            </td>
                            <td>
                                <asp:RequiredFieldValidator ID="rfvNameTextBox" runat="server" 
                                    ErrorMessage="*会議名は必須" ControlToValidate="NameTextBox" CssClass="Invalid">*</asp:RequiredFieldValidator>

                            </td>
                        </tr>
                        <tr>
                            <td class="style2">
                                年-月-日:
                            </td>
                            <td class="style1">
                                <asp:TextBox ID="DateYearTextBox" runat="server"  Text='<%# Bind("DateYear") %>' Width="50" ControlToValidate="DateYearTextBox" />
                                -
                                <asp:TextBox ID="DateMonthTextBox" runat="server"  Text='<%# Bind("DateMonth") %>' Width="20" />
                                -
                                <asp:TextBox ID="DateDayTextBox" runat="server" Text='<%# Bind("DateDay") %>' Width="20" />
                            </td>
                            <td>
                                
                                <asp:RequiredFieldValidator ID="rfvDateYearTextBox" runat="server"  ControlToValidate="DateYearTextBox"  ErrorMessage="*年は必須です。" CssClass="Invalid"  Text="*年"></asp:RequiredFieldValidator>
                                <asp:RequiredFieldValidator ID="rfvDateMonthTextBox" runat="server"  ControlToValidate="DateYearTextBox"  ErrorMessage="*月は必須です。" CssClass="Invalid"  Text="*月"></asp:RequiredFieldValidator>
                                <asp:RequiredFieldValidator ID="rfvDateDayTextBox" runat="server"  ControlToValidate="DateYearTextBox"  ErrorMessage="*日は必須です。" CssClass="Invalid"  Text="*日"></asp:RequiredFieldValidator>

                                <asp:RegularExpressionValidator ID="revDateYearTextBox" runat="server" ErrorMessage="*0000～9999" ControlToValidate="DateYearTextBox" ValidationExpression="\d{4}"></asp:RegularExpressionValidator>

                            </td>
                        </tr>
                        <tr>
                            <td class="style2">
                                場所：
                            </td>
                            <td class="style1">
                                <asp:TextBox ID="PlaceTextBox" runat="server" Text='<%# Bind("Place") %>' />
                            </td>
                        </tr>
                        
                        <tr>
                            <td class="style2">
                                開始時刻：
                            </td>
                            <td class="style1">
                                <asp:TextBox ID="StartHHTextBox" runat="server" Text='<%# Bind("StartHH") %>' Width="20" />:                
                                <asp:TextBox ID="StartMMTextBox" runat="server" Text='<%# Bind("StartMM") %>' Width="20" />                
                            </td>
                    </tr>

                    <tr>
                        <td class="style2">
                            終了時刻：
                        </td>
                        <td class="style1">
                            <asp:TextBox ID="EndHHTextBox" runat="server" Text='<%# Bind("EndHH") %>' Width="20" />
                            :
                            <asp:TextBox ID="EndMMTextBox" runat="server" Text='<%# Bind("EndMM") %>' Width="20" />
                        </td>
                    </tr>
                    <tr>
                        <td class="style2">
                            コメント：
                        </td>
                        <td class="style1">
                            <asp:TextBox ID="CommentTextBox" runat="server" Text='<%# Bind("Comment") %>' TextMode="MultiLine" />
                        </td>
                    </tr>
                    </tbody>
                </table>
                    <asp:ValidationSummary ID="vsEdit" runat="server" CssClass="Invalid"  />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True"   CommandName="Update" Text="更新" />
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
                               <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td class="style2">
                                年-月-日:
                            </td>
                            <td class="style1">
                                <asp:TextBox ID="DateYearTextBox" runat="server"  Text='<%# Bind("DateYear") %>' Width="50" />
                                -
                                <asp:TextBox ID="DateMonthTextBox" runat="server"  Text='<%# Bind("DateMonth") %>' Width="20" />
                                -
                                <asp:TextBox ID="DateDayTextBox" runat="server" Text='<%# Bind("DateDay") %>' Width="20" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style2">
                                場所：
                            </td>
                            <td class="style1">
                                <asp:TextBox ID="PlaceTextBox" runat="server" Text='<%# Bind("Place") %>' />
                            </td>
                        </tr>
                        
                        <tr>
                            <td class="style2">
                                開始時刻：
                            </td>
                            <td class="style1">
                                <asp:TextBox ID="StartHHTextBox" runat="server" Text='<%# Bind("StartHH") %>' Width="20" />:                
                                <asp:TextBox ID="StartMMTextBox" runat="server" Text='<%# Bind("StartMM") %>' Width="20" />                
                            </td>
                    </tr>

                    <tr>
                        <td class="style2">
                            終了時刻：
                        </td>
                        <td class="style1">
                            <asp:TextBox ID="EndHHTextBox" runat="server" Text='<%# Bind("EndHH") %>' Width="20" />
                            :
                            <asp:TextBox ID="EndMMTextBox" runat="server" Text='<%# Bind("EndMM") %>' Width="20" />
                        </td>
                    </tr>
                    <tr>
                        <td class="style2">
                            コメント：
                        </td>
                        <td class="style1">
                            <asp:TextBox ID="CommentTextBox" runat="server" Text='<%# Bind("Comment") %>' TextMode="MultiLine" />
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
                                 <asp:Label ID="MeetingIDLabel" runat="server" Text='<%# Eval("MeetingID") %>' />
                            </td>
                        </tr>
                        <tr>              
                            <td class="itp_td">
                                会議名:             
                            </td>
                            <td>
                                <asp:Label ID="NameLabel" runat="server" Text='<%# Bind("Name") %>' />             
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
                    CommandName="Delete" Text="削除" />
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
        <asp:FormView ID="fvMeetingSub" runat="server" AllowPaging="True">
            <HeaderTemplate>
                <asp:Label ID="Label3" runat="server" Text="管理画面サブ"></asp:Label>
            </HeaderTemplate>
        </asp:FormView>
    </div>
</form>
</body>
</html>