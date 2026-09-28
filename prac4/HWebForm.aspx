<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HWebForm.aspx.cs" Inherits="prac4.HWebForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #TextArea1 {
            height: 68px;
        }
    </style>
</head>

<body>
    <form id="form1" runat="server">
        <div>

            <asp:Label ID="Label6" runat="server" Text="ONLINE EVENT REGISTRATION"></asp:Label>
            <br />
            <br />

            <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1"
                runat="server"
                ControlToValidate="TextBox1"
                ErrorMessage="Name is required."
                ForeColor="Red">
            </asp:RequiredFieldValidator>

            <br />
            <br />

            <asp:Label ID="Label2" runat="server" Text="Email Id:"></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>

            <asp:RequiredFieldValidator ID="RequiredFieldValidator2"
                runat="server"
                ControlToValidate="TextBox2"
                ErrorMessage="Email is required."
                ForeColor="Red">
            </asp:RequiredFieldValidator>

            <asp:RegularExpressionValidator ID="RegularExpressionValidator1"
                runat="server"
                ControlToValidate="TextBox2"
                ErrorMessage="Enter valid email."
                ForeColor="Red"
                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">
            </asp:RegularExpressionValidator>

            <br />
            <br />

            <asp:Label ID="Label3" runat="server" Text="Phone no.:"></asp:Label>
            <asp:TextBox ID="TextBox3" runat="server" MaxLength="10"></asp:TextBox>

            <asp:RequiredFieldValidator ID="RequiredFieldValidator3"
                runat="server"
                ControlToValidate="TextBox3"
                ErrorMessage="Phone number is required."
                ForeColor="Red">
            </asp:RequiredFieldValidator>

            <asp:RegularExpressionValidator ID="RegularExpressionValidator2"
                runat="server"
                ControlToValidate="TextBox3"
                ErrorMessage="Enter valid 10 digit phone number."
                ForeColor="Red"
                ValidationExpression="[0-9]{10}">
            </asp:RegularExpressionValidator>

            <br />
            <br />

            <asp:Label ID="Label4" runat="server" Text="College:"></asp:Label>
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>

            <asp:RequiredFieldValidator ID="RequiredFieldValidator4"
                runat="server"
                ControlToValidate="TextBox4"
                ErrorMessage="College name is required."
                ForeColor="Red">
            </asp:RequiredFieldValidator>

            <br />
            <br />

            <asp:Label ID="Label5" runat="server" Text="Department:"></asp:Label>

            <asp:RadioButton ID="Btech" Text="Btech" GroupName="Department" runat="server" />
            <asp:RadioButton ID="BCA" Text="BCA" GroupName="Department" runat="server" />
            <asp:RadioButton ID="Mtech" Text="Mtech" GroupName="Department" runat="server" />
            <asp:RadioButton ID="MCA" Text="MCA" GroupName="Department" runat="server" />

            <asp:CustomValidator ID="CustomValidator1"
                runat="server"
                ErrorMessage="Select a department."
                ForeColor="Red"
                OnServerValidate="validateDepartment_Server">
            </asp:CustomValidator>

            <br />
            <br />

            <asp:Label ID="Label7" runat="server" Text="Events"></asp:Label>

            <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem Value="">--Select Event--</asp:ListItem>
                <asp:ListItem Value="ai hunt">ai hunt</asp:ListItem>
                <asp:ListItem Value="treasure hunt">treasure hunt</asp:ListItem>
                <asp:ListItem Value="aisparks">aisparks</asp:ListItem>
            </asp:DropDownList>

            <asp:RequiredFieldValidator ID="RequiredFieldValidator5"
                runat="server"
                ControlToValidate="DropDownList1"
                InitialValue=""
                ErrorMessage="Select an event."
                ForeColor="Red">
            </asp:RequiredFieldValidator>

            <br />
            <br />

            <asp:Label ID="Label8" runat="server" Text="Gender:"></asp:Label>

            <asp:RadioButton ID="Male" Text="Male" GroupName="Gender" runat="server" />
            <asp:RadioButton ID="Female" Text="Female" GroupName="Gender" runat="server" />

            <asp:CustomValidator ID="CustomValidator2"
                runat="server"
                ErrorMessage="Select gender."
                ForeColor="Red"
                OnServerValidate="validateGender_Server">
            </asp:CustomValidator>

            <br />
            <br />

            <asp:Label ID="Label9" runat="server" Text="Skills:"></asp:Label>

            <asp:CheckBox ID="Coding" Text="Coding" runat="server" />
            <asp:CheckBox ID="Reading" Text="Reading" runat="server" />
            <asp:CheckBox ID="FastTyping" Text="Fastyping" runat="server" />

            <asp:CustomValidator ID="CustomValidator3"
                runat="server"
                ErrorMessage="Select at least one skill."
                ForeColor="Red"
                OnServerValidate="validateSkills_Server">
            </asp:CustomValidator>

            <br />
            <br />

            <asp:Label ID="Label10" runat="server" Text="Address:"></asp:Label>

            <asp:TextBox ID="TextArea1"
                runat="server"
                TextMode="MultiLine"
                Columns="20">
            </asp:TextBox>

            <asp:RequiredFieldValidator ID="RequiredFieldValidator6"
                runat="server"
                ControlToValidate="TextArea1"
                ErrorMessage="Address is required."
                ForeColor="Red">
            </asp:RequiredFieldValidator>

            <br />
            <br />

            <asp:Label ID="Label11" runat="server" Text="Terms and Conditions:"></asp:Label>

            <asp:CheckBox ID="IAgree" Text="I Agree" runat="server" />

            <asp:CustomValidator ID="CustomValidator4"
                runat="server"
                ErrorMessage="You must agree to the terms and conditions."
                ForeColor="Red"
                OnServerValidate="validateTerms_Server">
            </asp:CustomValidator>

            <br />
            <br />

            <asp:Button ID="Submit1" runat="server" Text="submit" />

        </div>
    </form>
</body>
</html>