<%@page import="action.Dbconnection"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<!DOCTYPE html>
<html>
    <head>
        <title> Register </title>
		
		<link rel = "stylesheet" href = "mini.css" type="text/css" >
		<script type="text/javascript">
			function check_info()
			{
				
				var Password=document.getElementById('Password').value;
				var Confirm_Password=document.getElementById('Confirm_Password').value;
				//var Aadhar_No=document.getElementById('Aadhar_No').value;
                                //if(Aadhar_No<"100000000000")&&(Aadhar_No>"999999999999"))
                                //{
                                //    alert("Aadhar number must be 12 characters only");
				//	return false;
                                //}
				if(Password!=Confirm_Password)
				{
					alert("Password mismatch");
					return false;
				}
				else
				{
                                    alert("Submitting your details");
				}
								
			}
		</script>
    </head>
    <body>
		<div id = "center_maker">
			<header id = "page_header">
				<img src = "logo2.png" alt = "logo image" width="200" height="140" class="logo" />
				<h1 class="head_text"> <b> MEDICARE & MEDICINE TRACKING </b> </h1>
				
			</header>
			
			<nav id = "top_nav"> 
				<ul>
					<li> <a href = "Introduction.jsp"> HOME &nbsp; &nbsp; &nbsp; &nbsp; </a> </li>
					<li> <a href = "search.jsp"> SEARCH &nbsp; &nbsp; &nbsp; &nbsp; </a> </li>
					<li> <a href = "enter_details.jsp" style="color:brown;"> REGISTER &nbsp; &nbsp; &nbsp; &nbsp;  </a> </li>
					<li> <a href = "login.jsp"> LOGIN </a> </li>
				</ul>
			</nav>
			<center>
			<section id = "the_section">
				<!-- <h2 id = "heading" > REGISTER </h2> -->
				<br/>
				
					<form action="register_action" method="post" onsubmit="return check_info()">
						
						Aadhar No.*: <input type="text" required="" id="Aadhar_No" name="Aadhar_No" pattern=".{12,}" required title="12 characters" />
						<br/>
						<br/>
						Name*: <input type="text" required="" id="Name" name="Name" pattern=".{3,}" required title="3 characters minimum"/>
                                                <br/>
						<br/>
						Password* : <input type="password" required="" id="Password" name="Password" pattern=".{8,}" required title="8 characters minimum"/>
						<br/>
						<br/>
						Confirm Password* : <input type="password" required="" id="Confirm_Password" name="Confirm_Password" pattern=".{8,}" required title="8 characters minimum"/> 
                                                <br/>
						<br/>
					     D.O.B*: 
							<select id="DOB_date" name="DOB_date" required="" selected="selected">
								<option>  </option>
								<option value="01"> 01 </option>
								<option value="02"> 02 </option>
								<option value="03"> 03 </option>
								<option value="04"> 04 </option>
								<option value="05"> 05 </option>
								<option value="06"> 06 </option>
								<option value="07"> 07 </option>
								<option value="08"> 08 </option>
								<option value="09"> 09 </option>
								<option value="10"> 10 </option>
								<option value="11"> 11 </option>
								<option value="12"> 12 </option>
								<option value="13"> 13 </option>
								<option value="14"> 14 </option>
								<option value="15"> 15 </option>
								<option value="16"> 16 </option>
								<option value="17"> 17 </option>
								<option value="18"> 18 </option>
								<option value="19"> 19 </option>
								<option value="20"> 20 </option>
								<option value="21"> 21 </option>
								<option value="22"> 22 </option>
								<option value="23"> 23 </option>
								<option value="24"> 24 </option>
								<option value="25"> 25 </option>
								<option value="26"> 26 </option>
								<option value="27"> 27 </option>
								<option value="28"> 28 </option>
								<option value="29"> 29 </option>
								<option value="30"> 30 </option>
								<option value="31"> 31 </option>
							</select>
							<select id="DOB_month" name="DOB_month" required="" selected="selected">
								<option>  </option>
								<option value="01"> 01 </option>
								<option value="02"> 02 </option>
								<option value="03"> 03 </option>
								<option value="04"> 04 </option>
								<option value="05"> 05 </option>
								<option value="06"> 06 </option>
								<option value="07"> 07 </option>
								<option value="08"> 08 </option>
								<option value="09"> 09 </option>
								<option value="10"> 10 </option>
								<option value="11"> 11 </option>
								<option value="12"> 12 </option>
							</select> 
							<select id="DOB_year" name="DOB_year" required="" selected="selected">
								<option>  </option>
								<option value="1990"> 1990 </option>
								<option value="1991"> 1991 </option>
								<option value="1992"> 1992 </option>
								<option value="1993"> 1993 </option>
								<option value="1994"> 1994 </option>
								<option value="1995"> 1995 </option>
								<option value="1996"> 1996 </option>
								<option value="1997"> 1997 </option>
								<option value="1998"> 1998 </option>
								<option value="1999"> 1999 </option>
								<option value="2000"> 2000 </option>
								<option value="2001"> 2001 </option>
								<option value="2002"> 2002 </option>
								<option value="2003"> 2003 </option>
								<option value="2004"> 2004 </option>
								<option value="2005"> 2005 </option>
								<option value="2006"> 2006 </option>
								<option value="2007"> 2007 </option>
								<option value="2008"> 2008 </option>
								<option value="2009"> 2009 </option>
								<option value="2010"> 2010 </option>
								<option value="2011"> 2011 </option>
								<option value="2012"> 2012 </option>
								<option value="2013"> 2013 </option>
								<option value="2014"> 2014 </option>
								<option value="2015"> 2015 </option>
								<option value="2016"> 2016 </option>
								<option value="2017"> 2017 </option>
							</select>

						
						<br/>
						<br/>
						Blood group*: 
								<select id="Blood_group" name="Blood_group" required="" selected="selected">
									<option> </option>
									<option value="A+"> A+ </option>
									<option value="A-"> A- </option>
									<option value="B+"> B+ </option>
									<option value="B-"> B- </option>
									<option value="O+"> O+ </option>
									<option value="O-"> O- </option>
									<option value="AB+"> AB+ </option>
									<option value="AB-"> AB- </option>
									<option value="Dont know"> Don't Know </option>
								</select> 
						<br/>
                                             	<br/>
                                                Email id*: <input type="email" required="" id="Email_id" name="Email_id" pattern=".+@gmail.com" title="Please provide only a gmail address"/>
                                                <br/>
                                             	<br/>
						Phone No.*: <input type="text" required="" id="phone_no" name="phone_no" pattern=".{10,}" required title="10 characters "/>
						<br/>
						<br/>
						Other Phone No.: <input type="text" id="emergency_contact_no" name="emergency_contact_no"  pattern=".{10,}" required title="10 characters "/>
						<br/>
						<br/>
						City*: 
                                                            <select id="city_name" name="city_name" required="" selected="selected">
								<option>  </option>
								<option value="Visakhapatnam"> Visakhapatnam </option>
								<option value="Vijayawada"> Vijayawada </option>
								<option value="Guntur"> Guntur </option>
								<option value="Nellore"> Nellore </option>
								<option value="Rajahmundry"> Rajahmundry </option>
								<option value="Kadapa"> Kadapa </option>
								<option value="Kurnool"> Kurnool </option>
								<option value="Kakinada"> Kakinada </option>
								<option value="Tirupati"> Tirupati </option>
								<option value="Anantapur"> Anantapur </option>
								<option value="Vizianagaram"> Vizianagaram </option>
								<option value="Eluru"> Eluru </option>
								<option value="Ongole"> Ongole </option>
								<option value="Nandyal"> Nandyal </option>
								<option value="Machilipatnam"> Machilipatnam </option>
								<option value="Adoni"> Adoni </option>
								<option value="Tenali"> Tenali </option>
								<option value="Proddatur"> Proddatur </option>
								<option value="Chittoor"> Chittoor </option>
								<option value="Hindupur"> Hindupur </option>
								<option value="Bhimavaram"> Bhimavaram </option>
								<option value="Madanapalle"> Madanapalle </option>
								<option value="Guntakal"> Guntakal </option>
								<option value="Srikakulum"> Srikakulum </option>
								<option value="Dharmavaram"> Dharmavaram </option>
								<option value="Gudivada"> Gudivada </option>
								<option value="Narasaraopet"> Narasaraopet </option>
								<option value="Tadipatri"> Tadipatri </option>
								<option value="Tadepalligudem"> Tadepalligudem </option>
								<option value="Chilakaluripet"> Chilakaluripet </option>
								<option value="Amaravati"> Amaravati </option>
							</select>
						<br/>
						<br/>
						State*: <input type="text" required="" id="state" name="state" pattern=".{3,}" required title="3 characters minimum"/>
						<br/>
						<br/>
						Country*: <input type="text" required="" id="country" name="country" pattern=".{3,}" required title="3 characters minimum"/>
						<br/>
						<br/>
						Pin code*: <input type="number" required="" id="pincode" name="pincode" pattern=".{6,}" required title="6 characters minimum" min="6"></input>
						<br/>
						<br/>
                                               
						<input type="reset" name="reset" value="RESET"></input>
						<input type="submit" name="submit" id= "submit" value="SUBMIT" ></input>
						<br/>
                                                <br/>
                                             	
						
					</form>
				
			</section>
			</center>
			
	</div>	
	</body>
</html>
