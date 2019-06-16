<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="Site2-xiugaixuesheng.aspx.cs" Inherits="WebApplication1.WebForm11" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="学号" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:CommandField ShowEditButton="True" />
            <asp:BoundField DataField="学号" HeaderText="学号" ReadOnly="True" SortExpression="学号" />
            <asp:BoundField DataField="姓名" HeaderText="姓名" SortExpression="姓名" />
            <asp:BoundField DataField="性别" HeaderText="性别" SortExpression="性别" />
            <asp:BoundField DataField="生日" HeaderText="生日" SortExpression="生日" />
            <asp:BoundField DataField="院系" HeaderText="院系" SortExpression="院系" />
            <asp:BoundField DataField="班级" HeaderText="班级" SortExpression="班级" />
            <asp:BoundField DataField="高考成绩" HeaderText="高考成绩" SortExpression="高考成绩" />
            <asp:BoundField DataField="密码" HeaderText="密码" SortExpression="密码" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:LhConnectionString %>" DeleteCommand="DELETE FROM [学生] WHERE [学号] = @original_学号 AND (([姓名] = @original_姓名) OR ([姓名] IS NULL AND @original_姓名 IS NULL)) AND (([性别] = @original_性别) OR ([性别] IS NULL AND @original_性别 IS NULL)) AND (([生日] = @original_生日) OR ([生日] IS NULL AND @original_生日 IS NULL)) AND (([院系] = @original_院系) OR ([院系] IS NULL AND @original_院系 IS NULL)) AND (([班级] = @original_班级) OR ([班级] IS NULL AND @original_班级 IS NULL)) AND (([高考成绩] = @original_高考成绩) OR ([高考成绩] IS NULL AND @original_高考成绩 IS NULL)) AND (([密码] = @original_密码) OR ([密码] IS NULL AND @original_密码 IS NULL))" InsertCommand="INSERT INTO [学生] ([学号], [姓名], [性别], [生日], [院系], [班级], [高考成绩], [密码]) VALUES (@学号, @姓名, @性别, @生日, @院系, @班级, @高考成绩, @密码)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [学生]" UpdateCommand="UPDATE [学生] SET [姓名] = @姓名, [性别] = @性别, [生日] = @生日, [院系] = @院系, [班级] = @班级, [高考成绩] = @高考成绩, [密码] = @密码 WHERE [学号] = @original_学号 AND (([姓名] = @original_姓名) OR ([姓名] IS NULL AND @original_姓名 IS NULL)) AND (([性别] = @original_性别) OR ([性别] IS NULL AND @original_性别 IS NULL)) AND (([生日] = @original_生日) OR ([生日] IS NULL AND @original_生日 IS NULL)) AND (([院系] = @original_院系) OR ([院系] IS NULL AND @original_院系 IS NULL)) AND (([班级] = @original_班级) OR ([班级] IS NULL AND @original_班级 IS NULL)) AND (([高考成绩] = @original_高考成绩) OR ([高考成绩] IS NULL AND @original_高考成绩 IS NULL)) AND (([密码] = @original_密码) OR ([密码] IS NULL AND @original_密码 IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_学号" Type="String" />
            <asp:Parameter Name="original_姓名" Type="String" />
            <asp:Parameter Name="original_性别" Type="String" />
            <asp:Parameter DbType="Date" Name="original_生日" />
            <asp:Parameter Name="original_院系" Type="String" />
            <asp:Parameter Name="original_班级" Type="String" />
            <asp:Parameter Name="original_高考成绩" Type="Int32" />
            <asp:Parameter Name="original_密码" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="学号" Type="String" />
            <asp:Parameter Name="姓名" Type="String" />
            <asp:Parameter Name="性别" Type="String" />
            <asp:Parameter DbType="Date" Name="生日" />
            <asp:Parameter Name="院系" Type="String" />
            <asp:Parameter Name="班级" Type="String" />
            <asp:Parameter Name="高考成绩" Type="Int32" />
            <asp:Parameter Name="密码" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="姓名" Type="String" />
            <asp:Parameter Name="性别" Type="String" />
            <asp:Parameter DbType="Date" Name="生日" />
            <asp:Parameter Name="院系" Type="String" />
            <asp:Parameter Name="班级" Type="String" />
            <asp:Parameter Name="高考成绩" Type="Int32" />
            <asp:Parameter Name="密码" Type="String" />
            <asp:Parameter Name="original_学号" Type="String" />
            <asp:Parameter Name="original_姓名" Type="String" />
            <asp:Parameter Name="original_性别" Type="String" />
            <asp:Parameter DbType="Date" Name="original_生日" />
            <asp:Parameter Name="original_院系" Type="String" />
            <asp:Parameter Name="original_班级" Type="String" />
            <asp:Parameter Name="original_高考成绩" Type="Int32" />
            <asp:Parameter Name="original_密码" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
