<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
		<title>Privacy Notice Interactive Form Builder</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<link rel="stylesheet" href="assets/css/main.css" />

		<script type="text/javascript" src="assets/js/additional.js"></script>
	</head>

<body>

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
							<li><a href="#top" id="top-link" class="skel-layers-ignoreHref"><span class="icon fa-home">Intro</span></a></li>
							<li><a href="#basic" id="basic-link" class="skel-layers-ignoreHref"><span class="icon fa-th">Basic</span></a></li>
							<li><a href="#disclosure" id="disclosure-link" class="skel-layers-ignoreHref"><span class="icon fa-user">Disclosure</span></a></li>
							<li><a href="#protection" id="protection-link" class="skel-layers-ignoreHref"><span class="icon fa-envelope">Protection</span></a></li>
						</ul>
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
						<h2 class="alt">Welcome to the Interactive Form Builder <br>for <a href="#">Privacy Policy Notice</a><br/>
					</header>

					<footer>
						<a href="#basic" id="start" class="button scrolly">Start</a>
					</footer>

				</div>
			</section>

		<!-- Basic Information -->
			<section id="basic" class="two">
				<div class="container">

					<header>
						<h2>Basic Information</h2>
					</header>

					<form method="POST" action="save.do">
						<div class="row">
							<div id="prev" class="6u 6u$(mobile)">
							</div>
							<div id="next" class="6u 6u$(mobile)">
								<a href="#disclosure" class="button scrolly">Disclosure Info &#62;&#62;</a>
							</div>
						</div>

						<div class="row">
							<p>1. What is the name of the financial institution providing the notice or a common identity of affiliated institutions jointly providing the notice?</p>
							<div class="6u 12u$(mobile)">
								<input type="text" name="name" placeholder="Name of Financial Institution" />
							</div>
						</div>

						<div class="row">
							<p>2. What is the phone number of your institution for customers to call if they have questions about the privacy notic?</p>
							<div class="6u 12u$(mobile)">
								<input type="text" name="phone" placeholder="Phone Number" />
							</div>
						</div>

						<div class="row">
							<div class="12u 12u$(mobile)">
								<p>3. Is the phone number toll free?</p>
							</div>
							<div id="checkBox" class="4u 6u$(mobile)">
								<input type="radio" name="q3" value="yes" />Yes
							</div>

							<div id="checkBox" class="4u 6u$(mobile)">
								<input type="radio" name="q3" value="no" />No
							</div>
						</div>

						<div class="row">
							<p>4. What is the website of your institution for customers to visit if they have questions about the privacy notic?</p>
							<div class="6u 12u$(mobile)">
								<input type="text" name="website" placeholder="Website Address" />
							</div>
						</div>

						<div class="row">
							<div class="12u 12u$(mobile)">
								<p>5. Does your institution have affiliate(s)?</p>
							</div>
							<div id="checkBox" class="4u 6u$(mobile)">
								<input type="radio" name="q5" value="yes" onchange="showAffi(this,'yes')" />Yes
							</div>

							<div id="checkBox" class="4u 6u$(mobile)">
								<input type="radio" name="q5" value="no" onchange="hideAffi(this,'no')" />No
							</div>
						</div>

						<div class="row">
							<div id="prev" class="4u 4u$(mobile)">
							</div>
							<div id="save" class="4u 4u$(mobile)">
								<input type="submit" name="action" value="save" />
							</div>
							<div id="next" class="4u 4u$(mobile)">
								<a href="#disclosure" class="button scrolly">Disclosure Info &#62;&#62;</a>
							</div>
						</div>
					</form>

				</div>
			</section>

		<!-- Disclosure Information -->
			<section id="disclosure" class="three">
				<div class="container">

					<header>
						<h2>Disclosure Information</h2>
					</header>

					<form method="post" action="#">

						<div class="row">
							<div id="prev" class="6u 6u$(mobile)">
								<a href="#basic" class="button scrolly">&#60;&#60; Basic Info</a>
							</div>
							<div id="next" class="6u 6u$(mobile)">
								<a href="#protection" class="button scrolly">Protection Info &#62;&#62;</a>
							</div>
						</div>

						<div class="row">
							<p>6. What are the types of personal information your institution <strong>DOES NOT</strong> collect and share?</p>

							<div id="checkBox" class="4u 12u$(mobile)">
								<input type="checkbox" name="q6whatData" id="data1" value="income" />
								<label for="data1">Income</label><br>

								<input type="checkbox" name="q6whatData" id="data2" value="assets" />
								<label for="data2">Assets</label><br>

								<input type="checkbox" name="q6whatData" id="data3" value="retireAssets" />
								<label for="data3">Retirement Assets</label><br>

								<input type="checkbox" name="q6whatData" id="data4" value="accountBalances" />
								<label for="data4">Account Balances</label><br>

								<input type="checkbox" name="q6whatData" id="data5" value="investmentExperience" />
								<label for="data5">Investment Experience</label><br>

								<input type="checkbox" name="q6whatData" id="data6" value="checkingInfo" />
								<label for="data6">Checking Account Information</label><br>

								<input type="checkbox" name="q6whatData" id="data7" value="wireTransfer" />
								<label for="data7">Wire Transfer Instructions</label><br>
							</div>

							<div id="checkBox" class="4u 12u$(mobile)">
								<input type="checkbox" name="whatData" value="paymentHistory" />Payment History<br>
								<input type="checkbox" name="whatData" value="transactionHistory" />Transaction History<br>
								<input type="checkbox" name="whatData" value="purchaseHistory" />Purchase History<br>
								<input type="checkbox" name="whatData" value="creditHistory" />Credit History<br>
								<input type="checkbox" name="whatData" value="insuranceHistory" />Insurance Claim History<br>
								<input type="checkbox" name="whatData" value="overdraftHistory" />Overdraft History<br>
								<input type="checkbox" name="whatData" value="medicalInfo" />Medical Information<br>
							</div>

							<div id="checkBox" class="4u 12u$(mobile)">
								<input type="checkbox" name="whatData" value="creditScores" />Credit Scores<br>
								<input type="checkbox" name="whatData" value="creditInsuranceScores" />Credit-based Insurance Scores<br>
								<input type="checkbox" name="whatData" value="riskTolerance" />Risk Tolerance<br>
								<input type="checkbox" name="whatData" value="medicalDebts" />Medical-related Debts<br>
								<input type="checkbox" name="whatData" value="creditDebt" />Credit Card or Other Debt<br>
								<input type="checkbox" name="whatData" value="mortgage" />Mortgage Rates and Payments<br>
								<input type="checkbox" name="whatData" value="employmentInfo" />Employment Information<br>
							</div>
						</div>

	<!-- question 7 does not provide opt-out -->
						<div class="row">
							<p>7. Does your institution share customer’s personal information for everyday business purpose? Such as to process customer’s transcations, maintain their accounts, respond to court orders and legal investigations, or report to credit bureaus.</p>
							
							<div id="checkBox" class="4u 6u$(mobile)">
								<input type="radio" name="q7" value="yes" />Yes
							</div>

							<div id="checkBox" class="4u 6u$(mobile)">
								<input type="radio" name="q7" value="no" />No
							</div>
						</div>

						<div class="row">
							<p>8. Does your institution share customer’s personal information for your marketing purposes to offer your products and services to customers?</p>
							
							<div id="checkBox" class="4u 6u$(mobile)">
								<input type="radio" name="q8" value="yes" onchange="showDiv(this,'yes','8-1')"/>Yes
							</div>

							<div id="checkBox" class="4u 6u$(mobile)">
								<input type="radio" name="q8" value="no" onchange="hideDiv(this, 'no','8-1')"/>No
							</div>
						</div>

						<div id="8-1" class="row" style="display:none">
							<div class="12u 12u$(mobile)">
								<p>8.1. Does your institution provide opt-out for customers to limit this sharing?</p>
							</div>
							
							<div id="checkBox" class="4u 6u$(mobile)">
								<input type="radio" name="q8_1" value="yes" />Yes
							</div>

							<div id="checkBox" class="4u 6u$(mobile)">
								<input type="radio" name="q8_1" value="no" />No
							</div>
						</div>

						<div class="row">
							<p>9. Does your institution share customer’s personal information for joint marketing with other financial companies?</p>
							
							<div id="checkBox" class="4u 6u$(mobile)">
								<input type="radio" name="q9" value="yes" onchange="showDiv(this,'yes','9-1')" />Yes
							</div>

							<div id="checkBox" class="4u 6u$(mobile)">
								<input type="radio" name="q9" value="no" onchange="hideDiv(this,'no','9-1')"/>No
							</div>
						</div>

						<div id="9-1" class="row" style="display:none">
							<div class="12u 12u$(mobile)">
								<p>9.1. Does your institution provide opt-out for customers to limit this sharing?</p>
							</div>
							
							<div id="checkBox" class="4u 6u$(mobile)">
								<input type="radio" name="q9_1" value="yes" />Yes
							</div>

							<div id="checkBox" class="4u 6u$(mobile)">
								<input type="radio" name="q9_1" value="no" />No
							</div>
						</div>

						<div id="10" class="row" style="display:none">
							<p>10. Does your institution share customer’s personal information about transactions and experiences for your affiliates’ everyday business purposes?</p>
							
							<div id="checkBox" class="4u 6u$(mobile)">
								<input type="radio" name="q10" value="yes" onchange="show10(this,'yes','10-1')" />Yes
							</div>

							<div id="checkBox" class="4u 6u$(mobile)">
								<input type="radio" name="q10" value="no" onchange="hide10(this,'no','10-1')" />No
							</div>
						</div>

						<div id="10-1" class="row" style="display:none">
							<div class="12u 12u$(mobile)">
								<p>10.1. Does your institution provide opt-out for customers to limit this sharing?</p>
							</div>
							
							<div id="checkBox" class="4u 6u$(mobile)">
								<input type="radio" name="q10_1" value="yes" />Yes
							</div>

							<div id="checkBox" class="4u 6u$(mobile)">
								<input type="radio" name="q10_1" value="no" />No
							</div>
						</div>

	<!-- question 11 must provide opt-out -->
						<div id="11" class="row" style="display:none">
							<p>11. Does your institution share customer’s personal information about creditworthiness for your affiliates’ everyday business purposes?</p>
							
							<div id="checkBox" class="4u 6u$(mobile)">
								<input type="radio" name="q11" value="yes" onchange="show12()" />Yes
							</div>

							<div id="checkBox" class="4u 6u$(mobile)">
								<input type="radio" name="q11" value="no" onchange="hide12()" />No
							</div>
						</div>

	<!-- For our affiliates to market to you. This reason incorporates sharing information specified in section 624 of the FCRA. This reason may be omitted from the disclosure table when: the institution does not have affiliates (or does not disclose personal information to its affiliates); the institution's affiliates do not use personal information in a manner that requires an opt-out; or the institution provides the affiliate marketing notice separately. Institutions that include this reason must provide an opt-out of indefinite duration.
	 -->
						<div id="12" class="row" style="display:none">
							<p>12. Does your institution's affiliates use customer’s personal information in a manner that requires an opt-out?</p>
							
							<div id="checkBox" class="4u 6u$(mobile)">
								<input type="radio" name="q12" value="yes" onchange="showDiv(this, 'yes','12-1')"/>Yes
							</div>

							<div id="checkBox" class="4u 6u$(mobile)">
								<input type="radio" name="q12" value="no" onchange="hide1212(this, 'no')"/>No
							</div>
						</div>

						<div id="12-1" class="row" style="display:none">
							<div class="12u 12u$(mobile)">
								<p>12.1. Does your institution provide the affiliate marketing notice separately?</p>
							</div>
							
							<div id="checkBox" class="4u 6u$(mobile)">
								<input type="radio" name="q12_1" value="yes" onchange="hideDiv(this,'yes','12-2')"/>Yes
							</div>

							<div id="checkBox" class="4u 6u$(mobile)">
								<input type="radio" name="q12_1" value="no" onchange="showDiv(this,'no','12-2')"/>No
							</div>
						</div>
						

						<div id="12-2" class="row" style="display:none">
							<div class="12u 12u$(mobile)">
								<p>12.2. Do you share customer’s personal information about transactions and experiences for your affiliates’ everyday business purposes – information?</p>
							</div>
							
							<div id="checkBox" class="4u 6u$(mobile)">
								<input type="radio" name="q12_2" value="yes" />Yes
							</div>

							<div id="checkBox" class="4u 6u$(mobile)">
								<input type="radio" name="q12_2" value="no" />No
							</div>
						</div>

						<div class="row">
							<div class="12u 12u$(mobile)">
								<p>13. Do you share customer’s personal information for nonaffiliates market to customer?</p>
							</div>
							<div id="checkBox" class="4u 6u$(mobile)">
								<input type="radio" name="q13" value="yes"/>Yes
							</div>

							<div id="checkBox" class="4u 6u$(mobile)">
								<input type="radio" name="q13" value="no"/>No
							</div>
						</div>

						<div class="row">
							<div class="12u 12u$(mobile)">
								<p>14. For new customers, how long do you begin sharing their information from the date you send this notice?</p>
							</div>
							<div class="6u 12u$(mobile)">
								<input type="text" name="q14" placeholder="Input a number bigger than 30" />
							</div>
						</div>

						<div class="row">
							<div id="prev" class="4u 4u$(mobile)">
								<a href="#basic" class="button scrolly">&#60;&#60; Basic Info</a>
							</div>
							<div id="save" class="4u 4u$(mobile)">
								<a href="#" class="button">Save</a>
							</div>
							<div id="next" class="4u 4u$(mobile)">
								<a href="#protection" class="button scrolly">Protection Info &#62;&#62;</a>
							</div>
						</div>

					</form>
				</div>
			</section>

		<!-- Protection Information -->
			<section id="protection" class="four">
				<div class="container">

					<header>
						<h2>Protection Information</h2>
					</header>

					<form method="post" action="#">

						<div class="row">
							<div id="prev" class="6u 6u$(mobile)">
								<a href="#disclosure" class="button scrolly">&#60;&#60; Disclosure Info</a>
							</div>
						</div>

						<div class="row">
							<div class="12u 12u$(mobile)">
								<p>15. Is your institution the only financial institution provides the model form?</p>
							</div>
							<div id="checkBox" class="4u 6u$(mobile)">
								<input type="radio" name="15q" value="yes" onchange="hideDiv(this, 'yes','15-1')"/>Yes
							</div>

							<div id="checkBox" class="4u 6u$(mobile)">
								<input type="radio" name="15q" value="no" onchange="showDiv(this, 'no','15-1')"/>No
							</div>
						</div>

						<div id="15-1" class="row" style="display:none">
							<div class="12u 12u$(mobile)">
								<p>15.1. Who are the financial institutions providing this privacy notice?</p>
							</div>
							<div class="12u 12u$(mobile)">
								<textarea name="q15_1" placeholder="List all the financial institutions providing this privacy notice" /></textarea>
							</div>
						</div>

						<div class="row">
							<div class="12u 12u$(mobile)">
								<p>16. Does your institution provide additional information pertaining to your safeguards practices? Such information may include information about your use of cookies or other measures you uses to safeguard personal information.</p>
							</div>
							<div id="checkBox" class="4u 6u$(mobile)">
								<input type="radio" name="q16" value="yes" onchange="showDiv(this,'yes','additional')"/>Yes
							</div>

							<div id="checkBox" class="4u 6u$(mobile)">
								<input type="radio" name="q16" value="no" onchange="hideDiv(this,'no','additional')"/>No
							</div>

							<div id="additional" class="12u 12u$(mobile)" style="display:none">
								<textarea name="q16_1" placeholder="You are limited to a maximum of 30 additional words." value="" /></textarea>
							</div>
						</div>
<!--; 
apply for financing; 
apply for a lease; 
provide account information; 
give us your contact information; 
pay us by check; 
give us your wage statements; 
provide your mortgage information; 
make a wire transfer; 
tell us who receives the money; 
tell us where to send the money; 
show your government-issued ID; 
show your driver’s license; 
order a commodity futures or option trade.
-->
						<div class="row">
							<p>17. What are the ways that your institution <strong>DOES NOT</strong> use to collect customers' personal information ?</p>
	 
							<div id="checkBox" class="4u 12u$(mobile)">
								<input type="checkbox" name="q17whatWay" value="income" />Open an Account<br>
								<input type="checkbox" name="q17whatWay" value="assets" />deposit money<br>
								<input type="checkbox" name="q17whatWay" value="retireAssets" />pay your bills<br>
								<input type="checkbox" name="q17whatWay" value="accountBalances" />apply for a loan<br>
								<input type="checkbox" name="q17whatWay" value="investmentExperience" />use your credit or debit card<br>
								<input type="checkbox" name="q17whatWay" value="checkingInfo" />make deposits or withdrawals from your account<br>
								<input type="checkbox" name="q17whatWay" value="wireTransfer" />seek financial or tax advice<br>
							</div>

							<div id="checkBox" class="4u 12u$(mobile)">
								<input type="checkbox" name="q17whatWay" value="paymentHistory" />enter into an investment advisory contract<br>
								<input type="checkbox" name="q17whatWay" value="transactionHistory" />apply for insurance<br>
								<input type="checkbox" name="q17whatWay" value="purchaseHistory" />pay insurance premiums<br>
								<input type="checkbox" name="q17whatWay" value="creditHistory" />file an insurance claim<br>
								<input type="checkbox" name="q17whatWay" value="insuranceHistory" />seek advice about your investments<br>
								<input type="checkbox" name="q17whatWay" value="overdraftHistory" />buy securities from us<br>
								<input type="checkbox" name="q17whatWay" value="medicalInfo" />sell securities to us<br>
							</div>

							<div id="checkBox" class="4u 12u$(mobile)">
								<input type="checkbox" name="q17whatWay" value="creditScores" />direct us to buy securities<br>
								<input type="checkbox" name="q17whatWay" value="creditInsuranceScores" />direct us to sell your securities<br>
								<input type="checkbox" name="q17whatWay" value="riskTolerance" />give us your income information<br>
								<input type="checkbox" name="q17whatWay" value="medicalDebts" />provide employment information<br>
								<input type="checkbox" name="q17whatWay" value="creditDebt" />give us your employment history<br>
								<input type="checkbox" name="q17whatWay" value="mortgage" />tell us about your investment or retirement portfolio<br>
								<input type="checkbox" name="q17whatWay" value="employmentInfo" />tell us about your investment or retirement earnings<br>
							</div>
						</div>

						<div class="row">
							<div class="12u 12u$(mobile)">
								<p>18. Does your institution also collect personal information from your affiliates and/or credit bureaus?</p>
							</div>
							<div id="checkBox" class="4u 6u$(mobile)">
								<input type="radio" name="q18" value="yes" onchange="hideDiv(this,'yes','18-1')"/>Yes
							</div>

							<div id="checkBox" class="4u 6u$(mobile)">
								<input type="radio" name="q18" value="no" onchange="showDiv(this,'no','18-1')"/>No
							</div>
						</div>
<!-- Institutions that collect personal information from their affiliates and/or credit bureaus must include after the bulleted list the following statement: “We also collect your personal information from others, such as credit bureaus, affiliates, or other companies.” -->

						<div id="18-1" class="row" style="display:none">
							<div class="12u 12u$(mobile)">
								<p>18.1. Does your institution collect personal information from other companies?</p>
							</div>
							<div id="checkBox" class="4u 6u$(mobile)">
								<input type="radio" name="q18_1" value="yes"/>Yes
							</div>

							<div id="checkBox" class="4u 6u$(mobile)">
								<input type="radio" name="q18_1" value="no"/>No
							</div>
						</div>
<!-- Institutions that do not collect personal information from their affiliates or credit bureaus, but do collect information from other companies must include the following statement instead: “We also collect your personal information from other companies.” Only institutions that do not collect any personal information from affiliates, credit bureaus, or other companies can omit both statements.-->

						<div class="row">
							<p>19. Will your institution provide other important information such as State and/or international privacy law information?</p>

							<div id="checkBox" class="4u 6u$(mobile)">
								<input type="radio" name="q19" value="yes" onchange="showDiv(this,'yes','law')"/>Yes
							</div>

							<div id="checkBox" class="4u 6u$(mobile)">
								<input type="radio" name="q19" value="no" onchange="hideDiv(this,'no','law')"/>No
							</div>

							<div id="law" class="12u 12u$(mobile)" style="display:none">
								<textarea name="law" placeholder="Describe state and/or international privacy law provisions" value="" /></textarea>
							</div>

						</div>

						<div class="row">
							<p>19.1. Will your institution provide other important information such as Acknowledgment of receipt form?</p>

							<div id="checkBox" class="4u 6u$(mobile)">
								<input type="radio" name="q19_1" value="yes" onchange="showDiv(this,'yes','recept')"/>Yes
							</div>

							<div id="checkBox" class="4u 6u$(mobile)">
								<input type="radio" name="q19_1" value="no" onchange="hideDiv(this,'no','recept')"/>No
							</div>

							<div id="recept" class="12u 12u$(mobile)" style="display:none">
								<textarea name="q19_1recept" placeholder="Describe state and/or international privacy law provisions" value=""/></textarea>
							</div>

						</div>

						<div class="row">
							<p>20. Does your institution have any common corporate identity of financial institution as affiliates?</p>
							
							<div id="checkBox" class="4u 6u$(mobile)">
								<input type="radio" name="q20" value="yes" onchange="showDiv(this,'yes','common')" />Yes
							</div>

							<div id="checkBox" class="4u 6u$(mobile)">
								<input type="radio" name="q20" value="no" onchange="hideDiv(this,'no','common')"/>No
							</div>

							<div id="common" class="12u 12u$(mobile)" style="display:none">
								<textarea name="q20_common" placeholder="List the common corporate identity of financial institution of your institution's affiliates" value=""/></textarea>
							</div>
						</div>

						<div class="row">
							<div class="12u 12u$(mobile)">
								<p>21. Does your institution have any financial institution as affiliates?</p>
							</div>

							<div id="checkBox" class="4u 6u$(mobile)">
								<input type="radio" name="q21" value="yes" onchange="showDiv(this,'yes','finance')" />Yes
							</div>

							<div id="checkBox" class="4u 6u$(mobile)">
								<input type="radio" name="q21" value="no" onchange="hideDiv(this,'no','finance')"/>No
							</div>

							<div id="finance" class="12u 12u$(mobile)" style="display:none">
								<textarea name="q21finance" placeholder="List the financial institution of your institution's affiliates" value="" /></textarea>
							</div>
						</div>

						<div class="row">
							<div class="12u 12u$(mobile)">
								<p>22. Does your institution have any nonfinancial companies as affiliates?</p>
							</div>

							<div id="checkBox" class="4u 6u$(mobile)">
								<input type="radio" name="q22" value="yes" onchange="showDiv(this,'yes','nonfin')" />Yes
							</div>

							<div id="checkBox" class="4u 6u$(mobile)">
								<input type="radio" name="q22" value="no" onchange="hideDivT(this,'no','nonfin')"/>No
							</div>

							<div id="nonfin" class="12u 12u$(mobile)" style="display:none">
								<textarea name="q22nonfin" placeholder="List the nonfinancial companies of your institution's affiliates"/></textarea>
							</div>
						</div>

						<div class="row">
							<div class="12u 12u$(mobile)">
								<p>23. Does your institution have any other companies as affiliates?</p>
							</div>
							<div id="checkBox" class="4u 6u$(mobile)">
								<input type="radio" name="q23" value="yes" onchange="showDiv(this,'yes','other')" />Yes
							</div>

							<div id="checkBox" class="4u 6u$(mobile)">
								<input type="radio" name="q23" value="no" onchange="hideDiv(this,'no','other')"/>No
							</div>

							<div id="other" class="12u 12u$(mobile)" style="display:none">
								<textarea name="q23other" placeholder="List other companies of your institution's affiliates" value="" /></textarea>
							</div>
						</div>

						<div id="24" class="row" style="display:none">
							<p>24. What are the categories of nonaffiliated third party companies of your institution that you share personal information with?</p>

							<div id="nonAffi" class="12u 12u$(mobile)">
								<textarea name="nonAffi" placeholder="List categories of companies such as mortgage companies, insurance companies, direct marketing companies, and nonprofit organizations" value="" /></textarea>
							</div>
						</div>

						<div id="25" class="row" style="display:none">
							<p>25. What are the categories of joint marketing companies of your institution that you share personal information with?</p>

							<div id="joint" class="12u 12u$(mobile)">
								<textarea name="joint" placeholder="List categories of companies such as credit card companies" value="" ></textarea>
							</div>
						</div>

						
						<div class="row">
							<div id="prev" class="4u 4u$(mobile)">
								<a href="#disclosure" class="button scrolly">&#60;&#60; Disclosure Info</a>
							</div>
							<div id="save" class="4u 4u$(mobile)">
								<a href="#" class="button">Save</a>
							</div>
							<div id="next" class="4u 4u$(mobile)">
								<a href="#" class="button scrolly">Complete &#62;&#62;</a>
							</div>
						</div>

					</form>
				</div>
			</section>



		</div>

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
