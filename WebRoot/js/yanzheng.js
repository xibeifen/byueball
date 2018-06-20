 function checkForm(){ 
	 var checka=true;
	 var checkb=true;
	 //平均年龄和整体水平没有验证6.14
	 var aveAge = document.getElementById("aveAge").value;
	 var aveLevel = document.getElementById("aveLevel.dictId").value;
	 if(aveAge.length==0){
		 document.getElementById("checktext2").innerHTML = "请选择平均年龄";
		 document.getElementById("aveAge").focus();
		 checka=false;
	 }else{
		 document.getElementById("checktext2").innerHTML=" √";
		 checka=true;
	 }
	 if(aveLevel==0){
		 document.getElementById("checktext3").innerHTML = "请选择整体水平";
		 document.getElementById("aveLevel").focus();
		 checkb=false;
	 }else{
		 document.getElementById("checktext3").innerHTML=" √";
		 checkb=true;
	 }
	 
	 var check = checkuse() && checkCapName() && checkpwd() && checkPassword() && checka && checkb; 

	 if(check == true){
		 alert("验证通过，审核完成后即可登陆！去看看首页？");
	     //window.open("Main.jsp");
	     //window.location.href="Main.jsp";
		 return check;
	 }else{
		 alert("输入有误，请检查");
		 return check;
	 }
  } 
 
 //及时验证队伍名称
 function checkuse(){
   //在每个函数中定义check变量是为了在表单提交后，能够逐个验证每个函数是否通过
   var check; 
   var username = document.getElementById("name").value; 
   if (username.length > 18 || username.length < 2) { 
	   document.getElementById("checktext1").innerHTML = " × 队伍名称应该由2-18位字符组成！"; 
    //既然你在此处输入错误，那么当然要在此处继续输入了。（在此处继续获取焦点！）
    document.getElementById("name").focus();
    check = false; 
   } else { 
    document.getElementById("checktext1").innerHTML = " √"; 
    check = true; 
   } 
   return check; 
  } 
 //验证队长姓名
 function checkCapName(){
   //在每个函数中定义check变量是为了在表单提交后，能够逐个验证每个函数是否通过
   var check; 
   var username = document.getElementById("capName").value; 
   if (username.length > 18 || username.length < 2) { 
	   document.getElementById("checktext4").innerHTML = " × 队长名应该由2-18位字符组成！"; 
    //既然你在此处输入错误，那么当然要在此处继续输入了。（在此处继续获取焦点！）
    document.getElementById("capName").focus();
    check = false; 
   } else { 
    document.getElementById("checktext4").innerHTML = " √"; 
    check = true; 
   } 
   return check; 
  } 
 //验证密码
 function checkPassword(){ 
	 var check = false; 
	 var password = document.getElementById("capTel").value; 
	 if (password.length < 3) { 
	  document.getElementById("checktext5").innerHTML = " × 不要少于6位"; 
	  check = false; 
	 } else { 
	  document.getElementById("checktext5").innerHTML = " √"; 
	  check = true; 
	 } 
	 return check; 
	} 
 
 function checkpwd() { 
	 var check = false; 
	 var password = document.getElementById("capTel").value; 
	 var pwdc = document.getElementById("recapTel").value; 
	 if (password != pwdc) { 
	  document.getElementById("checktext6").innerHTML = " × 两次输入密码不一致"; 
	  check = false; 
	 } else { 
	  document.getElementById("checktext6").innerHTML = " √"; 
	  check = true; 
	 } 
	 return check; 
	} 





