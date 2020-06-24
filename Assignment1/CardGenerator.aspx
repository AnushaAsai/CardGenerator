<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CardGenerator.aspx.cs" Inherits="Assignment1.CardGenerator" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Card Generator</title>
    <style>
        #wrapper {
            width: 1023px;
            margin: 0 auto;
            position: relative;
            top: 0px;
            left: -23px;
            height: 700px;
        }

        #cardinput {
            position: fixed;
            padding: 10px 20px;
            border: 2px solid black;
            height: 550px;
            width: 400px;
            max-width: 500px;
        }

        #cardoutput {
            float: right;
            border: 2px;
            text-align:center;
            margin: 0 auto;
            height:550px;
        }

        #txtGreetingText {
            border-style: none;
            text-align: center;
            margin:40px 20px;
            max-width:500px;
        }

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div id="wrapper" runat="server">
            <div id="cardinput" runat="server">

                <asp:Label ID="lblbgcolor" runat="server" Text="Choose a background color:"></asp:Label><br />

                <asp:DropDownList ID="dropdownColor" runat="server" Height="19px" Width="200px">
                </asp:DropDownList>
                <br />
                <br />

                <asp:Label ID="lbltxtColor" runat="server" Text="Choose a foreground (text) color:"></asp:Label><br />

                <asp:DropDownList ID="dropDownTextColor" runat="server" Height="19px" Width="200px">
                </asp:DropDownList>
                <br />
                <br />

                <asp:Label ID="lbltxtStyle" runat="server" Text="Choose font name:"></asp:Label><br />

                <asp:DropDownList ID="dropDownListFontName" runat="server">
                </asp:DropDownList>
                <br />
                <br />

                <asp:Label ID="lbltxtfontsize" runat="server" Text="Specify a font size:"></asp:Label><br />

                <asp:TextBox ID="txtFontSize" runat="server"></asp:TextBox>
                <br />
                <br />

                <asp:Label ID="lblBorderStyle" runat="server" Text="Choose a border style:"></asp:Label><br />

                <asp:RadioButtonList ID="radioBtnList" runat="server" RepeatColumns="2" RepeatDirection="Horizontal">
                </asp:RadioButtonList>

                <br />

                <asp:CheckBox ID="checkBoxImg" runat="server" Text="Add the Default Picture" />
                <br />
                <br />

                <asp:Label ID="lblGreetTxt" runat="server" Text="Enter the greeting text below:"></asp:Label><br />

                <asp:TextBox ID="txtBox" runat="server" Height="35px" Width="213px"></asp:TextBox>
                <br />
                <br />

                <asp:Button ID="btnUpdate" runat="server" OnClick="btnUpdate_Click" Text="Update" />
                <br />

                <br />



            </div>
            <div id="cardoutput" runat="server">

                <asp:TextBox ID="txtGreetingText" runat="server" ReadOnly="True"></asp:TextBox>

                <div id="cardImage" runat="server">
                    <asp:Image ID="optionalImg" runat="server" />
                </div>

            </div>

        </div>

    </form>
</body>
</html>
