<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Courses.aspx.cs" Inherits="EDC2015_Trabalho2.Courses" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile="~/App_Data/cursos.xml" TransformFile="~/App_Data/cursos.xsl"></asp:XmlDataSource>
    <asp:GridView CssClass="table table-strip table-hover" ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataSourceID="XmlDataSource1">
        <Columns>
            <asp:BoundField DataField="guid" HeaderText="guid" SortExpression="guid" />
            <asp:BoundField DataField="nome" HeaderText="nome" SortExpression="nome" />
            <asp:BoundField DataField="grau" HeaderText="grau" SortExpression="grau" />
            <asp:BoundField DataField="local" HeaderText="local" SortExpression="local" />
        </Columns>
        <PagerStyle CssClass="pagination-ys" HorizontalAlign="Center" />
    </asp:GridView>
</asp:Content>
