<%@ Page Title="Admin" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="ITStock.Admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <hr />
    <div class="row">
       
        <div class="col-sm-4">
            <div class="form-group">
                
                <asp:TextBox ID="section" runat="server" CssClass="form-control" ValidationGroup="e" placeholder="Sections"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfv1" ControlToValidate="section"  runat="server" ErrorMessage="*" ForeColor="Red" ValidationGroup="sectionGroup" ></asp:RequiredFieldValidator>
            </div>

        </div>
        <div class="col-sm-2">
            <div class="form-group">
                <asp:Button ID="btnAddSection" runat="server" Text="Add Section" ValidationGroup="sectionGroup" CssClass="btn btn-success" OnClick="btnAddSection_Click" />
            </div>
        </div>
        <div class="col-sm-4">
            <asp:Panel runat="server" Height="200" Width="400" ScrollBars="Vertical" BorderColor="Gray" BorderWidth="1">
                <asp:ListView runat="server" ID="lstSection">                    
                    <ItemTemplate>
                        <div>
                            <table>
                                <tr>
                                    <td style="width:250px;padding-left:10px"><asp:Label runat="server" ID="txtSection" Text='<%#Eval("_Section") %>'></asp:Label></td>
                                    <td><asp:Button runat="server" ID="btnsectionDelete" CssClass="btn btn-outline-primary" Text="Remove" CommandName="sectionID" CommandArgument='<%# Eval("ID") %>'  OnCommand="btnsectionDelete_Command"/></td>
                                </tr>
                            </table>                            
                        </div>
                      </ItemTemplate>
                </asp:ListView>
            </asp:Panel>
        </div>
    </div>
    <hr />
    <div class="row">
        <div class="col-sm-4">
            <div class="form-group">
                <asp:TextBox ID="category" runat="server" CssClass="form-control" placeholder="Categories"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfv2" runat="server" ControlToValidate="category" ValidationGroup="categoryGroup" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
        </div>
        <div class="col-sm-2">
            <asp:Button ID="btnAddCategories" runat="server" Text="Add Categories" CssClass="btn btn-success" ValidationGroup="categoryGroup"  OnClick="btnAddCategories_Click" />
        </div>
        <div class="col-sm-4">
            <asp:Panel runat="server" Height="200" Width="400" ScrollBars="Vertical" BorderColor="Gray" BorderWidth="1" >
                <asp:ListView runat="server" ID="lstCategory">
                      <ItemTemplate>
                        <div>
                            <table>
                                <tr>
                                    <td style="width:250px;padding-left:10px"><asp:Label runat="server" ID="txtCategory" Text='<%#Eval("Category") %>'></asp:Label></td>
                                    <td><asp:Button runat="server" ID="btnCategoryDelete" CssClass="btn btn-outline-primary" Text="Remove" CommandName="sectionID" CommandArgument='<%# Eval("ID") %>'  OnCommand="btnCategoryDelete_Command"/></td>
                                </tr>
                            </table>                            
                        </div>
                      </ItemTemplate>
                </asp:ListView>
            </asp:Panel>
        </div>
    </div>
    <script>
        let activeElement = document.getElementById("Admin");
        activeElement.className += " active";
    </script>
</asp:Content>
