function myFunction(){
	var now= new Date();

	var month=now.getMonth()+1;
	var day=now.getDate();
	var clock=month;

	if(month<10)
		clock="0"+month;
	clock+="/";

	if(day<10)
		clock+="0";
	clock+=day;
	
	
	var now2=new Date();
	var month2=now2.getMonth()+1;
	var day2=now2.getDate()+1;
	var clock2=month2;
	if(month2<10)
		clock2="0"+month2;
	clock2+="/";
	if(day2<10)
		clock2+="0";
	clock2+=day2;
	
	var now3=new Date();
	var month3=now3.getMonth()+1;
	var day3=now3.getDate()+2;
	var clock3=month3;
	if(month3<10)
		clock3="0"+month3;
	clock3+="/";
	if(day3<10)
		clock3+="0";
	clock3+=day3;
	
	var now4=new Date();
	var month4=now4.getMonth()+1;
	var day4=now4.getDate()+3;
	var clock4=month4;
	if(month4<10)
		clock4="0"+month4;
	clock4+="/";
	if(day4<10)
		clock4+="0";
	clock4+=day4;
	
	var now5=new Date();
	var month5=now5.getMonth()+1;
	var day5=now5.getDate()+4;
	var clock5=month5;
	if(month5<10)
		clock5="0"+month5;
	clock5+="/";
	if(day5<10)
		clock5+="0";
	clock5+=day5;
	
	var now6=new Date();
	var month6=now6.getMonth()+1;
	var day6=now6.getDate()+5;
	var clock6=month6;
	if(month6<10)
		clock6="0"+month6;
	clock6+="/";
	if(day6<10)
		clock6+="0";
	clock6+=day6;
	
	var now7=new Date();
	var month7=now7.getMonth()+1;
	var day7=now7.getDate()+6;
	var clock7=month7;
	if(month7<10)
		clock7="0"+month7;
	clock7+="/";
	if(day7<10)
		clock7+="0";
	clock7+=day7;
	
	document.getElementById("demo").value=clock;
	document.getElementById("demo2").value=clock2;
	document.getElementById("demo3").value=clock3;
	document.getElementById("demo4").value=clock4;
	document.getElementById("demo5").value=clock5;
	document.getElementById("demo6").value=clock6;
	document.getElementById("demo7").value=clock7;
	
	//return clock;//clock为String类型
	// var x = document.getElementById("demo").value=clock;
	//x.innerHTML=clock;  
}
function dateSelect(selectname){
	//var $select = document.getElementById("date");
	var $select = $("<select name='"+selectname+"'></select>");
	$select.append($("<option value=''>---选择日期---</option>"));
	 var $option1 = $("<option value='"+clock+"' >"+clock+"</option>"); 
	 var $option2 = $("<option value='"+clock2+"' >"+clock2+"</option>"); 
	 $select.append($option1);
	 $select.append($option2);
//	 var $option = $("<option value='"+clock+"' >"+clock+"</option>"); 
//	 var $option = $("<option value='"+clock+"' >"+clock+"</option>"); 
//	 var $option = $("<option value='"+clock+"' >"+clock+"</option>"); 
//	 var $option = $("<option value='"+clock+"' >"+clock+"</option>"); 
//	 var $option = $("<option value='"+clock+"' >"+clock+"</option>"); 
}
