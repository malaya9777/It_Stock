<%@ Page Title="Add Device" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="addDevice.aspx.cs" Inherits="ITStock.addDevice" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="AjaxControl" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="sm1" runat="server" ></asp:ScriptManager>
    <%-- first row --%>
    <div class="row">
        <div class="col-md-6">
            <div class="form-group">
                <label for="txtMake">Make :</label>
                <asp:TextBox ID="txtMake" runat="server" CssClass="form-control" placeholder="Make"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfv1" ControlToValidate="txtMake" runat="server" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
        </div>
        <div class="col-md-6">
            <div class="form-group">
                <label for="txtModel">Model :</label>
                <asp:TextBox ID="txtModel" runat="server" CssClass="form-control" placeholder="Model"></asp:TextBox>
            </div>
        </div>
    </div>
    <%-- second row --%>
    <div class="row">
        <div class="col-md-6">
            <div class="form-group">
                <label for="txtSerialNo">Serial No :</label>
                <asp:TextBox ID="txtSerialNo" runat="server" CssClass="form-control" placeholder="Serial No"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfv2" runat="server" ControlToValidate="txtSerialNo" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
        </div>
        <div class="col-md-6">
            <div class="form-group">
                <label for="txtDateofReceiving">Date of Reveiving :</label>
                <asp:TextBox ID="txtDateofReceiving" runat="server" CssClass="form-control" placeholder="DD-MM-YYYY" AutoCompleteType="None"></asp:TextBox>
                <AjaxControl:CalendarExtender ID="CE1" runat="server" TargetControlID="txtDateofReceiving" Format="dd-MM-yyyy" />
                <asp:RequiredFieldValidator ID="rfv4" runat="server" ControlToValidate="txtDateofReceiving" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
        </div>
    </div>

    <%-- third row --%>
    <div class="row">
        <div class="col-md-6">
            <div class="form-group">
                <label for="txtReceivedFrom">Received From :</label>
                <asp:TextBox ID="txtReceivedFrom" runat="server" CssClass="form-control" placeholder="Received From"></asp:TextBox>
            </div>
        </div>
        <div class="col-md-6">
            <div class="form-group">
                <label for="ddlCategory">Device Category :</label>
                <asp:DropDownList ID="ddlCategory" runat="server" CssClass="form-control"></asp:DropDownList>
                <asp:RequiredFieldValidator ID="rfv5" runat="server" ControlToValidate="ddlCategory" InitialValue="0" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
        </div>
    </div>

     <%-- forth row --%>
    <div class="row">
        
        <div class="col-md-12">
            <div class="form-group">
                <label for="txtRemarks">Remarks :</label>
                <asp:TextBox ID="txtRemarks" runat="server" CssClass="form-control" TextMode="MultiLine" placeholder="Remarks"></asp:TextBox>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-12 align-items-center">
            <asp:Button runat="server" ID="btnSubmit" CssClass="btn btn-success" Text="Submit" OnClick="btnSubmit_Click" />
        </div>
    </div>

    <script>
        let activeElement = document.getElementById("Device");
        activeElement.className += " active";
    </script>
</asp:Content>
