function CheckAddGym() {
	var gymId = document.getElementById("gymId");
	var gymName = document.getElementById("gymName");
	var time = document.getElementById("time");
	
	var regExpId = /^G[0-9]{4,11}$/;
	/*var regExpTime = /^([01][0-9]|2[0-3]):([0-5][0-9])\s~\s([01][0-9]|2[0-3]):([0-5][0-9])$/;*/
	
	if(!regExpId.test(gymId.value)) {
		gymId.select();
		gymId.focus();
		alert("[매장코드]\n첫 글자는 G로 하고 뒤에 숫자를 4~11자리까지 조합한 코드를 입력하세요!");
		return false;
	}
	
		if(gymName.value.length < 2) {
		gymName.select();
		gymName.focus();
		alert("[매장명]\n최소 2자 이상 입력하세요!");
		return false;
	}
	
/*	if(!regExpTime.test(time.value)) {
		time.select();
		time.focus();
		alert("[영업시간]\n00:00 ~ 00:00 형식으로 입력하세요!");
		return false;
	}*/


	document.newGym.submit();
}

function CheckAddGymProduct() {
	var gymProductId = document.getElementById("gymProductId");
	var period = document.getElementById("period");
	var price = document.getElementById("price");
	
	var regExpId = /^GP[0-9]{4,11}$/;
	var regExpNum = /^[0-9]*$/;
	
	if(!regExpId.test(gymProductId.value)) {
		gymProductId.select();
		gymProductId.focus();
		alert("[상품코드]\nGP 뒤에 숫자를 4~11자리까지 조합한 코드를 입력하세요!");
		return false;
	}
	
	if(!regExpNum.test(period.value)) {
		period.select();
		period.focus();
		alert("[사용기간]\n숫자만 입력하세요!");
		return false;
	}

		if(!regExpNum.test(price.value)) {
		price.select();
		price.focus();
		alert("[가격]\n숫자만 입력하세요!");
		return false;
	}

	document.newGymProduct.submit();
}