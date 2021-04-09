<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .modalBackground
        {
            background-color: Black;
            filter: alpha(opacity=90);
            opacity: 0.8;
        }
        .modalPopup
        {
            border: 3px solid black;
            background-color: #FFFFFF;
            padding-top: 10px;
            padding-left: 10px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="style1">
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Modal Popup Extender"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="btnStart" runat="server" Height="52px" Text="Start" 
                        Width="93px" onclick="btnStart_Click" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:ScriptManager ID="ScriptManager1" runat="server">
                    </asp:ScriptManager>
                    <asp:HyperLink ID="HyperLink1" runat="server"></asp:HyperLink>
                    <asp:Panel ID="Panel1" runat="server" Visible="False" CssClass="modalPopup">
                        <asp:Image ID="Image1" runat="server" 
                            ImageUrl="~/Images/modalpopupextender.png" />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnClose" runat="server" Text="Close" Height="55px" 
                        Width="97px" />
                    </asp:Panel>
                    <cc1:ModalPopupExtender ID="ModalPopupExtender1" runat="server" TargetControlID="HyperLink1" PopupControlID="Panel1" BackgroundCssClass="modalBackground" CancelControlID="btnClose">
                    </cc1:ModalPopupExtender>
                    
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
