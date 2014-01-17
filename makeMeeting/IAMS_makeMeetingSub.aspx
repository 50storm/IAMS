<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="IAMS_makeMeetingSub.aspx.cs" Inherits="IAMS.IAMS_makeMeetingSub" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<link href="css/Validation.css" rel="stylesheet" type="text/css" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server"><asp:Label ID="Label1" runat="server" Text="会議管理画面サブイベント"></asp:Label>
    <div id="Header">
        <h1></h1>
    </div>
    <div>
<asp:FormView ID="fvMeetingMain" runat="server" DataKeyNames="ID"  
            DataSourceID="sdsMeetingMain" AllowPaging="True" Width="242px">
    <EditItemTemplate>
        ID:
        <asp:Label ID="IDLabel1" runat="server" Text='<%# Eval("ID") %>' />
        <br />
        Name:
        <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
        <br />
        DateYear:
        <asp:TextBox ID="DateYearTextBox" runat="server" 
            Text='<%# Bind("DateYear") %>' />
        <br />
        DateMonth:
        <asp:TextBox ID="DateMonthTextBox" runat="server" 
            Text='<%# Bind("DateMonth") %>' />
        <br />
        DateDay:
        <asp:TextBox ID="DateDayTextBox" runat="server" Text='<%# Bind("DateDay") %>' />
        <br />
        Place:
        <asp:TextBox ID="PlaceTextBox" runat="server" Text='<%# Bind("Place") %>' />
        <br />
        StartHH:
        <asp:TextBox ID="StartHHTextBox" runat="server" Text='<%# Bind("StartHH") %>' />
        <br />
        StartMM:
        <asp:TextBox ID="StartMMTextBox" runat="server" Text='<%# Bind("StartMM") %>' />
        <br />
        EndHH:
        <asp:TextBox ID="EndHHTextBox" runat="server" Text='<%# Bind("EndHH") %>' />
        <br />
        EndMM:
        <asp:TextBox ID="EndMMTextBox" runat="server" Text='<%# Bind("EndMM") %>' />
        <br />
        Comment:
        <asp:TextBox ID="CommentTextBox" runat="server" Text='<%# Bind("Comment") %>' />
        <br />
        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
            CommandName="Update" Text="更新" />
        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
            CausesValidation="False" CommandName="Cancel" Text="キャンセル" />
    </EditItemTemplate>
    <HeaderTemplate>
        <asp:Label ID="Label2" runat="server" Text="会議管理画面サブ"></asp:Label>
    </HeaderTemplate>
    <InsertItemTemplate>
        Name:
        <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
        <asp:RequiredFieldValidator ID="rfvName" runat="server" 
            ControlToValidate="NameTextBox" ErrorMessage="*" CssClass="valid"></asp:RequiredFieldValidator>
        <br />
        DateYear:
        <asp:TextBox ID="DateYearTextBox" runat="server" 
            Text='<%# Bind("DateYear") %>' />
        <br />
        DateMonth:
        <asp:TextBox ID="DateMonthTextBox" runat="server" 
            Text='<%# Bind("DateMonth") %>' />
        <br />
        DateDay:
        <asp:TextBox ID="DateDayTextBox" runat="server" Text='<%# Bind("DateDay") %>' />
        <br />
        Place:
        <asp:TextBox ID="PlaceTextBox" runat="server" Text='<%# Bind("Place") %>' />
        <br />
        StartHH:
        <asp:TextBox ID="StartHHTextBox" runat="server" Text='<%# Bind("StartHH") %>' />
        <br />
        StartMM:
        <asp:TextBox ID="StartMMTextBox" runat="server" Text='<%# Bind("StartMM") %>' />
        <br />
        EndHH:
        <asp:TextBox ID="EndHHTextBox" runat="server" Text='<%# Bind("EndHH") %>' />
        <br />
        EndMM:
        <asp:TextBox ID="EndMMTextBox" runat="server" Text='<%# Bind("EndMM") %>' />
        <br />
        Comment:
        <asp:TextBox ID="CommentTextBox" runat="server" Text='<%# Bind("Comment") %>' />
        <br />
        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
            CommandName="Insert" Text="挿入" />
        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
            CausesValidation="False" CommandName="Cancel" Text="キャンセル" />
        
    </InsertItemTemplate>
    <ItemTemplate>
        ID:
        <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
        <br />
        Name:
        <asp:Label ID="NameLabel" runat="server" Text='<%# Bind("Name") %>' />
        <br />
        DateYear:
        <asp:Label ID="DateYearLabel" runat="server" Text='<%# Bind("DateYear") %>' />
        <br />
        DateMonth:
        <asp:Label ID="DateMonthLabel" runat="server" Text='<%# Bind("DateMonth") %>' />
        <br />
        DateDay:
        <asp:Label ID="DateDayLabel" runat="server" Text='<%# Bind("DateDay") %>' />
        <br />
        Place:
        <asp:Label ID="PlaceLabel" runat="server" Text='<%# Bind("Place") %>' />
        <br />
        StartHH:
        <asp:Label ID="StartHHLabel" runat="server" Text='<%# Bind("StartHH") %>' />
        <br />
        StartMM:
        <asp:Label ID="StartMMLabel" runat="server" Text='<%# Bind("StartMM") %>' />
        <br />
        EndHH:
        <asp:Label ID="EndHHLabel" runat="server" Text='<%# Bind("EndHH") %>' />
        <br />
        EndMM:
        <asp:Label ID="EndMMLabel" runat="server" Text='<%# Bind("EndMM") %>' />
        <br />
        Comment:
        <asp:Label ID="CommentLabel" runat="server" Text='<%# Bind("Comment") %>' />
        <br />
        <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" 
            CommandName="Edit" Text="編集" />
        &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" 
            CommandName="Delete" Text="削除" />
        &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" 
            CommandName="New" Text="新規作成" />
    </ItemTemplate>
</asp:FormView>

    </div>
    <asp:SqlDataSource ID="sdsMeetingMain" runat="server" 
        ConflictDetection="CompareAllValues" 
        ConnectionString="<%$ ConnectionStrings:IAMSConnectionString %>" 
        DeleteCommand="DELETE FROM [MeetingMain] WHERE [ID] = @original_ID AND (([Name] = @original_Name) OR ([Name] IS NULL AND @original_Name IS NULL)) AND (([DateYear] = @original_DateYear) OR ([DateYear] IS NULL AND @original_DateYear IS NULL)) AND (([DateMonth] = @original_DateMonth) OR ([DateMonth] IS NULL AND @original_DateMonth IS NULL)) AND (([DateDay] = @original_DateDay) OR ([DateDay] IS NULL AND @original_DateDay IS NULL)) AND (([Place] = @original_Place) OR ([Place] IS NULL AND @original_Place IS NULL)) AND (([StartHH] = @original_StartHH) OR ([StartHH] IS NULL AND @original_StartHH IS NULL)) AND (([StartMM] = @original_StartMM) OR ([StartMM] IS NULL AND @original_StartMM IS NULL)) AND (([EndHH] = @original_EndHH) OR ([EndHH] IS NULL AND @original_EndHH IS NULL)) AND (([EndMM] = @original_EndMM) OR ([EndMM] IS NULL AND @original_EndMM IS NULL)) AND (([Comment] = @original_Comment) OR ([Comment] IS NULL AND @original_Comment IS NULL))" 
        InsertCommand="INSERT INTO [MeetingMain] ([Name], [DateYear], [DateMonth], [DateDay], [Place], [StartHH], [StartMM], [EndHH], [EndMM], [Comment]) VALUES (@Name, @DateYear, @DateMonth, @DateDay, @Place, @StartHH, @StartMM, @EndHH, @EndMM, @Comment)" 
        OldValuesParameterFormatString="original_{0}" 
        SelectCommand="SELECT * FROM [MeetingMain]" 
        UpdateCommand="UPDATE [MeetingMain] SET [Name] = @Name, [DateYear] = @DateYear, [DateMonth] = @DateMonth, [DateDay] = @DateDay, [Place] = @Place, [StartHH] = @StartHH, [StartMM] = @StartMM, [EndHH] = @EndHH, [EndMM] = @EndMM, [Comment] = @Comment WHERE [ID] = @original_ID AND (([Name] = @original_Name) OR ([Name] IS NULL AND @original_Name IS NULL)) AND (([DateYear] = @original_DateYear) OR ([DateYear] IS NULL AND @original_DateYear IS NULL)) AND (([DateMonth] = @original_DateMonth) OR ([DateMonth] IS NULL AND @original_DateMonth IS NULL)) AND (([DateDay] = @original_DateDay) OR ([DateDay] IS NULL AND @original_DateDay IS NULL)) AND (([Place] = @original_Place) OR ([Place] IS NULL AND @original_Place IS NULL)) AND (([StartHH] = @original_StartHH) OR ([StartHH] IS NULL AND @original_StartHH IS NULL)) AND (([StartMM] = @original_StartMM) OR ([StartMM] IS NULL AND @original_StartMM IS NULL)) AND (([EndHH] = @original_EndHH) OR ([EndHH] IS NULL AND @original_EndHH IS NULL)) AND (([EndMM] = @original_EndMM) OR ([EndMM] IS NULL AND @original_EndMM IS NULL)) AND (([Comment] = @original_Comment) OR ([Comment] IS NULL AND @original_Comment IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_ID" Type="Int32" />
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
            <asp:Parameter Name="original_ID" Type="Int32" />
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
</form>
</body>
</html>