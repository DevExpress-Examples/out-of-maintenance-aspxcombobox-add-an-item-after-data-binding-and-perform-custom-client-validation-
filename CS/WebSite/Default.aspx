<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register Assembly="DevExpress.Web.v13.1, Version=13.1.14.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxEditors" TagPrefix="dx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ASPxComboBox: Add an item to the ItemCollection after data-bound and perform custom client-side validation</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table class="style1">
            <tr>
                <td>
        <strong>Products:</strong></td>
            </tr>
            <tr>
                <td>
                    <dx:ASPxComboBox ID="cmbox" runat="server" ClientInstanceName="cmbox"
            TextField="ProductName" ValueField="ProductID" DataSourceID="AccessDataSource1" 
                        ondatabound="cmbox_DataBound">
            <ClientSideEvents Validation="function(s, e) {
    if (s.GetSelectedIndex()==0) {
          e.isValid = false;
          e.errorText = &quot;You should Select One of the Products&quot;;
     }
}" />
            <ValidationSettings ValidateOnLeave="False">
            </ValidationSettings>
        </dx:ASPxComboBox>
                </td>
            </tr>
            <tr>
                <td>
        <dx:ASPxButton ID="btn" runat="server" AutoPostBack="False" ClientInstanceName="btn"
            Text="Validate">
            <ClientSideEvents Click="function(s, e) {
	cmbox.Validate();
}" />
        </dx:ASPxButton>
                </td>
            </tr>
        </table>
    </div>
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/Northwind.mdb"
            SelectCommand="SELECT [ProductID], [ProductName] FROM [Products]"></asp:AccessDataSource>
    </form>
</body>
</html>
