<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ page import="form.DataForm"%>
<%@ page language="java" import="java.util.*"%>
<!DOCTYPE HTML>

<html>
	<head>
		<title>Privacy Notice Result</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<link rel="stylesheet" href="assets/css/main.css" />
		
		<script type="text/javascript" src="assets/js/balloon.js"></script>
	</head>
	
	<%
		DataForm form = (DataForm) request.getSession().getAttribute("form");
		String q5 = form.getArray1();
		String[] q5Array = form.getQ5whatData();
		
		String q14 = form.getArray2();
		String[] q14Array = form.getQ14whatWay();
		String q9 = form.getQ9();
		String q9_1 = form.getQ9_1();
		String q9_2 = form.getQ9_2();
		String q9_3 = form.getQ9_3();
		String q9_4 = form.getQ9_4();
		
	
		boolean flag = true;
		boolean flag9192 = false;
		if (q9.equals("no")) {
			flag = false;
		} 
		
		else if (q9_1.equals("no") && q9_2.equals("no")) {
			flag = false;
			flag9192 = true;
		}
		else if (q9_3.equals("no") || q9_4.equals("yes")) {
			flag = false;
		}
		
		int length = form.getQ5whatData().length;
		String[] test = new String[form.getQ5whatData().length];
	%>
	
	
	
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
						<ul>
							<li><a href="#" id="edit" ><span class="icon fa-th">Edit</span></a></li>
							<li><a href="#" id="pdf" ><span class="icon fa-user">Download PDF</span></a></li>
							<li><a href="#" id="html" ><span class="icon fa-envelope">Download HTML</span></a></li>
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


<!---TO DO----->
	<div id="balloonWhat" class="balloonstyle">
		<h3>Full List of Personal Information We Collect and Share</h3>
		<ul style="margin-left: 1em">
			<li>income; account balances; payment history;</li>
			<li>transaction history; transaction or loss history;</li>
			<li>credit history; credit scores; assets;</li>
			<li>investment experience; credit-based insurance scores;</li>
			<!-- there are many many more!! -->
		</ul>
	</div>




	<div id="main">
			<section id="result" class="two">
				<div class="container">

					<header>
						<h2>U.S. Consumer Privacy Notice<h2>
					</header>
					
					<div>test ${length}</div>
					

					<div class="row" style="text-align:right">
						Rev. ${ XXX }   <!-- the time of submission -->
					</div>

					<table class="default">
						<thead>
							<tr>
								<th id="heads">FACTS</th>
								<th id="left">WHAT DOES ${form.getName()} DO WITH YOUR PERSONAL INFORMATION?</th>
							</tr>
						</thead>

						<tbody>
							<tr>
								<td id="left">Why?</td>
								<td>
									Financial companies choose how they share your personal information. Under federal law, that means personally identifiable information. Federal law gives consumers the right to limit some but not all sharing. Federal law also requires us to tell you how we collect, share, and protect your personal information. Please read this notice carefully to understand what we do.
								</td>
							</tr>

							<tr>
								<td id="left">What?</td>
								<td>
									The types of personal information we collect and share depend on the product or service you have with us. This information can <a rel="balloonWhat" >include:</a>
									<ul>
										<li>Social Security number and ${q5Array[0]} </li>
										<li>${q5Array[1]} and ${q5Array[2]}</li>
										<li>${q5Array[3]} and ${q5Array[4]}</li>
									</ul>
								</td>
							</tr>
							
							
							<tr>
								<td id="left">How?</td>
								<td>
									All financial companies need to share customers' personal information to run their everyday business. In the section below, we list the reasons financial companies can share their customers' personal information; the reasons ${form.getName()} chooses to share; and whether you can limit this sharing.
								</td>
							</tr>
						</tbody>

					</table>

					<table class="default">
						<thead>
							<tr>
								<th>Reasons we can share your personal information</th>
								<th id="wider">Does ${form.getName()} share?</th>
								<th id="wider">Can you limit this sharing?</th>
							</tr>
						</thead>

						<tbody id="centre">
							<tr>
								<td><strong>For our everyday business purposes</strong> - such as to process your transactions, maintain your account(s), respond to court orders and legal investigations, or report to credit bureaus</td>
								<td>
									<c:if test="${fn:contains(form.getQ6(),'yes')}"> Yes </c:if>
									<c:if test="${fn:contains(form.getQ6(),'no')}"> No </c:if>
								</td>
								<td>
									<c:if test="${fn:contains(form.getQ6(),'yes')}"> No </c:if>
									<c:if test="${fn:contains(form.getQ6(),'no')}"> We don't share </c:if>
								</td>
							</tr>

							<tr>
								<td><strong>For our marketing purposes</strong> - with service providers we use to offer our products and services to you</td>
								<td>
									<c:if test="${fn:contains(form.getQ7(),'yes')}"> Yes </c:if>
									<c:if test="${fn:contains(form.getQ7(),'no')}"> No </c:if>
								</td>
								<td>
									<c:if test="${fn:contains(form.getQ7(),'no')}"> We don't share </c:if>
									<c:if test="${fn:contains(form.getQ7_1(),'yes')}"> Yes </c:if>
									<c:if test="${fn:contains(form.getQ7_1(),'no')}"> No </c:if>
								</td>
							</tr>

							<tr>
								<td><strong>For joint marketing with other financial companies</strong></td>
								<td>
									<c:if test="${fn:contains(form.getQ8(),'no')}"> No </c:if>
									<c:if test="${fn:contains(form.getQ8_1(),'yes')}"> Yes </c:if>
								</td>
								<td>
									<c:if test="${fn:contains(form.getQ8(),'no')}"> We don't share </c:if>
									<c:if test="${fn:contains(form.getQ8_1(),'no')}"> We don't share </c:if>
									<c:if test="${fn:contains(form.getQ8_1_1(),'yes')}"> Yes </c:if>
									<c:if test="${fn:contains(form.getQ8_1_1(),'no')}"> No </c:if>
								</td>
							</tr>

							<!-- can be omitted if no affiliates -->
							<tr>
								<td><strong>For our affiliates' everyday business purposes</strong> - Information about your transactions and experiences</td>
								<td>
									<c:if test="${fn:contains(form.getQ9(),'no')}"> No </c:if>
									<c:if test="${fn:contains(form.getQ9_1(),'yes')}"> Yes </c:if>
									<c:if test="${fn:contains(form.getQ9_1(),'no')}"> No </c:if>
								</td>
								<td>
									<c:if test="${fn:contains(form.getQ9(),'no')}"> We don't share </c:if>
									<c:if test="${fn:contains(form.getQ9_1(),'no')}"> We don't share </c:if>
									<c:if test="${fn:contains(form.getQ9_1_1(),'yes')}"> Yes </c:if>
									<c:if test="${fn:contains(form.getQ9_1_1(),'no')}"> No </c:if>
								</td>
							</tr>

							<tr>
								<td><strong>For our affiliates' everyday business purposes</strong> - Information about your creditworthiness</td>
								<td>
									<c:if test="${fn:contains(form.getQ9(),'no')}"> No </c:if>
									<c:if test="${fn:contains(form.getQ9_2(),'yes')}"> Yes </c:if>
									<c:if test="${fn:contains(form.getQ9_2(),'no')}"> No </c:if>
								</td>
								<td>
									<c:if test="${fn:contains(form.getQ9(),'no')}"> We don't share </c:if>
									<c:if test="${fn:contains(form.getQ9_2(),'yes')}"> Yes </c:if>
									<c:if test="${fn:contains(form.getQ9_2(),'no')}"> We don't share </c:if>
								</td>
							</tr>
							
							<tr style="display:<c:choose><c:when test="${flag}"> default </c:when> <c:otherwise>none</c:otherwise></c:choose>;">
								<td><strong>For our affiliates to market to you</strong></td>
								<td>
									<c:if test="${fn:contains(form.getQ9_5(),'yes')}"> Yes </c:if>
									<c:if test="${fn:contains(form.getQ9_5(),'no')}"> No </c:if>
								</td>
								<td>
									<c:if test="${fn:contains(form.getQ9_5(),'yes')}"> Yes </c:if>
									<c:if test="${fn:contains(form.getQ9_5(),'no')}"> We don't share </c:if>
								</td>
							</tr>

							<tr>
								<td><strong>For nonaffiliates to market to you</strong></td>
								<td>
									<c:if test="${fn:contains(form.getQ10(),'no')}"> No </c:if>
									<c:if test="${fn:contains(form.getQ10(),'yes')}"> Yes </c:if>
								</td>
								<td>
									<c:if test="${fn:contains(form.getQ10(),'no')}"> We don't share </c:if>
									<c:if test="${fn:contains(form.getQ10(),'yes')}"> Yes </c:if>
								</td>
							</tr>
							
						</tbody>

					</table>
	<!-- --To DO -->>
					<!-- if all column of "can you limit this sharing" is either NO or We don't share, the following table should be omitted -->
					<table class="default">
						<tbody>
							<tr>
								<td id="color">To limit our sharing</td>
								<td>
									<ul>
										<li>Call ${form.getPhone()} - our menu will prompt you through your choices</li>
										<li>Visit us online: ${form.getWebsite()}</li>
									</ul>
									<strong>Please note:</strong><br>
									If you are a new customer, we can begin sharing your information ${form.getQ11()} days from the date we sent this notice. When you are no longer our customer, we continue to share your information as described in this notice.
									<br>However, you can contact us at any time to limit our sharing.
								</td>
							</tr>
						</tbody>
					</table>


					<table class="default">
						<tbody>
							<tr>
								<td id="color">Questions?</td>
								<td>
									Call ${form.getPhone()} or go to ${form.getWebsite()}
								</td>
							</tr>
						</tbody>
					</table>


					<!-- can be omitted if it is the only institution -->
					<table class="default" style="display:<c:choose><c:when test="${fn:contains(form.getQ12(),'yes')}">none</c:when> <c:otherwise>block</c:otherwise></c:choose>">
						<thead>
							<tr>
								<th colspan="2">Who we are</th>
							</tr>
						</thead>

						<tbody>
							<tr>
								<td id="widest">Who is providing this notice?</td>
								<td>
									${form.getQ12_1()}
								</td>
							</tr>
						</tbody>

					</table>

					<table class="default">
						<thead>
							<tr>
								<th colspan="2">What we do</th>
							</tr>
						</thead>

						<tbody>
							<tr>
								<td id="widest">How does ${form.getName()} protect my personal information?</td>
								<td>
									To protect your personal information from unauthorized access and use, we use security measures that comply with federal law. These measures include computer safeguards and secured files and buildings. 

									<br><!-- q13 answers--><c:if test="${fn:contains(form.getQ13(),'yes')}"> ${form.getQ13_1()} </c:if>
								</td>
							</tr>

							<tr>
								<td  id="widest">How does ${form.getName()} collect my personal information?</td>
								<td>
									We collect your personal information, <a href="" title="A full list of ways that we can use to collect personal information include: &#13;Open an account; deposit money; pay your bills; apply for a loan; use your credit or debit card; seek financial or tax advice; apply for insurance; pay insurance premiums; file an insurance claim; seek advice about your investments; buy securities from us; sell securities to us; direct us to buy securities; direct us to sell your securities; make deposits or withdrawals from your account; enter into an investment advisory contract; give us your income information; provide employment information; give us your employment history; tell us about your investment or retirement portfolio; tell us about your investment or retirement earnings; apply for financing; apply for a lease; provide account information; give us your contact information; pay us by check; give us your wage statements; provide your mortgage information; make a wire transfer; tell us who receives the money; tell us where to send the money; show your government-issued ID; show your driver's license; order a commodity futures or option trade. ">for example</a>, when you:
									<ul>
										<li>${q14Array[0]} or ${q14Array[1]}</li>
										<li>${q14Array[2]} or ${q14Array[3]}</li>
										<li>${q14Array[4]}</li>
									</ul>
									<!-- q15 q15.1 answers-->
									<c:if test="${fn:contains(form.getQ15(),'yes')}"> We also collect your personal information from others, such as credit bureaus, affiliates, or other companies. </c:if>
									<c:if test="${fn:contains(form.getQ15_1(),'yes')}"> We also collect your personal information from other companies. </c:if>
								</td>
							</tr>

							<tr>
								<td id="widest">Why can't I limit all sharing?</td>
								<td>
									Federal law gives you the right to limit only
									<ul>
										<li>sharing for affiliates' everyday business purposes - information about your creditworthiness</li>
										<li>affiliates from using your information to market to you</li>
										<li>sharing for nonaffiliates to market to you</li>
									</ul>
									State laws and individual companies may give you additional rights to limit sharing. <c:if test="${fn:contains(form.getQ16(),'yes')}"><a href="#important">See below for more on your rights under state law.</a></c:if>
								</td>
							</tr>


							<!--Only financial institutions that provide opt-out options must use this question. Other institutions must omit this question. -->
							<tr>
								<td id="widest">What happens when I limit sharing for an account I hold jointly with someone else?</td>
								<td>
									Your choices will apply individually - unless you tell us otherwise.
								</td>
							</tr>
						</tbody>
					</table>

					<table class="default">
						<thead>
							<tr>
								<th colspan="2">Definitions</th>
							</tr>
						</thead>

						<tbody>
							<tr>
								<td id="widest">Affiliates</td>
								<td>
						<!--
(i) 9 no: -[name of financial institution] has no affiliates-;

(ii) 9.1/9.2 both no: -[name of financial institution] does not share with our affiliates-; or

(iii) 9.1/9.2 one yes: -Our affiliates include financial companies such as [insert illustrative list of companies]; nonfinancial companies, such as [insert illustrative list of companies;] -->
									Companies related by common ownership or control. They can be Financial and nonfinancial companies.
									<ul>
										<c:if test="${fn:contains(form.getQ9(),'no')}"> <li>${form.getName()} has no affiliates.</li> </c:if>
										<c:if test="${flag9192}"><li>${form.getName()} does not share with our affiliates.</li></c:if>
										<c:if test="${!flag9192} && ${flag}"><li>Our affiliates include financial companies such as ${form.getQ9_2_1()}; nonfinancial companies, such as ${form.getQ9_2_2()}.</li></c:if>
									</ul>
								</td>
							</tr>

							<tr>
								<td id="widest">Nonaffiliates</td>
								<td>
									Companies not related by common ownership or control. They can be Financial and nonfinancial companies.
									<ul>
										<c:if test="${fn:contains(form.getQ10(),'no')}"><li>${form.getName()} does not share with nonaffiliates so they can market to you.</li></c:if>
										<c:if test="${fn:contains(form.getQ10(),'yes')}"><li>Nonaffiliates we share with can include ${form.getQ10_1_1()}.</li></c:if>
									</ul>
<!--
(i) If it does not share with nonaffiliated third parties, state: -[name of financial institution] does not share with nonaffiliates so they can market to you-; or

(ii) If it shares with nonaffiliated third parties, state, as applicable: -Nonaffiliates we share with can include [list categories of companies such as mortgage companies, insurance companies, direct marketing companies, and nonprofit organizations].- -->
									
								</td>
							</tr>

							<tr>
								<td id="widest">Joint Marketing</td>
								<td>
									A formal agreement between nonaffiliated financial companies that together market financial products or services to you.
<!-- 
(i) If it does not engage in joint marketing, state: -[name of financial institution] doesn't jointly market-; or

(ii) If it shares personal information for joint marketing, state, as applicable: -Our joint marketing partners include [list categories of companies such as credit card companies].--->
									<ul>
										<c:if test="${fn:contains(form.getQ8(),'no')}"><li>${form.getName()} doesn't jointly market.</li></c:if>
										<c:if test="${fn:contains(form.getQ8(),'yes')}"><li>Our joint marketing partners include ${form.getQ8_2()}.</li></c:if>
									</ul>
								</td>
							</tr>
						</tbody>
					</table>
					
					<% 
						String q16 = form.getQ16();
						String q17 = form.getQ17();
						boolean important = q16.contains("yes") || q17.contains("yes");
					%>

					<table class="default" id="important" style="display:<c:choose><c:when test="${important}"> block </c:when> <c:otherwise>none</c:otherwise></c:choose>">
						<thead>
							<tr>
								<th>Other important information</th>
							</tr>
						</thead>

						<tbody>
							<tr>
								<td>${form.getQ16()}</td>
								<td>${form.getQ17()}</td>
							</tr>
						</tbody>
					</table>

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
		
	</body>
</html>
