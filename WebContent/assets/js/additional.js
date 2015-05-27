
/* generic function to show or hide a div of radio buttons */
	function showDiv(elem, ans, id) {
		if(elem.value == ans)
	      document.getElementById(id).style.display = "block";
	}

	function hideDiv(elem, ans, id) {
		if(elem.value == ans) {
			document.getElementById(id).style.display = "none";
			var radios = document.getElementsByName('q'+id);
			for( i = 0; i < radios.length; i++ ) {
				radios[i].checked = false;
			}
		}
	}

/* generic function to hide a div of textarea*/
	function hideDivT(elem, ans, id) {
		if(elem.value == ans) {
			var text = document.getElementById('t'+id);
			text.value = '';
		}
	}

/* show questions 9.1 & 9.2 about affiliates if q9 is YES */
	function showAffi(elem, ans){
		showDiv(elem, ans, '9_1');
		showDiv(elem, ans, '9_2');
	}

/* hide all questions about affiliates if q9 is NO */
	function hideAffi(elem, ans){
		hideDiv(elem, ans, '9_1');
		hideDiv(elem, ans, '9_1_1');
		hideText(elem, ans, '9_2_1');
		hideText(elem, ans, '9_2_2');
		hideDiv(elem, ans, '9_2');
		hideDiv(elem, ans, '9_3');
		hideDiv(elem, ans, '9_4');
		hideDiv(elem, ans, '9_5');
	}

/* show or hide questions about joint marketing based on q8 */
	function show81(elem, ans){
		showDiv(elem, ans, '8_1');
		showDiv(elem, ans, '8_2');
	}

	function hide81(elem, ans) {
		hideDiv(elem, ans, '8_1');
		hideDiv(elem, ans, '8_1_1');
		hideText(elem, ans, '8_2');
	}


	function show91(elem, ans) {
		showDiv(elem, ans, '9_1_1');
		show93();
	}

	function hide91(elem, ans) {
		hideDiv(elem, ans, '9_1_1');
		hide95(elem);
	}


/* show or hide question q12, q12-1, q12-2 (for our affiliates to market you) based on q11 (share info about transaction) & q12 (share info about creditworthiness)*/

	/* either q9_1 or q9_2 is YES, show question q9.3, q9.2.1, q9.2.2 */
	function show93(){
		var ques91 = getCheckedValue('q9_1');
		var ques92 = getCheckedValue('q9_2');
		if(ques91 == "yes" || ques92 == "yes") {
			document.getElementById('9_3').style.display = "block";
			document.getElementById('9_2_1').style.display = "block";
			document.getElementById('9_2_2').style.display = "block";
		}
	}

	/* both q9_1 & q9_2 are NO or not selected, hide question q9_3, q9_4, q9_5 */
	function hide95(elem){
		var ques91 = getCheckedValue('q9_1');
		var ques92 = getCheckedValue('q9_2');
		if(ques91 != "yes" && ques92 != "yes") {
			hideDiv(elem, 'no', '9_3');
			hideDiv(elem, 'no', '9_4');
			hideDiv(elem, 'no', '9_5');
			hideText(elem, 'no', '9_2_1');
			hideText(elem, 'no', '9_2_2');
		}
	}

	function getCheckedValue( groupName ) {
	    var radios = document.getElementsByName( groupName );
	    for( i = 0; i < radios.length; i++ ) {
	        if( radios[i].checked ) {
	            return radios[i].value;
	        }
	    }
	    return null;
	}

/* hide question 9_4 & 9_5 based on q9_3*/
	function hide945(elem, ans){
		hideDiv(elem, ans, '9_4');
		hideDiv(elem, ans, '9_5');
	}

	function toggle(source,name) {
		checkboxes = document.getElementsByName(name);
		for(var i=0, n=checkboxes.length;i<n;i++) {
			checkboxes[i].checked = source.checked;
		}
	}

	function hideText(elem, ans, id){
		hideDivT(elem, ans, id);
		hideDiv(elem, ans, id);
	}

/* show or hide questions about mail-in options based on q17.3 */
	function showMail(elem, ans){
		showDiv(elem, ans, '17_3_1');
		showDiv(elem, ans, '17_3_2');
		showDiv(elem, ans, '17_3_3');
	}

	function hideMail(elem, ans) {
		hideDivT(elem, ans, '17331');
		hideDivT(elem, ans, '17332');
		hideDivT(elem, ans, '17333');
		hideDivT(elem, ans, '17334');
		hideDivT(elem, ans, '17335');
		hideDiv(elem, ans, '17_3_1');
		hideDiv(elem, ans, '17_3_2');
		hideDiv(elem, ans, '17_3_3');
	}




