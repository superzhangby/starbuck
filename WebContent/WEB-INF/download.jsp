<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ page import="form.DataForm"%>
<!DOCTYPE HTML>

<html>
	<head>
		<title>Privacy Notice Result</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<link rel="stylesheet" href="assets/css/main.css" />
		
		<script type="text/javascript" src="assets/js/balloon.js"></script>
	</head>
	
	
	<body>



	<div id="balloonWhat" class="balloonstyle">
		<h3>Full List of Personal Information We Collect and Share</h3>
		<ul style="margin-left: 1em">
			<li>${form.getArray1()}</li>
			<!-- there are many many more!! -->
		</ul>
	</div>


	<div id="balloon14" class="balloonstyle">
		<h3>A full list of ways that we can use to collect personal information include:</h3>
		<ul style="margin-left: 1em">
			<li>${form.getArray2()}</li>
			<!-- there are many many more!! -->
		</ul>
	</div>



	<div id="main" class="download">
			<section id="result" class="two">
				<div class="container">

					<header>
						<h2>U.S. Consumer Privacy Notice<h2>
					</header>
					

					<div class="row" style="text-align:right">
						Rev. ${time}   <!-- the time of submission -->
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
										
										<c:forEach var = "item"  items="${form.getQ5whatData()}" varStatus="status">
										    <c:if test="${status.index < 1}">
										        <li>Social Security number and ${item} </li>
										    </c:if>
										    <c:if test="${status.index == 1}"><li>${item}</c:if> <c:if test="${status.index == 2}">and ${item}</li></c:if>
											<c:if test="${status.index == 3}"><li>${item}</c:if> <c:if test="${status.index == 4}">and ${item}</li></c:if>
										</c:forEach>
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
									<c:if test="${fn:contains(form.getQ8_1(),'no')}"> No </c:if>
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
					<!-- if all column of "can you limit this sharing" is either NO or We don't share, the following table should be omitted -->
					<table class="default" style="display:<c:choose><c:when test="${fn:contains(form.getQ17(),'no')}"> none </c:when><c:when test="${flag17}"> none </c:when> <c:otherwise> default </c:otherwise></c:choose>">
						<tbody>
							<tr>
								<td id="color">To limit our sharing</td>
								<td>
									<ul>
									<c:if test="${fn:contains(form.getQ17_1(),'yes')}">
										<li>Call <c:if test="${fn:contains(form.getQ3(),'yes')}"> (Toll Free) </c:if>
											${form.getPhone()} - our menu will prompt you through your choices
										</li>
									</c:if>

									<c:if test="${fn:contains(form.getQ17_1(),'yes')}">
										<li>Visit us online: <a href="redirect.do">${form.getWebsite()}</a></li>
									</c:if>
								</ul> <strong>Please note:</strong><br>
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
									Call ${form.getPhone()} or go to <a href="redirect.do">${form.getWebsite()}</a>
								</td>
							</tr>
						</tbody>
					</table>
					
					
					<!-- can be omitted if all answer in the last column of "can you limit this sharing" is either NO or We don't share -->
	<!-- should be omitted if q17.3 is NO -->
					<table class="default" style="display:<c:choose><c:when test="${fn:contains(form.getQ17(),'no')}"> none </c:when><c:when test="${fn:contains(form.getQ17_3(),'no')}"> none </c:when> <c:otherwise>default</c:otherwise></c:choose>">
						<thead>
							<tr>
								<th colspan="4">Mail-in Form</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td rowspan="6" style="width:9em">
								<!-- omit this content if q17.3.1 is NO -->
									<c:if test="${fn:contains(form.getQ17_3_1(),'yes')}">
									If you have a joint account, your choice(s) will apply to everyone on your account unless you mark below.<br>
									<input type="checkbox" name="mail-in"/>Apply my choices only to me
									</c:if>
								</td>

								<td colspan="3">
									Mark any/all you want to limit:<br>

								<!-- if answer is yes of that block, otherwise, hide it -->
									<c:if test="${fn:contains(form.getQ7_1(),'yes')}"> <input type="checkbox" name="mail-in"/>Do not share my personal information to market to me.<br> </c:if>

									<c:if test="${fn:contains(form.getQ8_1_1(),'yes')}"> <input type="checkbox" name="mail-in"/>Do not share my personal information with other financial institutions to jointly market to me.<br> </c:if>

									<c:if test="${fn:contains(form.getQ9_1_1(),'yes')}"> <input type="checkbox" name="mail-in"/>Do not share information about my transactions and experience with your affiliates for their everyday business purposes.<br> </c:if>

									<c:if test="${fn:contains(form.getQ9_2(),'yes')}"> <input type="checkbox" name="mail-in"/>Do not share information about my creditworth with your affiliates for their everyday business purposes.<br> </c:if>

									<c:if test="${flag}"> <input type="checkbox" name="mail-in"/>Do not allow your affiliates to use my personal information to market to me.<br> </c:if>

									<c:if test="${fn:contains(form.getQ10(),'yes')}"><input type="checkbox" name="mail-in"/>Do not share my personal information with nonaffiliates to market their products and services to me.</c:if>

								</td>
							</tr>

							<tr>
								<td id="smaller">Name</td>
								<td>&nbsp;</td>
								<td rowspan="5" style="width:12em">
									Mail to:<br>
									${form.getName()}<br>
									${form.getAddress1()} ${form.getAddress2()}<br>
									${form.getCity()}, ${form.getState()}, ${form.getZipcode()}  
								</td>
							</tr>
							<tr>
								<td rowspan="3" id="smaller">
									Adress<br><br><br><br>
									City, State, Zip
								</td>
								<td>&nbsp;</td>
							</tr>
							<tr>
								<td>&nbsp;</td>
							</tr>
							<tr>
								<td>&nbsp;</td>
							</tr>
							<tr>
								<td id="smaller">${form.getQ17_3_2()}#</td>
								<td>&nbsp;</td>
							</tr>

						</tbody>
					</table>
					

					<!-- can be omitted if it is the only institution -->
					<table class="default" style="display:<c:choose><c:when test="${fn:contains(form.getQ12(),'yes')}">none</c:when> <c:otherwise>default</c:otherwise></c:choose>">
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
									We collect your personal information, <a rel="balloon14">for example</a>, when you:
									<ul>
										<c:forEach var = "item"  items="${form.getQ14whatWay()}" varStatus="status">
										    <c:if test="${status.index == 0}"><li>${item}</c:if> <c:if test="${status.index == 1}">and ${item}</li></c:if>
											<c:if test="${status.index == 2}"><li>${item}</c:if> <c:if test="${status.index == 3}">and ${item}</li></c:if>
											<c:if test="${status.index == 4}">
										        <li>${item}</li>
										    </c:if>
										</c:forEach>
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
(i) 9 no: -€œ[name of financial institution] has no affiliates-€;

(ii) 9.1/9.2 both no: -€œ[name of financial institution] does not share with our affiliates-€; or

(iii) 9.1/9.2 one yes: -€œOur affiliates include financial companies such as [insert illustrative list of companies]; nonfinancial companies, such as [insert illustrative list of companies;] -->
									Companies related by common ownership or control. They can be Financial and nonfinancial companies.
									<ul>
										<c:if test="${fn:contains(form.getQ9(),'no')}"> <li>${form.getName()} has no affiliates.</li> </c:if>
										<c:if test="${flag9192}"><li>${form.getName()} does not share with our affiliates.</li></c:if>
										<c:if test="${flag95}"><li>Our affiliates include <c:if test="${fn:contains(form.getQ9_2_1(),'yes')}">financial companies such as ${form.getQ9_2_1_1()};</c:if> <c:if test="${fn:contains(form.getQ9_2_2(),'yes')}">nonfinancial companies, such as ${form.getQ9_2_2_1()}.</c:if></li></c:if>
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
(i) If it does not share with nonaffiliated third parties, state: -€œ[name of financial institution] does not share with nonaffiliates so they can market to you-€; or

(ii) If it shares with nonaffiliated third parties, state, as applicable: -€œNonaffiliates we share with can include [list categories of companies such as mortgage companies, insurance companies, direct marketing companies, and nonprofit organizations].-€ -->
									
								</td>
							</tr>

							<tr>
								<td id="widest">Joint Marketing</td>
								<td>
									A formal agreement between nonaffiliated financial companies that together market financial products or services to you.
<!-- 
(i) If it does not engage in joint marketing, state: -€œ[name of financial institution] doesn't jointly market-€; or

(ii) If it shares personal information for joint marketing, state, as applicable: -€œOur joint marketing partners include [list categories of companies such as credit card companies].-€-->
									<ul>
										<c:if test="${fn:contains(form.getQ8(),'no')}"><li>${form.getName()} doesn't jointly market.</li></c:if>
										<c:if test="${fn:contains(form.getQ8_1(),'yes')}"><li>Our joint marketing partners include ${form.getQ8_2()}.</li></c:if>
										<c:if test="${fn:contains(form.getQ8_1(),'no')}"><li>${form.getName()} doesn't share personal information for joint marketing.</li></c:if>
									</ul>
								</td>
							</tr>
						</tbody>
					</table>


					<table class="default" id="important" style="display:<c:choose><c:when test="${fn:contains(form.getQ16(),'yes')}"> default </c:when> <c:otherwise>none</c:otherwise></c:choose>">
						<thead>
							<tr>
								<th>Other important information</th>
							</tr>
						</thead>

						<tbody>
							<tr>
								<td>${form.getQ16_1()}</td>
							</tr>
						</tbody>
					</table>

				</div>
			</section>

		

		</div>

		
	</body>
</html>
