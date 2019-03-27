<%@ Page Title="Distribution" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Distribution.aspx.cs" Inherits="ITStock.Distribution1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="sm1" runat="server"></asp:ScriptManager>
    <%-- first row --%>
    <div class="row">
        <div class="col-sm">
            <label for="ddlSection">Section :</label>
            <asp:DropDownList ID="ddlSection" runat="server" CssClass="form-control"></asp:DropDownList>
            <asp:RequiredFieldValidator ID="rfv1" runat="server" InitialValue="0" ErrorMessage="*" ForeColor="Red" ControlToValidate="ddlSection"></asp:RequiredFieldValidator>
        </div>
        <div class="col-sm">
            <label for="txtReceiverName">Receiver Name :</label>
            <asp:TextBox ID="txtReceiverName" runat="server" CssClass="form-control"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfv2" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="txtReceiverName"></asp:RequiredFieldValidator>
        </div>
    </div>
    <div class="row">
        <div class="col-sm">
            <label for="ddlDevice">Device :</label>
            <asp:DropDownList ID="ddlDevice" runat="server" CssClass="form-control"></asp:DropDownList>
            <asp:RequiredFieldValidator ID="rfv3" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="ddlDevice" InitialValue="0"></asp:RequiredFieldValidator>
        </div>
        <div class="col-sm">
            <label for="txtDistributionDate">Distribution Date :</label>
            <asp:TextBox ID="txtDistributionDate" runat="server" CssClass="form-control" placeholder="DD-MM-YYY"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfv4" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="txtDistributionDate"></asp:RequiredFieldValidator>
            <ajaxToolkit:CalendarExtender ID="ce1" runat="server" TargetControlID="txtDistributionDate" Format="dd-MM-yyyy" />
        </div>
    </div>
    <hr />
    <div class="row">
        <div class="col-sm">
            <asp:Button ID="btnSubmit" runat="server" CssClass="btn btn-success" Text="Submit" OnClick="btnSubmit_Click" />
        </div>
    </div>
    <script>
        let activeElement = document.getElementById("Distribute");
        activeElement.className += " active";
    </script>
</asp:Content>
