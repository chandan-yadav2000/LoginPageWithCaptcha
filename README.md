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
			<add name="captcha1" verb="GET" path="CaptchaImage.axd" type="MSCaptcha.CaptchaImageHandler, MSCaptcha"/>
		</handlers>
	</system.webServer>
```
