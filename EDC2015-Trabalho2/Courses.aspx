<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Courses.aspx.cs" Inherits="EDC2015_Trabalho2.Courses" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile="~/App_Data/cursos.xml" TransformFile="~/App_Data/cursos.xsl"></asp:XmlDataSource>
    
    <div>
        <h1>Lista de Cursos</h1>
        <hr />
    </div>
   
        <div class="form-group">
            <label for="DropDownList1" class="col-lg-1 control-label">Tipos:</label>
            <div class="col-lg-4">
                <asp:DropDownList CssClass="form-control" ID="DropDownList1" runat="server" DataSourceID="XmlDataSource2" DataTextField="grau" DataValueField="grau" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="True">
                </asp:DropDownList>
                <asp:XmlDataSource ID="XmlDataSource2" runat="server" DataFile="~/App_Data/cursos.xml" TransformFile="~/App_Data/dropTipos.xsl" XPath="cursos/curso[not(@grau=preceding::curso/@grau)]"></asp:XmlDataSource>
            </div>
            <label for="DropDownList2" class="col-lg-1 control-label">Locais:</label>
            <div class="col-lg-4">
                <asp:DropDownList CssClass="form-control" ID="DropDownList2" runat="server" DataSourceID="XmlDataSource3" DataTextField="local" DataValueField="local" AutoPostBack="True" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
                </asp:DropDownList>
                <asp:XmlDataSource ID="XmlDataSource3" runat="server" DataFile="~/App_Data/cursos.xml" TransformFile="~/App_Data/dropLocais.xsl" XPath="cursos/curso[not(@local=preceding::curso/@local)]"></asp:XmlDataSource>
    
            </div>
        </div>
        
    <asp:GridView CssClass="table table-strip table-hover" ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataSourceID="XmlDataSource1">
        <Columns>
            <asp:TemplateField HeaderText="guid" SortExpression="guid">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("guid") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("guid") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="nome" HeaderText="nome" SortExpression="nome" />
            <asp:BoundField DataField="grau" HeaderText="grau" SortExpression="grau" />
            <asp:BoundField DataField="local" HeaderText="local" SortExpression="local" />
        </Columns>
        <PagerStyle CssClass="pagination-ys" HorizontalAlign="Center" />
        <EmptyDataTemplate>
            <div class="alert alert-warning">
                <h4>Atenção!</h4>
                <p>Não há cursos desse tipo nessa instituição!</p>
            </div>
        </EmptyDataTemplate>
    </asp:GridView>
</asp:Content>
