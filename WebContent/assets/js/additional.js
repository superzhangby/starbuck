
/* generic function to show or hide a div of radio buttons */
	function showDiv(elem, ans, id) {
		if(elem.value == ans)
	      document.getElementById(id).style.display = "block";
	}

	function hideDiv(elem, ans, id) {
		if(elem.value == ans) {
			document.getElementById(id).style.display = "none";
			var radios = document.getElementsByName(id);
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
			var text = document.getElementsByName(id);
			console.log(text.value);
			text.value = '';
		}
	}

/* show or hide all questions about affiliates based on question 5*/

	function showAffi(elem, ans){
		showDiv(elem, ans, '10');
		showDiv(elem, ans, '11');
	}

	function hideAffi(elem, ans){
		hideDiv(elem, ans, '10');
		hideDiv(elem, ans, '10-1');
		hideDiv(elem, ans, '11');
		hideDiv(elem, ans, '12');
		hideDiv(elem, ans, '12-1');
		hideDiv(elem, ans, '12-2');
	}


	function show10(elem, ans, id) {
		showDiv(elem, ans, id);
		show12();
	}

	function hide10(elem, ans, id) {
		hideDiv(elem, ans, id);
		hide12();
	}

/* show or hide question q12, q12-1, q12-2 (for our affiliates to market you) based on q11 (share info about transaction) & q12 (share info about creditworthiness)*/

	/* either q10 or q11 is YES, show question q12, q12-1, q12-2 */
	function show12(){
		var ques10 = getCheckedValue('10');
		var ques11 = getCheckedValue('11');
		if(ques10 == "yes" || ques11 == "yes") {
			document.getElementById('12').style.display = "block";
		}
	}

	/* both q11 & q12 are NO, hide question q12, q12-1, 12-2 */
	function hide12(){
		var ques10 = getCheckedValue('10');
		var ques11 = getCheckedValue('11');
		if(ques10 == "no" && ques11 == "no") {
			document.getElementById('12').style.display = "none";
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

/* hide question 12-1 & 12-2 based on q12*/
	function hide1212(elem, ans){
		hideDiv(elem, ans, '12-1');
		hideDiv(elem, ans, '12-2');
	
	}

