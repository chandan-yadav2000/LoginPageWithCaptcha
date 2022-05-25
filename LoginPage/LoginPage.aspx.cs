using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LoginPage
{
    public partial class LoginPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Btn_Login(object sender, EventArgs e)
        {
            //Initializing The Strings on textbox
            string strUsername = TextBox1.Text.Trim();
            string strPassword = TextBox2.Text.Trim();
            string strCaptcha = txtCaptcha.Text.Trim().ToString();

            //Checking is textbox are empty or not
            if (strPassword.ToString() != string.Empty && strUsername.ToString() != string.Empty)
            {
                //Validating Captcha.....
                cptCaptcha.ValidateCaptcha(txtCaptcha.Text.Trim().ToString());

                //Checking is captcha empty or not
                if (txtCaptcha.Text.Trim().ToString() != string.Empty)
                {
                    if (cptCaptcha.UserValidated)
                    {
                        TextBox1.Text = " ";
                        TextBox2.Text = " ";
                        txtCaptcha.Text = " ";
                        lblErrorMessage.Text = "Login Successfully";
                        lblErrorMessage.ForeColor = System.Drawing.Color.Green;
                    }
                    else
                    {
                        
                        lblErrorMessage.Text = "Please enter valid captcha";
                        lblErrorMessage.ForeColor = System.Drawing.Color.Red;
                    }
                }
                else
                {

                    lblErrorMessage.Text = "Please enter captcha";
                    lblErrorMessage.ForeColor = System.Drawing.Color.Red;
                }

            }
            else
            {

                lblErrorMessage.Text = "Please enter username and password";
                lblErrorMessage.ForeColor = System.Drawing.Color.Red;
            }
        }
    }
}