<%@ Page Title="Report" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Report.aspx.cs" Inherits="ITStock.Report" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:GridView ID="grdReport" runat="server" CssClass="table-striped" GridLines="Horizontal" AutoGenerateColumns="true">
        <Columns>

        </Columns>
    </asp:GridView>


</asp:Content>
