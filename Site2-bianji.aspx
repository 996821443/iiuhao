<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="Site2-bianji.aspx.cs" Inherits="WebApplication1.WebForm8" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="课程编号" DataSourceID="SqlDataSource1" style="margin-bottom: 0px">
    <Columns>
        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
        <asp:BoundField DataField="课程编号" HeaderText="课程编号" ReadOnly="True" SortExpression="课程编号" />
        <asp:BoundField DataField="课程名" HeaderText="课程名" SortExpression="课程名" />
        <asp:BoundField DataField="先行课" HeaderText="先行课" SortExpression="先行课" />
        <asp:BoundField DataField="学分" HeaderText="学分" SortExpression="学分" />
        <asp:BoundField DataField="授课教师" HeaderText="授课教师" SortExpression="授课教师" />
    </Columns>
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:LhConnectionString %>" DeleteCommand="DELETE FROM [课程] WHERE [课程编号] = @original_课程编号 AND (([课程名] = @original_课程名) OR ([课程名] IS NULL AND @original_课程名 IS NULL)) AND (([先行课] = @original_先行课) OR ([先行课] IS NULL AND @original_先行课 IS NULL)) AND (([学分] = @original_学分) OR ([学分] IS NULL AND @original_学分 IS NULL)) AND (([授课教师] = @original_授课教师) OR ([授课教师] IS NULL AND @original_授课教师 IS NULL))" InsertCommand="INSERT INTO [课程] ([课程编号], [课程名], [先行课], [学分], [授课教师]) VALUES (@课程编号, @课程名, @先行课, @学分, @授课教师)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [课程]" UpdateCommand="UPDATE [课程] SET [课程名] = @课程名, [先行课] = @先行课, [学分] = @学分, [授课教师] = @授课教师 WHERE [课程编号] = @original_课程编号 AND (([课程名] = @original_课程名) OR ([课程名] IS NULL AND @original_课程名 IS NULL)) AND (([先行课] = @original_先行课) OR ([先行课] IS NULL AND @original_先行课 IS NULL)) AND (([学分] = @original_学分) OR ([学分] IS NULL AND @original_学分 IS NULL)) AND (([授课教师] = @original_授课教师) OR ([授课教师] IS NULL AND @original_授课教师 IS NULL))">
    <DeleteParameters>
        <asp:Parameter Name="original_课程编号" Type="String" />
        <asp:Parameter Name="original_课程名" Type="String" />
        <asp:Parameter Name="original_先行课" Type="String" />
        <asp:Parameter Name="original_学分" Type="Byte" />
        <asp:Parameter Name="original_授课教师" Type="String" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="课程编号" Type="String" />
        <asp:Parameter Name="课程名" Type="String" />
        <asp:Parameter Name="先行课" Type="String" />
        <asp:Parameter Name="学分" Type="Byte" />
        <asp:Parameter Name="授课教师" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="课程名" Type="String" />
        <asp:Parameter Name="先行课" Type="String" />
        <asp:Parameter Name="学分" Type="Byte" />
        <asp:Parameter Name="授课教师" Type="String" />
        <asp:Parameter Name="original_课程编号" Type="String" />
        <asp:Parameter Name="original_课程名" Type="String" />
        <asp:Parameter Name="original_先行课" Type="String" />
        <asp:Parameter Name="original_学分" Type="Byte" />
        <asp:Parameter Name="original_授课教师" Type="String" />
    </UpdateParameters>
</asp:SqlDataSource>
</asp:Content>
