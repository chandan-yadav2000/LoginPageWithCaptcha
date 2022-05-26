# LoginPageWithCaptcha
Here I have implemented a Login Page which include Captcha in asp.net framework which validate the user has enter the correct captcha or not

If you want to implement captcha so Follow the below steps.........

Step 1:- The most important part is to add the MSCaptcha.dll file download it from refernces
If you are adding this in Visual Studio then right click on the folder where you wish to add most probably it is added in Refrences and bin.
``` 
Right Click on folder-> Select Add Reference -> Browse Where you have download the MSCaptcha.dll -> and OK

In case you are directly adding in the application then you have to add MSCaptcha.dll and MSCaptcha.xml and paste there
```
Step 2:- Add the Changes in the web.config file
```
<system.web>
		<!--Change the authentication mode or always add the authentication mode in Windows-->
		<authentication mode="Windows"/>
	</system.web>
```
```
<system.webServer>
		<handlers>
			<add name="captcha1" verb="GET" path="CaptchaImage.axd" type="MSCaptcha.CaptchaImageHandler, MSCaptcha" preCondition="integratedMode,runtimeVersionv2.0"/>
		</handlers>
	</system.webServer>
```

Step 3:- So Place the code in .aspx file 
The most important code in aspx to add the refrences of MSCaptcha.dll on your page where its help captcha will generated 
```
<%--Calling the Refernce of the Assembly that have been MSCaptcha--%>
<%@ Register Assembly="MSCaptcha" Namespace="MSCaptcha" TagPrefix="cap" %>
```
Adding the Captch control which will help to generate the captcha on display 
```
 <%--Captcha Image will display in this Controller--%>
        <cap:CaptchaControl ID="cptCaptcha" runat="server" CssClass="Captcha"
            CaptchaBackgroundNoise="Low" CaptchaLength="5"
            CaptchaHeight="60" CaptchaWidth="200" CaptchaChars="ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890"
            CaptchaLineNoise="None" CaptchaMinTimeout="5"
            CaptchaMaxTimeout="240" FontColor="#529E00" />
        <br />
        <%--The textbox where Captcha should be return--%>
        <asp:TextBox ID="txtCaptcha" class="text" runat="server" placeholder="Enter Captcha"></asp:TextBox>
        <asp:Button ID="btnLogin" OnClick="Btn_Login" runat="server" Text="Submit" CssClass="Button" type="Submit" />
```
Step 4:- So in my section i have put the Captcha validation on login button when user will click on submit button the code will check is the entered captcha is correct or not
```
protected void Btn_Login(object sender, EventArgs e)
        {
            
                cptCaptcha.ValidateCaptcha(txtCaptcha.Text.Trim().ToString());
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
```

------If in case i missed some thing to mentioned please refer LoginPage.aspx , Login.aspx.cs and web.config files for code and Refernces for MSCaptcha.dll------
