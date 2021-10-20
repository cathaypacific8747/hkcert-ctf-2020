
	var key = 2 * 72467 * 2;
	var keys = (key + String(1 << 23)).split(8);

	check1 = p => p == keys.join(keys[3]);
	check2 = p => p * 7 + keys[7] == keys[1].repeat(keys[2]);
	check3 = p => p ** 3 - p ** 2 + key * p == 3.01781152450557e+16;
	check4 = p => Number(p).toString(6 * 6) == "ctf" + keys[4] + keys[5];
	check5 = p => p.split("").reverse().join("") == String(keys[0] ** (keys[0] + keys[0] ** keys[0])).substr(-6);
	check6 = function(p){
		var x = [];
		for(var i = 2; i <= keys.slice(6).join(6); i++)
			if(!x[i]){
				for(var j = 2 * i; j <= [6, 6].join(6) - keys[6]; j += i)
					x[j] = 1;
				p /= (i % 100 == 10 + 1) ? i : 1;
			}
		return p == 1;
	}
	check = function(){

		pin = /[0-9]{6}/;
		pin1 = document.getElementById("pin1").value;
		pin2 = document.getElementById("pin2").value;
		pin3 = document.getElementById("pin3").value;
		pin4 = document.getElementById("pin4").value;
		pin5 = document.getElementById("pin5").value;
		pin6 = document.getElementById("pin6").value;

		if(!pin1.match(pin) || !pin2.match(pin) || !pin3.match(pin) || !pin4.match(pin) || !pin5.match(pin) || !pin6.match(pin)){
			document.getElementById('msg').innerText = "Sorry, your input format is incorrect.";
		}else if(check1(pin1) && check2(pin2) && check3(pin3) && check4(pin4) && check5(pin5) && check6(pin6)){
			document.getElementById('msg').innerHTML = "Congratulation! The flag is <code>"+getFlag(pin1,pin2,pin3,pin4,pin5,pin6)+"</code>";
		}else{
			document.getElementById('msg').innerText = "Sorry, your passwords are incorrect.";
		}
	}
	getFlag = (p,a,c,k,e,d) => "hkcert20{"+((a<<12)+(p<<11)-122732001).toString(33)+"_"+((c<<10)+(k<<9)+41984486).toString(33)+"_"+((e<<13)+(d<<9)+5330182).toString(33)+"}";
	