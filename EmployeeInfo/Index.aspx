<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="EmployeeInfo.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Employee Information</h2>
            <p>
                Name:&nbsp;&nbsp;
                <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
            </p>
            <p>
                Select Office:&nbsp;&nbsp;
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem>Toronto</asp:ListItem>
                    <asp:ListItem>New York</asp:ListItem>
                    <asp:ListItem>Manila</asp:ListItem>
                    <asp:ListItem>London</asp:ListItem>
                </asp:DropDownList>
                <asp:Label ID="lblOffice" runat="server"></asp:Label>
            </p>
            <p>
                Department:</p>
            <p>
                <asp:RadioButton ID="rdoMarketing" runat="server" GroupName="Department" OnCheckedChanged="RadioButton1_CheckedChanged" Text="Marketing" />
                <br />
                <asp:RadioButton ID="rdoAccounting" runat="server" GroupName="Department" OnCheckedChanged="RadioButton2_CheckedChanged" Text="Accounting" />
                <br />
                <asp:RadioButton ID="rdoLegal" runat="server" GroupName="Department" Text="Legal" />
            </p>
        </div>
        <p>
            Qualifications:</p>
        <p>
            <asp:CheckBox ID="chkBA" runat="server" Text="BA" />
        <br />
            <asp:CheckBox ID="chkMA" runat="server" Text="MA" />
        <br />
            <asp:CheckBox ID="chkPHD" runat="server" Text="PHD" />
        </p>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />
        <br />
        <br />
        <asp:Label ID="lblFinalResult" runat="server"></asp:Label>
    </form>
</body>
</html>
