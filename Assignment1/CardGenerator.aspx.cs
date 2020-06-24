using System;
using System.Collections;
using System.Collections.Generic;
using System.Drawing;
using System.Drawing.Text;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment1
{
    public partial class CardGenerator : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                LoadBgColorDropDown();
                LoadTextColorDropDown();
                LoadTextStyleDropDown();
                LoadBorderRadioBtn();
            }
        }

        public void LoadBgColorDropDown()
        {
            dropdownColor.Items.Add(new ListItem("LightGoldenRodYellow"));
            dropdownColor.Items.Add(new ListItem("White"));
            dropdownColor.Items.Add(new ListItem("Red"));
            dropdownColor.Items.Add(new ListItem("Blue"));
            dropdownColor.Items.Add(new ListItem("Green"));
            dropdownColor.Items.Add(new ListItem("Yellow"));
        }

        public void LoadTextColorDropDown()
        {
            string[] colors = Enum.GetNames(typeof(KnownColor));
            foreach (string color in colors)
            {
                dropDownTextColor.Items.Add(new ListItem(color));
            }
                
        }

        public void LoadTextStyleDropDown()
        {
            InstalledFontCollection fonts = new InstalledFontCollection();
            foreach (FontFamily font in fonts.Families)
            {
                dropDownListFontName.Items.Add(new ListItem(font.Name));
            }
            dropDownListFontName.SelectedIndex = 1;
        }

        public void LoadBorderRadioBtn()
        {         
            string[] borderList=Enum.GetNames(typeof(BorderStyle));
            foreach (string style in borderList)
            {
                radioBtnList.Items.Add(new ListItem(style));
            }
        }

        public string getFontValue()
        {
            string fontSize="55px";
            if (txtFontSize.Text != "")
            {
                if (Int32.Parse(txtFontSize.Text) < 55)
                {
                    fontSize = txtFontSize.Text + "px";
                }
            }
            
            return fontSize;
        }

        public void checkDefaultImg()
        {
            if (checkBoxImg.Checked)
            {
                optionalImg.Visible = true;
                optionalImg.ImageUrl = "/images/birthday.jpg";
                optionalImg.Width = 250;
                optionalImg.Height = 250;
            }
            if(!checkBoxImg.Checked)
            {
                optionalImg.Visible=false;
            }
        } 
        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            cardoutput.Style.Add("background-color",dropdownColor.SelectedValue);
            txtGreetingText.Text = txtBox.Text;
            txtGreetingText.Style.Add("background-color", dropdownColor.SelectedValue);
            txtGreetingText.Style.Add("color", dropDownTextColor.SelectedValue);
            txtGreetingText.Style.Add("font-family", dropDownListFontName.SelectedValue);
            txtGreetingText.Style.Add("font-size", getFontValue());
            cardoutput.Style.Add("border-style", radioBtnList.SelectedValue);
            checkDefaultImg();
            
        }
    }
}