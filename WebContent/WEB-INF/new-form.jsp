<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE HTML>

<html>
	<head>
		<title>Privacy Notice Interactive Form Builder</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<link rel="stylesheet" href="assets/css/main.css" />

		<script type="text/javascript" src="assets/js/additional.js"></script>
		<script type="text/javascript" src="assets/js/balloon.js"></script>
	</head>
	<body>

		<form method="POST" action="save.do">

	<!-- Header -->
		<div id="header">

			<div class="top">

				<!-- Logo -->
					<div id="logo">
						<span class="image avatar48"><img src="images/avatar.jpg" alt="" /></span>
						<h1 id="title">Interactive Form Builder</h1>
						<p>Team 3 Echo</p>
					</div>

				<!-- Nav -->
					<nav id="nav">
						<!--
							Prologue's nav expects links in one of two formats:

							1. Hash link (scrolls to a different section within the page)

							   <li><a href="#foobar" id="foobar-link" class="icon fa-whatever-icon-you-want skel-layers-ignoreHref"><span class="label">Foobar</span></a></li>

							2. Standard link (sends the user to another page/site)

							   <li><a href="http://foobar.tld" id="foobar-link" class="icon fa-whatever-icon-you-want"><span class="label">Foobar</span></a></li>
						-->
						<ul>
							<li><a href="index.do" id="top-link" class="skel-layers-ignoreHref"><span class="icon fa-home">Home</span></a></li>
							<li><a href="#basic" id="basic-link" class="skel-layers-ignoreHref"><span class="icon fa-th">Basic</span></a></li>
							<li><a href="#disclosure" id="disclosure-link" class="skel-layers-ignoreHref"><span class="icon fa-folder">Disclosure</span></a></li>
							<li><a href="#protection" id="protection-link" class="skel-layers-ignoreHref"><span class="icon fa-warning">Protection</span></a></li>
						</ul>

						<div>
							<input id="save" type="submit" name="action" value="Save Application" />
						</div>
						<div>
							<a href="index.do#file" id="save" class="button">Upload Existing File</a>
						</div>
					</nav>

			</div>

			<div class="bottom">

				<!-- Social Icons -->
					<ul class="icons">
						<li><a href="#" class="icon fa-twitter"><span class="label">Twitter</span></a></li>
						<li><a href="#" class="icon fa-facebook"><span class="label">Facebook</span></a></li>
						<li><a href="#" class="icon fa-github"><span class="label">Github</span></a></li>
						<li><a href="#" class="icon fa-dribbble"><span class="label">Dribbble</span></a></li>
						<li><a href="#" class="icon fa-envelope"><span class="label">Email</span></a></li>
					</ul>

			</div>

		</div>

	<!-- Main -->
		<div id="main">



		<!-- Intro -->
			<section id="top" class="one dark cover">
				<div class="container">

					<header>
						<h2 class="alt">Create a <a href="#">Privacy Policy Notice</a> <br>by answering the following questions.
					</header>

					<footer>
						<a href="#basic" id="start" class="button scrolly">Start</a>
					</footer>

				</div>
			</section>

			

		<!-- Basic Information -->
		
			<section id="basic" class="two">
				<div class="container">
					
					<div class="row" style="text-align: left">
						<c:forEach var="error" items="${errors}">
							<div class="12u 12u$(mobile)" style="color:rgb(172, 32, 0); font-weight: bold">
	                            ${error}
	                        </div>
						</c:forEach>
					</div>
					
					<div>
					${form.getName()}
					</div>
					
					<header>
						<h2>Basic Information</h2>
					</header>
					
						<div class="row">
							<div id="prev" class="6u 6u$(mobile)">
							</div>
							<div id="next" class="6u 6u$(mobile)">
								<a href="#disclosure" class="button scrolly">Disclosure Info &#62;&#62;</a>
							</div>
						</div>

						<div class="row">
							<div class="12u 12u$(mobile)">
								<p>1. What is the name of the financial institution providing the notice?
									<a rel="balloonq1" class="icon fa-question-circle"></a>
								</p>

								<div id="balloonq1" class="balloonstyle">
									<p>It can also be a common identity of affiliated institutions jointly providing the notice.</p>
								</div>
							</div>

							<div class="6u 12u$(mobile)">
								<input type="text" name="name" placeholder="Name of Financial Institution" value="${form.getName()}">
							</div>
						</div>

						<div class="row">
							<div class="12u 12u$(mobile)">
								<p>2. What is the phone number of your institution for the privacy notice?
									<a rel="balloonq2" class="icon fa-question-circle"></a>
								</p>

								<div id="balloonq2" class="balloonstyle">
									<p>Customers can call this number if they have questions about the privacy notice.</p>
								</div>
							</div>

							<div class="6u 12u$(mobile)">
								<input type="text" name="phone" placeholder="Phone Number" value="${form.getPhone()}">
							</div>
						</div>

						<div class="row">
							<div class="12u 12u$(mobile)">
								<p>3. Is the phone number toll free?</p>
							</div>
							<div id="checkBox" class="4u 6u$(mobile)">
								<input type="radio" name="q3" value="yes" 
								<c:if test="${fn:contains(form.getQ3(),'yes')}"> checked </c:if>/>Yes
							</div>

							<div id="checkBox" class="4u 6u$(mobile)">
								<input type="radio" name="q3" value="no" 
								<c:if test="${fn:contains(form.getQ3(),'no')}"> checked </c:if>/>No
							</div>
						</div>

						<div class="row">
							<div class="12u 12u$(mobile)">
								<p>4. What is the website of your institution for the privacy notice?
									<a rel="balloonq4" class="icon fa-question-circle"></a>
								</p>

								<div id="balloonq4" class="balloonstyle">
									<p>Customers can visit the website if they have questions about the privacy notice.</p>
								</div>
							</div>
							
							<div class="6u 12u$(mobile)">
								<input type="text" name="website" placeholder="Website Address" value="${form.getWebsite()}" >
							</div>
						</div>

						<div class="row">
							<div id="prev" class="6u 6u$(mobile)">
							</div>
							<div id="next" class="6u 6u$(mobile)">
								<a href="#disclosure" class="button scrolly">Disclosure Info &#62;&#62;</a>
							</div>
						</div>

				</div>
			</section>

		<!-- Disclosure Information -->
			<section id="disclosure" class="three">
				<div class="container">

					<header>
						<h2>Disclosure Information</h2>
					</header>


						<div class="row">
							<div id="prev" class="6u 6u$(mobile)">
								<a href="#basic" class="button scrolly">&#60;&#60; Basic Info</a>
							</div>
							<div id="next" class="6u 6u$(mobile)">
								<a href="#protection" class="button scrolly">Protection Info &#62;&#62;</a>
							</div>
						</div>

						<div class="row">
							<div class="12u 12u$(mobile)">
								<p>5. What are the types of personal information your institution collects and shares? 
									<a rel="balloonq5" class="icon fa-question-circle"></a>
								</p>

								<div id="balloonq5" class="balloonstyle">
									<p>You must select at least 5 of the following choices up to as many as you want. "Select All" can enable you to select all the checkboxes.</p>
									<p>In the final Privacy Notice, the standard form will display the first 5 types, with a hyperlink showing the full list of types when clicking it.</p>
								</div>
							</div>

							<div id="checkBox" class="12u 12u$(mobile)">
								<input type="checkbox" id="all1" onClick="toggle(this,'q5whatData')" /><label for="all1">Select All</label>
							</div>

							<div id="checkBox" class="4u 12u$(mobile)">

								<input type="checkbox" name="q5whatData" id="data1" value="income" 
								<c:if test="${fn:contains(form.getArray1(),'income')}"> checked </c:if>/>
								<label for="data1">income</label><br>

								<input type="checkbox" name="q5whatData" id="data2" value="assets" 
								<c:if test="${fn:contains(form.getArray1(),'assets')}"> checked </c:if>/>
								<label for="data2">assets</label><br>

								<input type="checkbox" name="q5whatData" id="data3" value="retirement assets" 
								<c:if test="${fn:contains(form.getArray1(),'retirement assets')}"> checked </c:if>/>
								<label for="data3">retirement assets</label><br>

								<input type="checkbox" name="q5whatData" id="data4" value="account balances" 
								<c:if test="${fn:contains(form.getArray1(),'account balances')}"> checked </c:if>/>
								<label for="data4">account balances</label><br>

								<input type="checkbox" name="q5whatData" id="data5" value="investment experience" 
								<c:if test="${fn:contains(form.getArray1(),'investment experience')}"> checked </c:if>/>
								<label for="data5">investment experience</label><br>

								<input type="checkbox" name="q5whatData" id="data6" value="checking account information"
								<c:if test="${fn:contains(form.getArray1(),'cchecking account information')}"> checked </c:if> />
								<label for="data6">checking account information</label><br>

								<input type="checkbox" name="q5whatData" id="data7" value="wire transfer instructions" 
								<c:if test="${fn:contains(form.getArray1(),'wire transfer instructions')}"> checked </c:if>/>
								<label for="data7">wire transfer instructions</label><br>
							</div>

							<div id="checkBox" class="4u 12u$(mobile)">
								<input type="checkbox" name="q5whatData" id="data8" value="payment history" 
								<c:if test="${fn:contains(form.getArray1(),'payment history')}"> checked </c:if>/>
								<label for="data8">payment history</label><br>

								<input type="checkbox" name="q5whatData" id="data9" value="transaction history" 
								<c:if test="${fn:contains(form.getArray1(),'transaction history')}"> checked </c:if>/>
								<label for="data9">transaction history</label><br>

								<input type="checkbox" name="q5whatData" id="data10" value="purchase history" 
								<c:if test="${fn:contains(form.getArray1(),'purchase history')}"> checked </c:if>/>
								<label for="data10">purchase history</label><br>

								<input type="checkbox" name="q5whatData" id="data11" value="credit history" 
								<c:if test="${fn:contains(form.getArray1(),'credit history')}"> checked </c:if>/>
								<label for="data11">credit history</label><br>

								<input type="checkbox" name="q5whatData" id="data12" value="insurance claim history" 
								<c:if test="${fn:contains(form.getArray1(),'insurance claim history')}"> checked </c:if>/>
								<label for="data12">insurance claim history</label><br>

								<input type="checkbox" name="q5whatData" id="data13" value="overdraft history" 
								<c:if test="${fn:contains(form.getArray1(),'overdraft history')}"> checked </c:if>/>
								<label for="data13">overdraft history</label><br>

								<input type="checkbox" name="q5whatData" id="data14" value="medical information" 
								<c:if test="${fn:contains(form.getArray1(),'medical information')}"> checked </c:if>/>
								<label for="data14">medical information</label><br>
							</div>

							<div id="checkBox" class="4u 12u$(mobile)">
								<input type="checkbox" name="q5whatData" id="data15" value="credit scores" 
								<c:if test="${fn:contains(form.getArray1(),'credit scores')}"> checked </c:if>/>
								<label for="data15">credit scores</label><br>

								<input type="checkbox" name="q5whatData" id="data16" value="credit-based insurance scores" 
								<c:if test="${fn:contains(form.getArray1(),'credit-based insurance scores')}"> checked </c:if>/>
								<label for="data16">credit-based insurance scores</label><br>

								<input type="checkbox" name="q5whatData" id="data17" value="risk tolerance" 
								<c:if test="${fn:contains(form.getArray1(),'risk tolerance')}"> checked </c:if>/>
								<label for="data17">risk tolerance</label><br>

								<input type="checkbox" name="q5whatData" id="data18" value="medical-related debts" 
								<c:if test="${fn:contains(form.getArray1(),'medical-related debts')}"> checked </c:if>/>
								<label for="data18">medical-related debts</label><br>

								<input type="checkbox" name="q5whatData" id="data19" value="credit card or other debt" 
								<c:if test="${fn:contains(form.getArray1(),'credit card or other debt')}"> checked </c:if>/>
								<label for="data19">credit card or other debt</label><br>

								<input type="checkbox" name="q5whatData" id="data20" value="mortgage rates and payments" 
								<c:if test="${fn:contains(form.getArray1(),'mortgage rates and payments')}"> checked </c:if>/>
								<label for="data20">mortgage rates and payments</label><br>

								<input type="checkbox" name="q5whatData" id="data21" value="employment information" 
								<c:if test="${fn:contains(form.getArray1(),'employment information')}"> checked </c:if>/>
								<label for="data21">employment information</label><br>
							</div>
						</div>

	<!-- question 7 does not provide opt-out -->
						<div class="row">
							<div class="12u 12u$(mobile)">
								<p>6. Does your institution share customer's personal information for everyday business purpose? 
									<a rel="balloonq6" class="icon fa-question-circle"></a>
								</p>

								<div id="balloonq6" class="balloonstyle">
									<p>Such as to process customer's transcations, maintain their accounts, respond to court orders and legal investigations, or report to credit bureaus.</p>
								</div>
							</div>
							
							<div id="checkBox" class="4u 6u$(mobile)">
								<input type="radio" name="q6" value="yes" 
								<c:if test="${fn:contains(form.getQ6(),'yes')}"> checked </c:if>/>Yes
							</div>

							<div id="checkBox" class="4u 6u$(mobile)">
								<input type="radio" name="q6" value="no" 
								<c:if test="${fn:contains(form.getQ6(),'no')}"> checked </c:if>/>No
							</div>
						</div>

						<div class="row">
							<div class="12u 12u$(mobile)">
								<p>7. Does your institution share customer's personal information for your marketing purposes?
									<a rel="balloonq7" class="icon fa-question-circle"></a>
								</p>

								<div id="balloonq7" class="balloonstyle">
									<p>It is for your own marketing purposes such as to offer your products and services to customers.</p>
								</div>
							</div>
							
							<div id="checkBox" class="4u 6u$(mobile)">
								<input type="radio" name="q7" value="yes" onchange="showDiv(this,'yes','7_1')"
								<c:if test="${fn:contains(form.getQ7(),'yes')}"> checked </c:if>/>Yes
							</div>

							<div id="checkBox" class="4u 6u$(mobile)">
								<input type="radio" name="q7" value="no" onchange="hideDiv(this, 'no','7_1')"
								<c:if test="${fn:contains(form.getQ7(),'no')}"> checked </c:if>/>No
							</div>
						</div>

						<div id="7_1" class="row" style="margin-left:1em;display:<c:choose><c:when test="${fn:contains(form.getQ7(),'yes')}"> block </c:when> <c:otherwise>none</c:otherwise></c:choose>">
							<div class="12u 12u$(mobile)">
								<p>7.1. Does your institution provide opt-out for customers to limit this sharing?</p>
							</div>
							
							<div id="checkBox" class="4u 6u$(mobile)">
								<input type="radio" name="q7_1" value="yes" 
								<c:if test="${fn:contains(form.getQ7_1(),'yes')}"> checked </c:if>/>Yes
							</div>

							<div id="checkBox" class="4u 6u$(mobile)">
								<input type="radio" name="q7_1" value="no" 
								<c:if test="${fn:contains(form.getQ7_1(),'no')}"> checked </c:if>/>No
							</div>
						</div>

						<div class="row">
							<div class="12u 12u$(mobile)">
								<p>8. Does your institution engage in joint marketing with other companies?
									<a rel="balloonq8" class="icon fa-question-circle"></a>
								</p>

								<div id="balloonq8" class="balloonstyle">
									<p>It is joint marketing agreements between two or more financial institutions and with any service provider.</p>
								</div>
								
							</div>

							<div id="checkBox" class="4u 6u$(mobile)">
								<input type="radio" name="q8" value="yes" onchange="show81(this,'yes')" 
								<c:if test="${fn:contains(form.getQ8(),'yes')}"> checked </c:if>/>Yes
							</div>

							<div id="checkBox" class="4u 6u$(mobile)">
								<input type="radio" name="q8" value="no" onchange="hide81(this,'no')"
								<c:if test="${fn:contains(form.getQ8(),'no')}"> checked </c:if>/>No
							</div>
						</div>

						<div id="8_1" class="row" style="margin-left:1em;display:<c:choose><c:when test="${fn:contains(form.getQ8(),'yes')}"> block </c:when> <c:otherwise>none</c:otherwise></c:choose>">
							<p>8.1. Does your institution share customer's personal information for joint marketing with other financial companies?
								<a rel="balloonq81" class="icon fa-question-circle"></a>
							</p>

								<div id="balloonq81" class="balloonstyle">
									<p>It incorporates sharing information under joint marketing agreements between two or more financial institutions and with any service provider used in connection with such agreements.</p>
								</div>
							
							<div id="checkBox" class="4u 6u$(mobile)">
								<input type="radio" name="q8_1" value="yes" onchange="show82(this,'yes')" 
								<c:if test="${fn:contains(form.getQ8_1(),'yes')}"> checked </c:if>/>Yes
							</div>

							<div id="checkBox" class="4u 6u$(mobile)">
								<input type="radio" name="q8_1" value="no" onchange="hide82(this,'no')" 
								<c:if test="${fn:contains(form.getQ8_1(),'no')}"> checked </c:if>/>No
							</div>
						</div>

						<div id="8_1_1" class="row" style="margin-left:3em;display:<c:choose><c:when test="${fn:contains(form.getQ8_1(),'yes')}"> block </c:when> <c:otherwise>none</c:otherwise></c:choose>">
							<div class="12u 12u$(mobile)">
								<p>8.1.1. Does your institution provide opt-out for customers to limit this sharing?</p>
							</div>
							
							<div id="checkBox" class="4u 6u$(mobile)">
								<input type="radio" name="q8_1_1" value="yes" 
								<c:if test="${fn:contains(form.getQ8_1_1(),'yes')}"> checked </c:if>/>Yes
							</div>

							<div id="checkBox" class="4u 6u$(mobile)">
								<input type="radio" name="q8_1_1" value="no" 
								<c:if test="${fn:contains(form.getQ8_1_1(),'no')}"> checked </c:if>/>No
							</div>
						</div>

						<div id="8_2" class="row" style="margin-left:1em;display:<c:choose><c:when test="${fn:contains(form.getQ8_1(),'yes')}"> block </c:when> <c:otherwise>none</c:otherwise></c:choose>">
							<p>8.2. What are the categories of joint marketing companies of your institution that you share personal information with?</p>

							<div class="12u 12u$(mobile)">
								<textarea id="t8_2" name="q8_2" placeholder="List categories of companies such as credit card companies">${form.getQ8_2()}</textarea>
							</div>
						</div>

						<div class="row">
							<div class="12u 12u$(mobile)">
								<p>9. Does your institution have affiliate(s)?</p>
							</div>
							<div id="checkBox" class="4u 6u$(mobile)">
								<input type="radio" name="q9" value="yes" onchange="showAffi(this,'yes')" 
								<c:if test="${fn:contains(form.getQ9(),'yes')}"> checked </c:if>/>Yes
							</div>

							<div id="checkBox" class="4u 6u$(mobile)">
								<input type="radio" name="q9" value="no" onchange="hideAffi(this,'no')" 
								<c:if test="${fn:contains(form.getQ9(),'no')}"> checked </c:if>/>No
							</div>
						</div>

						<div id="9_1" class="row" style="margin-left:1em;display:<c:choose><c:when test="${fn:contains(form.getQ9(),'yes')}"> block </c:when> <c:otherwise>none</c:otherwise></c:choose>">
							<p>9.1. Does your institution share customer's personal information about transactions and experiences for your affiliates' everyday business purposes?</p>
							
							<div id="checkBox" class="4u 6u$(mobile)">
								<input type="radio" name="q9_1" value="yes" onchange="show91(this,'yes')" 
								<c:if test="${fn:contains(form.getQ9_1(),'yes')}"> checked </c:if>/>Yes
							</div>

							<div id="checkBox" class="4u 6u$(mobile)">
								<input type="radio" name="q9_1" value="no" onchange="hide91(this,'no')" 
								<c:if test="${fn:contains(form.getQ9_1(),'no')}"> checked </c:if>/>No
							</div>
						</div>

						<div id="9_1_1" class="row" style="margin-left:3em;display:<c:choose><c:when test="${fn:contains(form.getQ9_1(),'yes')}"> block </c:when> <c:otherwise>none</c:otherwise></c:choose>;">
							<div class="12u 12u$(mobile)">
								<p>9.1.1. Does your institution provide opt-out for customers to limit this sharing?</p>
							</div>
							
							<div id="checkBox" class="4u 6u$(mobile)">
								<input type="radio" name="q9_1_1" value="yes" 
								<c:if test="${fn:contains(form.getQ9_1_1(),'yes')}"> checked </c:if>/>Yes
							</div>

							<div id="checkBox" class="4u 6u$(mobile)">
								<input type="radio" name="q9_1_1" value="no" 
								<c:if test="${fn:contains(form.getQ9_1_1(),'no')}"> checked </c:if>/>No
							</div>
						</div>

	<!-- question 9_2 must provide opt-out -->
						<div id="9_2" class="row" style="margin-left:1em;display:<c:choose><c:when test="${fn:contains(form.getQ9(),'yes')}"> block </c:when> <c:otherwise>none</c:otherwise></c:choose>">
							<p>9.2. Does your institution share customer's personal information about creditworthiness for your affiliates' everyday business purposes?</p>
							
							<div id="checkBox" class="4u 6u$(mobile)">
								<input type="radio" name="q9_2" value="yes" onchange="show93()" 
								<c:if test="${fn:contains(form.getQ9_2(),'yes')}"> checked </c:if>/>Yes
							</div>

							<div id="checkBox" class="4u 6u$(mobile)">
								<input type="radio" name="q9_2" value="no" onchange="hide95(this)" 
								<c:if test="${fn:contains(form.getQ9_2(),'no')}"> checked </c:if>/>No
							</div>
						</div>

						<div id="9_2_1" class="row" style="margin-left:3em;display:<c:choose><c:when test="${fn:contains(form.getQ9_1(),'yes')}"> block </c:when><c:when test="${fn:contains(form.getQ9_2(),'yes')}"> block </c:when> <c:otherwise>none</c:otherwise></c:choose>">
							<div class="12u 12u$(mobile)">
								<p>9.2.1. Does your institution have any financial institution as affiliates?</p>
							</div>

							<div id="checkBox" class="4u 6u$(mobile)">
								<input type="radio" name="q9_2_1" value="yes" onchange="showDiv(this,'yes','9_2_1_1')" 
								<c:if test="${fn:contains(form.getQ9_2_1(),'yes')}"> checked </c:if>/>Yes
							</div>

							<div id="checkBox" class="4u 6u$(mobile)">
								<input type="radio" name="q9_2_1" value="no" onchange="hideText(this,'no','9_2_1_1')"
								<c:if test="${fn:contains(form.getQ9_2_1(),'no')}"> checked </c:if>/>No
							</div>

							<div id="9_2_1_1" class="12u 12u$(mobile)" style="display:<c:choose><c:when test="${fn:contains(form.getQ9_2_1(),'yes')}"> block </c:when> <c:otherwise>none</c:otherwise></c:choose>">
								<textarea id="t9_2_1_1" name="q9_2_1_1" placeholder="List the financial institution of your institution's affiliates">${form.getQ9_2_1_1()}</textarea>
							</div>
						</div>

						<div id="9_2_2" class="row" style="margin-left:3em;display:<c:choose><c:when test="${fn:contains(form.getQ9_1(),'yes')}"> block </c:when><c:when test="${fn:contains(form.getQ9_2(),'yes')}"> block </c:when> <c:otherwise>none</c:otherwise></c:choose>">
							<div class="12u 12u$(mobile)">
								<p>9.2.2. Does your institution have any other companies as affiliates?</p>
							</div>
							<div id="checkBox" class="4u 6u$(mobile)">
								<input type="radio" name="q9_2_2" value="yes" onchange="showDiv(this,'yes','9_2_2_1')" 
								<c:if test="${fn:contains(form.getQ9_2_2(),'yes')}"> checked </c:if>/>Yes
							</div>

							<div id="checkBox" class="4u 6u$(mobile)">
								<input type="radio" name="q9_2_2" value="no" onchange="hideText(this,'no','9_2_2_1')"
								<c:if test="${fn:contains(form.getQ9_2_2(),'no')}"> checked </c:if>/>No
							</div>

							<div id="9_2_2_1" class="12u 12u$(mobile)" style="display:<c:choose><c:when test="${fn:contains(form.getQ9_2_2(),'yes')}"> block </c:when> <c:otherwise>none</c:otherwise></c:choose>">
								<textarea id="t9_2_2_1" name="q9_2_2_1" placeholder="List other companies of your institution's affiliates" />${form.getQ9_2_2_1()}</textarea>
							</div>
						</div>

	<!-- For our affiliates to market to you. This reason incorporates sharing information specified in section 624 of the FCRA. This reason may be omitted from the disclosure table when: the institution does not have affiliates (or does not disclose personal information to its affiliates); the institution's affiliates do not use personal information in a manner that requires an opt-out; or the institution provides the affiliate marketing notice separately. Institutions that include this reason must provide an opt-out of indefinite duration.
	 -->
						<div id="9_3" class="row" style="margin-left:1em;display:<c:choose><c:when test="${fn:contains(form.getQ9_1(),'yes')}"> block </c:when><c:when test="${fn:contains(form.getQ9_2(),'yes')}"> block </c:when> <c:otherwise>none</c:otherwise></c:choose>">
							<p>9.3. Does your institution's affiliates use customer's personal information in a manner that requires an opt-out?</p>
							
							<div id="checkBox" class="4u 6u$(mobile)">
								<input type="radio" name="q9_3" value="yes" onchange="showDiv(this, 'yes','9_4')"
								<c:if test="${fn:contains(form.getQ9_3(),'yes')}"> checked </c:if>/>Yes
							</div>

							<div id="checkBox" class="4u 6u$(mobile)">
								<input type="radio" name="q9_3" value="no" onchange="hide945(this, 'no')"
								<c:if test="${fn:contains(form.getQ9_3(),'no')}"> checked </c:if>/>No
							</div>
						</div>

						<div id="9_4" class="row" style="margin-left:1em;display:<c:choose><c:when test="${fn:contains(form.getQ9_3(),'yes')}"> block </c:when> <c:otherwise>none</c:otherwise></c:choose>">
							<div class="12u 12u$(mobile)">
								<p>9.4. Does your institution provide the affiliate marketing notice separately?</p>
							</div>
							
							<div id="checkBox" class="4u 6u$(mobile)">
								<input type="radio" name="q9_4" value="yes" onchange="hideDiv(this,'yes','9_5')"
								<c:if test="${fn:contains(form.getQ9_4(),'yes')}"> checked </c:if>/>Yes
							</div>

							<div id="checkBox" class="4u 6u$(mobile)">
								<input type="radio" name="q9_4" value="no" onchange="showDiv(this,'no','9_5')"
								<c:if test="${fn:contains(form.getQ9_4(),'no')}"> checked </c:if>/>No
							</div>
						</div>
						

						<div id="9_5" class="row" style="margin-left:1em;display:<c:choose><c:when test="${fn:contains(form.getQ9_4(),'no')}"> block </c:when> <c:otherwise>none</c:otherwise></c:choose>">
							<div class="12u 12u$(mobile)">
								<p>9.5. Does your institution share customer's personal information for your affiliates to market to customers?</p>
							</div>
							
							<div id="checkBox" class="4u 6u$(mobile)">
								<input type="radio" name="q9_5" value="yes" 
								<c:if test="${fn:contains(form.getQ9_5(),'yes')}"> checked </c:if>/>Yes
							</div>

							<div id="checkBox" class="4u 6u$(mobile)">
								<input type="radio" name="q9_5" value="no" 
								<c:if test="${fn:contains(form.getQ9_5(),'no')}"> checked </c:if>/>No
							</div>
						</div>

						<div class="row">
							<div class="12u 12u$(mobile)">
								<p>10. Does your institution share customer's personal information for nonaffiliates market to customer?</p>
							</div>
							<div id="checkBox" class="4u 6u$(mobile)">
								<input type="radio" name="q10" value="yes" onchange="showDiv(this,'yes','10_1')"
								<c:if test="${fn:contains(form.getQ10(),'yes')}"> checked </c:if>/>Yes
							</div>

							<div id="checkBox" class="4u 6u$(mobile)">
								<input type="radio" name="q10" value="no" onchange="hideText(this,'no','10_1')"
								<c:if test="${fn:contains(form.getQ10(),'no')}"> checked </c:if>/>No
							</div>
						</div>

						<div id="10_1" class="row" style="margin-left:1em;display:<c:choose><c:when test="${fn:contains(form.getQ10(),'yes')}"> block </c:when> <c:otherwise>none</c:otherwise></c:choose>">
							<p>10.1. What are the categories of nonaffiliated third party companies of your institution that you share personal information with?</p>

							<div id="10_1_1" class="12u 12u$(mobile)">
								<textarea id="t10_1_1" name="q10_1_1" placeholder="List categories of companies such as mortgage companies, insurance companies, direct marketing companies, and nonprofit organizations" />${form.getQ10_1_1()}</textarea>
							</div>
						</div>

						<div class="row">
							<div class="12u 12u$(mobile)">
								<p>11. For new customers, how long does your institution begin sharing their information from the date you send this notice?</p>
							</div>
							<div class="6u 12u$(mobile)">
								<input type="text" name="q11" placeholder="Input a number equal to or bigger than 30" value="${form.getQ11()}">
							</div>
						</div>

						<div class="row">
							<div id="prev" class="6u 6u$(mobile)">
								<a href="#basic" class="button scrolly">&#60;&#60; Basic Info</a>
							</div>
							<div id="next" class="6u 6u$(mobile)">
								<a href="#protection" class="button scrolly">Protection Info &#62;&#62;</a>
							</div>
						</div>

				</div>
			</section>

		<!-- Protection Information -->
			<section id="protection" class="four">
				<div class="container">

					<header>
						<h2>Protection Information</h2>
					</header>

			 			<div class="row">
							<div id="prev" class="6u 6u$(mobile)">
								<a href="#disclosure" class="button scrolly">&#60;&#60; Disclosure Info</a>
							</div>
						</div>

						<div class="row">
							<div class="12u 12u$(mobile)">
								<p>12. Is your institution the only financial institution provides the model form?</p>
							</div>
							<div id="checkBox" class="4u 6u$(mobile)">
								<input type="radio" name="q12" value="yes" onchange="hideText(this, 'yes','12_1')"
								<c:if test="${fn:contains(form.getQ12(),'yes')}"> checked </c:if>/>Yes
							</div>

							<div id="checkBox" class="4u 6u$(mobile)">
								<input id="Q12checkbox" type="radio" name="q12" value="no" onchange="showDiv(this, 'no','12_1')"
								<c:if test="${fn:contains(form.getQ12(),'no')}"> checked="true" </c:if>/>No
							</div>						
						</div>
						

						<div id="12_1" class="row" style="margin-left:1em;display: <c:choose><c:when test="${fn:contains(form.getQ12(),'no')}"> block </c:when> <c:otherwise>none</c:otherwise></c:choose>">
							<div class="12u 12u$(mobile)">
								<p>12.1. Who are the financial institutions providing this privacy notice?</p>
							</div>
							<div class="12u 12u$(mobile)">
								<textarea id="t12_1" name="q12_1" placeholder="List all the financial institutions providing this privacy notice">${form.getQ12_1()}</textarea>
							</div>
						</div>

						<div class="row">
							<div class="12u 12u$(mobile)">
								<p>13. Does your institution provide additional information pertaining to your safeguards practices? 
									<a rel="balloonq13" class="icon fa-question-circle"></a>
								</p>

								<div id="balloonq13" class="balloonstyle">
									<p>Such information may include information about your use of cookies or other measures you uses to safeguard personal information.</p>
								</div>

							</div>
							<div id="checkBox" class="4u 6u$(mobile)">
								<input type="radio" name="q13" value="yes" onchange="showDiv(this,'yes','13_1')"
								<c:if test="${fn:contains(form.getQ13(),'yes')}"> checked </c:if>/>Yes
							</div>

							<div id="checkBox" class="4u 6u$(mobile)">
								<input type="radio" name="q13" value="no" onchange="hideText(this,'no','13_1')"
								<c:if test="${fn:contains(form.getQ13(),'no')}"> checked </c:if>/>No
							</div>

							<div id="13_1" class="12u 12u$(mobile)" style="display:<c:choose><c:when test="${fn:contains(form.getQ13(),'yes')}"> block </c:when> <c:otherwise>none</c:otherwise></c:choose>">
								<textarea id="t13_1" name="q13_1" placeholder="You are limited to a maximum of 30 additional words.">${form.getQ13_1()}</textarea>
							</div>
						</div>
<!--; 

-->
						<div class="row">
							<div class="12u 12u$(mobile)">
								<p>14. What are the ways that your institution uses to collect customers' personal information ?
									<a rel="balloonq14" class="icon fa-question-circle"></a>
								</p>

								<div id="balloonq14" class="balloonstyle">
									<p>You must select at least 5 of the following choices up to as many as you want. "Select All" can enable you to select all the checkboxes.</p>
									<p>In the final Privacy Notice, the standard form will display the first 5 types, with a hyperlink showing the full list of types when clicking it.</p>
								</div>
							</div>

							<div id="checkBox" class="12u 12u$(mobile)">
								<input type="checkbox" id="all2" onClick="toggle(this,'q14whatWay')" /><label for="all2">Select All</label>
							</div>
	 
							<div id="checkBox" class="6u 12u$(mobile)">
								<input type="checkbox" name="q14whatWay" id="way1" value="open an account" 
								<c:if test="${fn:contains(form.getArray2(),'open an account')}"> checked </c:if>/>
								<label for="way1">open an account</label><br>

								<input type="checkbox" name="q14whatWay" id="way2" value="deposit money" 
								<c:if test="${fn:contains(form.getArray2(),'deposit money')}"> checked </c:if>/>
								<label for="way2">deposit money</label><br>

								<input type="checkbox" name="q14whatWay" id="way3" value="pay your bills" 
								<c:if test="${fn:contains(form.getArray2(),'pay your bills')}"> checked </c:if>/>
								<label for="way3">pay your bills</label><br>

								<input type="checkbox" name="q14whatWay" id="way4" value="apply for a loan" 
								<c:if test="${fn:contains(form.getArray2(),'apply for a loan')}"> checked </c:if>/>
								<label for="way4">apply for a loan</label><br>

								<input type="checkbox" name="q14whatWay" id="way5" value="apply for insurance" 
								<c:if test="${fn:contains(form.getArray2(),'apply for insurance')}"> checked </c:if>/>
								<label for="way5">apply for insurance</label><br>

								<input type="checkbox" name="q14whatWay" id="way6" value="pay insurance premiums" 
								<c:if test="${fn:contains(form.getArray2(),'pay insurance premiums')}"> checked </c:if>/>
								<label for="way6">pay insurance premiums</label><br>

								<input type="checkbox" name="q14whatWay" id="way7" value="file an insurance claim" 
								<c:if test="${fn:contains(form.getArray2(),'file an insurance claim')}"> checked </c:if>/>
								<label for="way7">file an insurance claim</label><br>

								<input type="checkbox" name="q14whatWay" id="way8" value="buy securities from us" 
								<c:if test="${fn:contains(form.getArray2(),'buy securities from us')}"> checked </c:if>/>
								<label for="way8">buy securities from us</label><br>
								
								<input type="checkbox" name="q14whatWay" id="way9" value="use your credit or debit card" 
								<c:if test="${fn:contains(form.getArray2(),'use your credit or debit card')}"> checked </c:if>/>
								<label for="way9">use your credit or debit card</label><br>

								<input type="checkbox" name="q14whatWay" id="way10" value="seek financial or tax advice" 
								<c:if test="${fn:contains(form.getArray2(),'seek financial or tax advice')}"> checked </c:if>/>
								<label for="way10">seek financial or tax advice</label><br>

								<input type="checkbox" name="q14whatWay" id="way11" value="seek advice about your investments" 
								<c:if test="${fn:contains(form.getArray2(),'seek advice about your investments')}"> checked </c:if>/>
								<label for="way11">seek advice about your investments</label><br>

								<input type="checkbox" name="q14whatWay" id="way12" value="enter into an investment advisory contract" 
								<c:if test="${fn:contains(form.getArray2(),'enter into an investment advisory contract')}"> checked </c:if>/>
								<label for="way12">enter into an investment advisory contract</label><br>
								
								<input type="checkbox" name="q14whatWay" id="way13" value="direct us to buy securities" 
								<c:if test="${fn:contains(form.getArray2(),'direct us to buy securities')}"> checked </c:if>/>
								<label for="way13">direct us to buy securities</label><br>

								<input type="checkbox" name="q14whatWay" id="way14" value="direct us to sell your securities" 
								<c:if test="${fn:contains(form.getArray2(),'direct us to sell your securities')}"> checked </c:if>/>
								<label for="way14">direct us to sell your securities</label><br>

								<input type="checkbox" name="q14whatWay" id="way15" value="give us your income information" 
								<c:if test="${fn:contains(form.getArray2(),'give us your income information')}"> checked </c:if>/>
								<label for="way15">give us your income information</label><br>

								<input type="checkbox" name="q14whatWay" id="way16" value="provide employment information" 
								<c:if test="${fn:contains(form.getArray2(),'provide employment information')}"> checked </c:if>/>
								<label for="way16">provide employment information</label><br>

								<input type="checkbox" name="q14whatWay" id="way17" value="give us your employment history" 
								<c:if test="${fn:contains(form.getArray2(),'give us your employment history')}"> checked </c:if>/>
								<label for="way17">give us your employment history</label><br>
							</div>

							<div id="checkBox" class="6u 12u$(mobile)">
								<input type="checkbox" name="q14whatWay" id="way18" value="sell securities to us" 
								<c:if test="${fn:contains(form.getArray2(),'sell securities to us')}"> checked </c:if>/>
								<label for="way18">sell securities to us</label><br>

								<input type="checkbox" name="q14whatWay" id="way19" value="apply for financing" 
								<c:if test="${fn:contains(form.getArray2(),'apply for financing')}"> checked </c:if>/>
								<label for="way19">apply for financing</label><br>

								<input type="checkbox" name="q14whatWay" id="way20" value="apply for a lease" 
								<c:if test="${fn:contains(form.getArray2(),'apply for a lease')}"> checked </c:if>/>
								<label for="way20">apply for a lease</label><br>

								<input type="checkbox" name="q14whatWay" id="way21" value="provide account information" 
								<c:if test="${fn:contains(form.getArray2(),'provide account information')}"> checked </c:if>/>
								<label for="way21">provide account information</label><br>

								<input type="checkbox" name="q14whatWay" id="way22" value="pay us by check" 
								<c:if test="${fn:contains(form.getArray2(),'pay us by check')}"> checked </c:if>/>
								<label for="way22">pay us by check</label><br>

								<input type="checkbox" name="q14whatWay" id="way23" value="give us your wage statements" 
								<c:if test="${fn:contains(form.getArray2(),'give us your wage statements')}"> checked </c:if>/>
								<label for="way23">give us your wage statements</label><br>

								<input type="checkbox" name="q14whatWay" id="way24" value="make a wire transfer" 
								<c:if test="${fn:contains(form.getArray2(),'make a wire transfer')}"> checked </c:if>/>
								<label for="way24">make a wire transfer</label><br>

								<input type="checkbox" name="q14whatWay" id="way25" value="provide your mortgage information" 
								<c:if test="${fn:contains(form.getArray2(),'provide your mortgage information')}"> checked </c:if>/>
								<label for="way25">provide your mortgage information</label><br>

								<input type="checkbox" name="q14whatWay" id="way26" value="give us your contact information" 
								<c:if test="${fn:contains(form.getArray2(),'give us your contact information')}"> checked </c:if>/>
								<label for="way26">give us your contact information</label><br>

								<input type="checkbox" name="q14whatWay" id="way27" value="tell us who receives the money" 
								<c:if test="${fn:contains(form.getArray2(),'tell us who receives the money')}"> checked </c:if>/>
								<label for="way27">tell us who receives the money</label><br>

								<input type="checkbox" name="q14whatWay" id="way28" value="tell us where to send the money" 
								<c:if test="${fn:contains(form.getArray2(),'tell us where to send the money')}"> checked </c:if>/>
								<label for="way28">tell us where to send the money</label><br>

								<input type="checkbox" name="q14whatWay" id="way29" value="show your government-issued ID" 
								<c:if test="${fn:contains(form.getArray2(),'show your government-issued ID')}"> checked </c:if>/>
								<label for="way29">show your government-issued ID</label><br>

								<input type="checkbox" name="q14whatWay" id="way30" value="show your driver license" 
								<c:if test="${fn:contains(form.getArray2(),'show your driver license')}"> checked </c:if>/>
								<label for="way30">show your driver license</label><br>

								<input type="checkbox" name="q14whatWay" id="way31" value="order a commodity futures or option trade" 
								<c:if test="${fn:contains(form.getArray2(),'order a commodity futures or option trade')}"> checked </c:if>/>
								<label for="way31">order a commodity futures or option trade</label><br>

								<input type="checkbox" name="q14whatWay" id="way32" value="tell us about your investment or retirement portfolio" 
								<c:if test="${fn:contains(form.getArray2(),'tell us about your investment or retirement portfolio')}"> checked </c:if>/>
								<label for="way32">tell us about your investment or retirement portfolio</label><br>

								<input type="checkbox" name="q14whatWay" id="way33" value="make deposits or withdrawals from your account" 
								<c:if test="${fn:contains(form.getArray2(),'make deposits or withdrawals from your account')}"> checked </c:if>/>
								<label for="way33">make deposits or withdrawals from your account</label>
							</div>
						</div>

						<div class="row">
							<div class="12u 12u$(mobile)">
								<p>15. Does your institution also collect personal information from your affiliates and/or credit bureaus?</p>
							</div>
							<div id="checkBox" class="4u 6u$(mobile)">
								<input type="radio" name="q15" value="yes" onchange="hideDiv(this,'yes','15_1')"
								<c:if test="${fn:contains(form.getQ15(),'yes')}"> checked </c:if>/>Yes
							</div>

							<div id="checkBox" class="4u 6u$(mobile)">
								<input type="radio" name="q15" value="no" onchange="showDiv(this,'no','15_1')"
								<c:if test="${fn:contains(form.getQ15(),'no')}"> checked </c:if>/>No
							</div>
						</div>
<!-- Institutions that collect personal information from their affiliates and/or credit bureaus must include after the bulleted list the following statement: “We also collect your personal information from others, such as credit bureaus, affiliates, or other companies.” -->

						<div id="15_1" class="row" style="margin-left:1em;display:<c:choose><c:when test="${fn:contains(form.getQ15(),'no')}"> block </c:when> <c:otherwise>none</c:otherwise></c:choose>">
							<div class="12u 12u$(mobile)">
								<p>15.1. Does your institution collect personal information from other companies?
									<a rel="balloonq15" class="icon fa-question-circle"></a>
								</p>

								<div id="balloonq15" class="balloonstyle">
									<p>These companies are those other than your affiliates and/or credit bureaus.</p>
								</div>

							</div>
							<div id="checkBox" class="4u 6u$(mobile)">
								<input type="radio" name="q15_1" value="yes"
								<c:if test="${fn:contains(form.getQ15_1(),'yes')}"> checked </c:if>/>Yes
							</div>

							<div id="checkBox" class="4u 6u$(mobile)">
								<input type="radio" name="q15_1" value="no"
								<c:if test="${fn:contains(form.getQ15_1(),'no')}"> checked </c:if>/>No
							</div>
						</div>
<!-- Institutions that do not collect personal information from their affiliates or credit bureaus, but do collect information from other companies must include the following statement instead: “We also collect your personal information from other companies.” Only institutions that do not collect any personal information from affiliates, credit bureaus, or other companies can omit both statements.-->

						<div class="row">
							<p>16. Will your institution provide other important information such as State and/or international privacy law information?</p>

							<div id="checkBox" class="4u 6u$(mobile)">
								<input type="radio" name="q16" value="yes" onchange="showDiv(this,'yes','16_1')"
								<c:if test="${fn:contains(form.getQ16(),'yes')}"> checked </c:if>/>Yes
							</div>

							<div id="checkBox" class="4u 6u$(mobile)">
								<input type="radio" name="q16" value="no" onchange="hideText(this,'no','16_1')"
								<c:if test="${fn:contains(form.getQ16(),'no')}"> checked </c:if>/>No
							</div>

							<div id="16_1" class="12u 12u$(mobile)" style="display:<c:choose><c:when test="${fn:contains(form.getQ16(),'yes')}"> block </c:when> <c:otherwise>none</c:otherwise></c:choose>">
								<textarea id="t16_1" name="q16_1" placeholder="Describe state and/or international privacy law provisions" >${form.getQ16_1()}</textarea>
							</div>

						</div>

						<div class="row">
							<div class="12u 12u$(mobile)">
								<p>17. Based on above questions, if applicable, does your institution allows customers to limit sharing personal information of any kind above?
									<a rel="balloonq17" class="icon fa-question-circle"></a>
								</p>

								<div id="balloonq17" class="balloonstyle">
									<p>You cannot answer NO if at least one answer of the following questions is yes:</p>
									<ul style="margin-left:1em">
				                        <li>Question 7.1</li>				           
				                        <li>Question 8.1.1</li>
				                        <li>Question 9.1.1</li>
				                        <li>Question 9.2</li>
				                        <li>Question 9.5</li>
				                        <li>Question 10</li>
				                    </ul>
								</div>
							</div>

							<div id="checkBox" class="4u 6u$(mobile)">
								<input type="radio" name="q17" value="yes" onchange="show17(this,'yes')"
								<c:if test="${fn:contains(form.getQ17(),'yes')}"> checked </c:if>/>Yes
							</div>

							<div id="checkBox" class="4u 6u$(mobile)">
								<input type="radio" name="q17" value="no" onchange="hide17(this,'no')"
								<c:if test="${fn:contains(form.getQ17(),'no')}"> checked </c:if>/>No
							</div>
						</div>

						<div id="17_1" class="row" style="margin-left:1em;display:<c:choose><c:when test="${fn:contains(form.getQ17(),'yes')}"> block </c:when> <c:otherwise>none</c:otherwise></c:choose>">
							<div class="12u 12u$(mobile)">
								<p>17.1. Does your institution enable Opt-Out by telphone?</p>
							</div>
							<div id="checkBox" class="4u 6u$(mobile)">
								<input type="radio" name="q17_1" value="yes"
								<c:if test="${fn:contains(form.getQ17_1(),'yes')}"> checked </c:if>/>Yes
							</div>

							<div id="checkBox" class="4u 6u$(mobile)">
								<input type="radio" name="q17_1" value="no"
								<c:if test="${fn:contains(form.getQ17_1(),'no')}"> checked="true" </c:if>/>No
							</div>
						</div>

						<div id="17_2" class="row" style="margin-left:1em;display:<c:choose><c:when test="${fn:contains(form.getQ17(),'yes')}"> block </c:when> <c:otherwise>none</c:otherwise></c:choose>">
							<div class="12u 12u$(mobile)">
								<p>17.2. Does your institution enable Opt-Out Online?</p>
							</div>
							<div id="checkBox" class="4u 6u$(mobile)">
								<input type="radio" name="q17_2" value="yes"
								<c:if test="${fn:contains(form.getQ17_2(),'yes')}"> checked </c:if>/>Yes
							</div>

							<div id="checkBox" class="4u 6u$(mobile)">
								<input type="radio" name="q17_2" value="no"
								<c:if test="${fn:contains(form.getQ17_2(),'no')}"> checked="true" </c:if>/>No
							</div>
						</div>

						<div id="17_3" class="row" style="margin-left:1em;display:<c:choose><c:when test="${fn:contains(form.getQ17(),'yes')}"> block </c:when> <c:otherwise>none</c:otherwise></c:choose>">
							<div class="12u 12u$(mobile)">
								<p>17.3. Does your institution enable Opt-Out with Mail-In Form?</p>
							</div>
							<div id="checkBox" class="4u 6u$(mobile)">
								<input type="radio" name="q17_3" value="yes" onchange="showMail(this,'yes')"
								<c:if test="${fn:contains(form.getQ17_3(),'yes')}"> checked </c:if>/>Yes
							</div>

							<div id="checkBox" class="4u 6u$(mobile)">
								<input type="radio" name="q17_3" value="no" onchange="hideMail(this,'no')"
								<c:if test="${fn:contains(form.getQ17_3(),'no')}"> checked="true" </c:if>/>No
							</div>
						</div>

						<div class="row" id="17_3_1" style="margin-left:3em;display:<c:choose><c:when test="${fn:contains(form.getQ17_3(),'yes')}"> block </c:when> <c:otherwise>none</c:otherwise></c:choose>">
							<div class="12u 12u$(mobile)">
								<p>17.3.1. Does your institution provide your joint accountholders the choice to opt-out for only one accountholder?</p>
							</div>
							<div id="checkBox" class="4u 6u$(mobile)">
								<input type="radio" name="q17_3_1" value="yes"
								<c:if test="${fn:contains(form.getQ17_3_1(),'yes')}"> checked </c:if>/>Yes
							</div>

							<div id="checkBox" class="4u 6u$(mobile)">
								<input type="radio" name="q17_3_1" value="no"
								<c:if test="${fn:contains(form.getQ17_3_1(),'no')}"> checked="true" </c:if>/>No
							</div>
						</div>

						<div class="row" id="17_3_2" style="margin-left:3em;display:<c:choose><c:when test="${fn:contains(form.getQ17_3(),'yes')}"> block </c:when> <c:otherwise>none</c:otherwise></c:choose>">
							<div class="12u 12u$(mobile)">
								<p>17.3.2. Does your institution require customers to provide additional or different information other than name and address, such as a random opt-out number or a truncated account number?</p>
							</div>

							<div id="checkBox" class="4u 6u$(mobile)">
								<input type="radio" name="q17_3_2" id="17321" value="random opt-out" 
								<c:if test="${fn:contains(form.getQ17_3_2(),'random opt-out')}"> checked </c:if>/>
								<label for="17321">random opt-out number</label>
							</div>

							<div id="checkBox" class="4u 6u$(mobile)">
								<input type="radio" name="q17_3_2" id="17322" value="truncated account" 
								<c:if test="${fn:contains(form.getQ17_3_2(),'truncated account')}"> checked </c:if>/>
								<label for="17321">truncated account number</label>
							</div>

							<div id="checkBox" class="4u 6u$(mobile)">
								<input type="radio" name="q17_3_2" id="17323" value="account" 
								<c:if test="${fn:contains(form.getQ17_3_2(),'account')}"> checked </c:if>/>
								<label for="17321">neither of the above</label>
							</div>
						</div>

						<div class="row" id="17_3_3" style="margin-left:3em;display:<c:choose><c:when test="${fn:contains(form.getQ17_3(),'yes')}"> block </c:when> <c:otherwise>none</c:otherwise></c:choose>">
							<div class="12u 12u$(mobile)">
								<p>17.3.3. What is your institution's mailing address?</p>
							</div>

							<div id="labelLeft" class="7u 12u$(mobile)">
								<label for="t17331">Street Address 1</label>
								<input type="text" id="t17331" name="address1" placeholder="Enter Street Name and Number" value="${form.getAddress1()}" >
							</div>

							<div id="labelLeft" class="7u 12u$(mobile)">
								<label for="t17332">Street Address 2</label>
								<input type="text" id="t17332" name="address2" placeholder="Enter Apt Number or Building Name" value="${form.getAddress2()}" >
							</div>

							<div id="labelLeft" class="7u 12u$(mobile)">
								<label for="t17333">City</label>
								<input type="text" id="t17333" name="city" placeholder="Enter City Name" value="${form.getCity()}">
							</div>

							<div id="labelLeft" class="7u 12u$(mobile)">
								<label for="t17334">State</label>
								<input type="text" id="t17334" name="state" placeholder="Enter State Name" value="${form.getState()}" >
							</div>

							<div id="labelLeft" class="7u 12u$(mobile)">
								<label for="t17335">Zipcode</label>
								<input type="text" id="t17335" name="zipcode" placeholder="Enter Zipcode" value="${form.getZipcode()}" >
							</div>

						</div>

						<div class="row">
							<div id="prev" class="6u 6u$(mobile)">
								<a href="#disclosure" class="button scrolly">&#60;&#60; Disclosure Info</a>
							</div>
							<div id="next" class="6u 6u$(mobile)">
							<input id="start" class="button scrolly" type="submit" name="action" value="Complete" />
					
							</div>
						</div>
				</div>
			</section>

		</div>

		</form>

	<!-- Footer -->
		<div id="footer">

			<!-- Copyright -->
				<ul class="copyright">
					<li>&copy; Interactive Form Builder. All rights reserved.</li>
					<li>Design: <a href="#">Team3 Echo</a></li>
				</ul>

		</div>

	<!-- Scripts -->
		<script src="assets/js/jquery.min.js"></script>
		<script src="assets/js/jquery.scrolly.min.js"></script>
		<script src="assets/js/jquery.scrollzer.min.js"></script>
		<script src="assets/js/skel.min.js"></script>
		<script src="assets/js/util.js"></script>
		<script src="assets/js/main.js"></script>

	</body>
</html>
