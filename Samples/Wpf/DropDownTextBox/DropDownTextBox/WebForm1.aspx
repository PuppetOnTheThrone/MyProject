<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="WebForm1.aspx.vb" Inherits="DropDownTextBox.WebForm1" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <style type="text/css">
      .Dropdown
        {
            border:1px solid #cccccc;
            background: url("../images/down.png") no-repeat right top;
            cursor:default;
         }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <ajaxToolkit:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
   </ajaxToolkit:ToolkitScriptManager>
    <div>
    <h1>Dropdown TextBox Demo</h1>
    
        <asp:TextBox ID="TextBox1" runat="server" Width="100px" CssClass="Dropdown" ></asp:TextBox>
         <asp:Panel ID="Panel1" Style="display: none;" runat="server">
       <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                        <asp:ListBox ID="ListBox1" runat="server" Width="100px" Height="100px" AutoPostBack="true">
                        <asp:ListItem>Apple</asp:ListItem>
                        <asp:ListItem>Banana</asp:ListItem>
                        <asp:ListItem>Pear</asp:ListItem>
                        <asp:ListItem>Orange</asp:ListItem>
                        <asp:ListItem>Water Melon</asp:ListItem>
                        </asp:ListBox>
                    </ContentTemplate>
                    </asp:UpdatePanel>
                    </asp:Panel>
    
        <asp:Button ID="Button1" runat="server" Text="Button" />
       
        <asp:Label ID="Label1" runat="server"></asp:Label>
    
    </div>
     <ajaxToolkit:PopupControlExtender ID="PopupControlExtender1" PopupControlID="Panel1" TargetControlID="TextBox1"
            Position="Bottom" runat="server">
        </ajaxToolkit:PopupControlExtender>   
    </form>
</body>
</html>
