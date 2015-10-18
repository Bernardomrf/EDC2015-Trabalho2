<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Course.aspx.cs" Inherits="EDC2015_Trabalho2.Course" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <script>
        var myParam = location.search.split('ID=')[1];
        console.log(myParam);
        if (myParam === undefined) {
            myParam = "54";
        }
        console.log(myParam);
    </script>
</asp:Content>
