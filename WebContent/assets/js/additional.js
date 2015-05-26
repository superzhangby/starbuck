
/* generic function to show or hide a div of radio buttons */
	function showDiv(elem, ans, id) {
		if(elem.value == ans)
	      document.getElementById(id).style.display = "block";
	}

	function hideDiv(elem, ans, id) {
		if(elem.value == ans) {
			document.getElementById(id).style.display = "none";
			var radios = document.getElementsByName('q'+id);
			console.log(radios);
			for( i = 0; i < radios.length; i++ ) {
				radios[i].checked = false;
			}
			radios.value = '';
		}
	}

/* generic function to hide a div of textarea*/
	function hideDivT(elem, ans, id) {
		if(elem.value == ans) {
			document.getElementById(id).style.display = "none";
			var text = document.getElementsByName('q'+id);
		/*	console.log(text.value);  */
			text.value = '';
		}
	}

/* show or hide all questions about affiliates based on question 9*/

	function showAffi(elem, ans){
		showDiv(elem, ans, '9_1');
		showDiv(elem, ans, '9_2');
	}

	function hideAffi(elem, ans){
		hideDiv(elem, ans, '9_1');
		hideDiv(elem, ans, '9_1_1');
		hideDiv(elem, ans, '9_2_1');
		hideDiv(elem, ans, '9_2_2');
		hideDiv(elem, ans, '9_2');
		hideDiv(elem, ans, '9_3');
		hideDiv(elem, ans, '9_4');
		hideDiv(elem, ans, '9_5');
	}

	function show81(elem, ans){
		showDiv(elem, ans, '8_1');
		showDiv(elem, ans, '8_2');
	}

	function hide81(elem, ans) {
		hideDiv(elem, ans, '8_1');
		hideDiv(elem, ans, '8_1_1');
		hideDiv(elem, ans, '8_2');
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

	/* either q9_1 or q9_2 is YES, show question q9_3 */
	function show93(){
		var ques91 = getCheckedValue('q9_1');
		var ques92 = getCheckedValue('q9_2');
		if(ques91 == "yes" || ques92 == "yes") {
			document.getElementById('9_3').style.display = "block";
			document.getElementById('9_2_1').style.display = "block";
			document.getElementById('9_2_2').style.display = "block";
		}
	}

	/* both q9_1 & q9_2 are NO, hide question q9_3, q9_4, q9_5 */
	function hide95(elem){
		var ques91 = getCheckedValue('q9_1');
		var ques92 = getCheckedValue('q9_2');
		if(ques91 != "yes" && ques92 != "yes") {
			hideDiv(elem, 'no', '9_3');
			hideDiv(elem, 'no', '9_4');
			hideDiv(elem, 'no', '9_5');
			hideDiv(elem, 'no', '9_2_1');
			hideDiv(elem, 'no', '9_2_2');
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

/*	function toggle(source) {
		checkboxes = document.getElementsByName('foo');
		for each(var checkbox in checkboxes)
			checkbox.checked = source.checked;
	} */




