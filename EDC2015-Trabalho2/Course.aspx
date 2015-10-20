<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Course.aspx.cs" Inherits="EDC2015_Trabalho2.Course" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <h1>Informações do Curso</h1>
        <hr />
    </div>
   
    <asp:DetailsView CssClass="table table-strip" runat="server" DataSourceID="XmlDataSource1" AutoGenerateRows="False">
        
            <Fields>
            <asp:BoundField DataField="guid" HeaderText="Guid" HtmlEncode="false"/>
            <asp:BoundField DataField="nome" HeaderText="Nome" HtmlEncode="false"/>
            <asp:BoundField DataField="codigo" HeaderText="Código" HtmlEncode="false" />
            <asp:BoundField DataField="grau" HeaderText="Grau" HtmlEncode="false" />
            <asp:BoundField DataField="vagas" HeaderText="Vagas" HtmlEncode="false"/>
            <asp:BoundField DataField="saidas_profissionais" HeaderText="Saídas profissionais" HtmlEncode="false" />
            <asp:BoundField DataField="fase1" HeaderText="Média [1ªFase]" HtmlEncode="false" />
            <asp:BoundField DataField="fase2" HeaderText="Média [2ªFase]" HtmlEncode="false" />
            <asp:BoundField DataField="duracao" HeaderText="Duração" HtmlEncode="false" />
            <asp:BoundField DataField="provas" HeaderText="Provas" HtmlEncode="false"/>

          

          </Fields>

    </asp:DetailsView>
    <asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile="http://acesso.ua.pt/xml/curso.asp?i=" TransformFile="~/App_Data/courseDetails.xsl" XPath="curso[not(@guid=preceding::curso/@guid)]"></asp:XmlDataSource>
    <script>
        
        var myParam = location.search.split('ID=')[1];
        console.log(myParam);
        if (myParam === undefined) {
            myParam = "54";
        }
        console.log(myParam);
    </script>
</asp:Content>
