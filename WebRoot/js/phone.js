//手机验证码


    //去掉前后空格  
    function trim(str) {  
        var strnew=str.replace(/^\s*|\s*$/g, "");   
        return strnew;  
    }  
      
    //文本框失去焦点时验证  
      
    //密码不能为空  
    $(function(){  
        $("input",$("#password").next("span")).blur(function(){  
            var password = $("#password").val();  
              
            if(trim(password)==""){  
                document.getElementById("passwordTip").innerHTML="<font color='red'>× 密码不能为空</font>";   
                return false;  
            }else {  
                document.getElementById("passwordTip").innerHTML="<font color='#339933'>√</font>";  
                return true;  
            }  
        });  
    })  
      
    //确认密码  
    $(function(){  
        $("input",$("#passwordRepeat").next("span")).blur(function(){  
              
            var passwordrepeat=$("#passwordRepeat").val();  
            var password = $("#password").val();  
              
            if(trim(passwordrepeat)=="") {  
                document.getElementById("passwordRepeatTip").innerHTML="<font color='red'>× 确认密码不能为空 </font>";   
                return false;  
            }else if(trim(password)!=trim(passwordrepeat)){  
                document.getElementById("passwordRepeatTip").innerHTML="<font color='red'>× 两次密码输入必须一致</font>";   
                return false;  
            }else {  
                document.getElementById("passwordRepeatTip").innerHTML="<font color='#339933'>√</font>";  
                return true;  
            }  
        });  
    })  
      
    //判断手机号是否已经注册  
    $(function(){  
        $("input",$("#telephonename").next("span")).blur(function(){  
              
            var phonename=$("#telephonename").val();  
            var re= /(^1[3|5|8][0-9]{9}$)/;    
            if (trim(phonename) == "") {  
                document.getElementById("telephonenameTip").innerHTML = "<font color='red'>× 手机号码不能为空</font>";   
                return false;  
            }else if(trim(phonename) != ""){  
                if(!re.test(phonename)){  
                    document.getElementById("telephonenameTip").innerHTML = "<font color='red'>× 请输入有效的手机号码</font>";   
                    return false;  
                }else{  
                    document.getElementById("telephonenameTip").innerHTML = "<font color='red'></font>";  
                    $.ajax({  
                        url:"register_checkLoginname.action",  
                        data:{phonename:phonename},  
                        type:"POST",  
                        dataType:"text",  
                        success:function(data){  
                            //alert(data);  
                            //data = parseInt(data, 10);  
                            if (data != 0) {  
                                $("#telephonenameTip").html("<font color='red'>× 该手机号码已被注册，请重新输入</font>");  
                                $("#loginregister").disabled=true;  
                                return false;  
                            }else {  
                                $("#telephonenameTip").html("<font color='#339933'>√</font>");  
                            }  
                        }  
                    });  
      
                    return true;  
                }  
              
            }  
              
        });  
    })  
      
    //验证码  
    $(function(){  
        $("input",$("#codename").next("span")).blur(function(){  
            var coadename = $("#codename").val();  
              
            if(trim(coadename)==""){  
                document.getElementById("codenameTip").innerHTML="<font color='red'>× 验证码不能为空</font>";  
                return false;  
            }else {  
                document.getElementById("codenameTip").innerHTML=("<font color='#339933'>√</font>");   
                return true;  
            }  
        });  
    })  
      
    //短信验证码  
    var InterValObj; //timer变量，控制时间    
    var count = 60; //间隔函数，1秒执行    
    var curCount;//当前剩余秒数    
    var code = ""; //验证码    
    var codeLength = 6;//验证码长度    
        
    function sendMessage(){   
        curCount = count;    
        var jbPhone = $("#telephonename").val();    
        var jbPhoneTip = $("#telephonenameTip").text();    
        if (jbPhone != "") {    
            if(jbPhoneTip == "√" || jbPhoneTip == "√ 短信验证码已发到您的手机,请查收"){    
                // 产生验证码    
                for ( var i = 0; i < codeLength; i++) {    
                    code += parseInt(Math.random() * 9).toString();    
                }    
                // 设置button效果，开始计时    
                $("#btnSendCode").attr("disabled", "true");    
                $("#btnSendCode").val("请在" + curCount + "秒内输入验证码");    
                InterValObj = window.setInterval(SetRemainTime, 1000); // 启动计时器，1秒执行一次    
                // 向后台发送处理数据    
                $.ajax({    
                    type: "POST", // 用POST方式传输    
                    dataType: "text", // 数据格式:JSON    
                    url: "register_sms.action", // 目标地址    
                    data: "jbPhone=" + jbPhone +"&code=" + code,    
                    error: function (XMLHttpRequest, textStatus, errorThrown) {     
                            
                    },    
                    success: function (data){     
                        data = parseInt(data, 10);    
                        if(data == 1){    
                            $("#telephonenameTip").html("<font color='#339933'>√ 短信验证码已发到您的手机,请查收</font>");    
                        }else if(data == 0){    
                            $("#telephonenameTip").html("<font color='red'>× 短信验证码发送失败，请重新发送</font>");    
                            return false;  
                        }else if(data == 2){    
                            $("#telephonenameTip").html("<font color='red'>× 该手机号码今天发送验证码过多</font>");    
                        }    
                    }    
                });    
            }    
        }else{    
            $("#telephonenameTip").html("<font color='red'>× 手机号码不能为空</font>");    
        }    
    }  
        
    //timer处理函数    
    function SetRemainTime() {    
        if (curCount == 0) {                    
            window.clearInterval(InterValObj);// 停止计时器    
            $("#btnSendCode").removeAttr("disabled");// 启用按钮    
            $("#btnSendCode").val("重新发送验证码");    
            code = ""; // 清除验证码。如果不清除，过时间后，输入收到的验证码依然有效    
        }else {    
            curCount--;    
            $("#btnSendCode").val("请在" + curCount + "秒内输入验证码");    
        }    
    }    
        
    $(function(){    
        $("input",$("#codename").next("span")).blur(function(){    
            var SmsCheckCodeVal = $("#codename").val();    
            // 向后台发送处理数据    
            $.ajax({    
                url : "register_checkCode.action",     
                data : {SmsCheckCode : SmsCheckCodeVal},     
                type : "POST",     
                dataType : "text",     
                success : function(data) {    
                    data = parseInt(data, 10);    
                    if (data == 1) {    
                        $("#codenameTip").html("<font color='#339933'>√</font>");    
                    } else {    
                        $("#codenameTip").html("<font color='red'>× 短信验证码有误，请核实后重新填写</font>");  
                          
                    }    
                }    
            });   
            return true;  
        });    
    });    
      
    //对服务协议按钮做出的判断  
    function arrgement(){  
        if(document.getElementById("checked").checked){  
              
            document.getElementById("zhuce").innerHTML="<input class=\"loginregister\" id=\"loginregister\" type=\"submit\" onclick=\"clickregister()\" value=\"注册 \"  />";  
            document.getElementById("loginregister").style.color = "#FFF";  
            document.getElementById("loginregister").style.backgroundColor="#60F";  
            return true;  
        }else {  
              
            document.getElementById("zhuce").innerHTML="<input class=\"loginregister\" id=\"loginregister\" type=\"button\"  value=\"注册 \"  />";  
            document.getElementById("loginregister").style.color =="#000000";  
            document.getElementById("loginregister").style.backgroundColor="#D5D3CD";  
            return false;  
        }  
    }  
      
    //点击注册按钮时做出的判断  
    function clickregister(){  
        //alert("11");  
          
        var password = $("#password").val();  
        var passwordrepeat=$("#passwordRepeat").val();  
        var phonename=$("#telephonename").val();  
        var re= /(^1[3|5|8][0-9]{9}$)/;   
        var coadename = $("#codename").val();  
        var SmsCheckCodeVal = $("#codename").val();    
        //alert("22");  
        var flage = true;  
        //密码不能为空  
        if(trim(password)==""){  
            document.getElementById("passwordTip").innerHTML="<font color='red'>× 密码不能为空</font>";  
            if(flage){  
                flage = false;  
            }  
        }else if(trim(password)!=""){  
            document.getElementById("passwordTip").innerHTML="<font color='#339933'>√</font>";  
            //flage = true;  
        }  
          
          
        if(trim(passwordrepeat)==""){  
            document.getElementById("passwordRepeatTip").innerHTML="<font color='red'>× 确认密码不能为空 </font>";   
            if(flage){  
                flage = false;  
            }  
        }else if(trim(password)!=trim(passwordrepeat)){  
            document.getElementById("passwordRepeatTip").innerHTML="<font color='red'>× 两次密码输入必须一致</font>";   
            if(flage){  
                flage = false;  
            }  
        }else if(trim(passwordrepeat)!="" && trim(password)==trim(passwordrepeat) ){  
            document.getElementById("passwordRepeatTip").innerHTML="<font color='#339933'>√</font>";  
            //flage = true;  
        }  
          
          
        if (trim(phonename) == ""){  
            document.getElementById("telephonenameTip").innerHTML = "<font color='red'>× 手机号码不能为空</font>";  
            if(flage){  
                flage = false;  
            }  
        }else {  
            //alert("11s");  
            if(!re.test(phonename)){  
                document.getElementById("telephonenameTip").innerHTML = "<font color='red'>× 请输入有效的手机号码</font>";   
                if(flage){  
                    flage = false;  
                }  
            }else {  
                //alert("11sssss");  
                //alert(ccc);  
                $.ajax({  
                    async : false,  
                    url:"register_checkLoginname.action",  
                    data:{phonename:phonename},  
                    type:"POST",  
                    dataType:"text",  
                    success:function(data){  
                        //alert(data);  
                        //data = parseInt(data, 10);  
                        if (data != 0) {  
                            $("#telephonenameTip").html("<font color='red'>× 该手机号码已被注册，请重新输入</font>");  
                            //$("#loginregister").disabled=true;  
                            if(flage){  
                                flage = false;  
                            }  
                        }else {  
                            $("#telephonenameTip").html("<font color='#339933'>√</font>");  
                            //flage=true;  
                        }  
                    }  
                });  
                  
                      
            }  
        }  
        //alert("11sssss");  
          
            if(trim(coadename)==""){  
                document.getElementById("codenameTip").innerHTML="<font color='red'>× 验证码不能为空</font>";   
                if(flage){  
                    flage = false;  
                }  
            }else {  
                document.getElementById("codenameTip").innerHTML=("<font color='#339933'>√</font>");   
                  
                //alert("11sssss");  
                $.ajax({    
                    async : false,  
                    url : "register_checkCode.action",     
                    data : {SmsCheckCode : SmsCheckCodeVal},     
                    type : "POST",     
                    dataType : "text",     
                    success : function(data) {    
                        //alert(data);  
                        //data = parseInt(data, 10);    
                        if (data == 0) {    
                            $("#codenameTip").html("<font color='red'>× 短信验证码有误，请核实后重新填写</font>");  
                            if(flage){  
                                flage = false;  
                            }  
                        } else {    
                            $("#codenameTip").html("<font color='#339933'>√</font>");    
                          // flage=true;  
                        }    
                    }    
                });   
                    //alert("222");  
                //if(ddd==false){  
                //  return ddd;       
                //}  
                      
            }  
              
        //alert("111");  
          
            //判断有没有勾选服务协议  
            if(document.getElementById("checked").checked==true){  
                  
                document.getElementById("zhuce").innerHTML="<input class=\"loginregister\" id=\"loginregister\" type=\"submit\" onclick=\"clickregister()\" value=\"注册 \"  />";  
                document.getElementById("loginregister").style.color = "#FFF";  
                document.getElementById("loginregister").style.backgroundColor="#60F";  
                //alert("2222");  
                //flage = true;  
                  
             }else {  
              
                document.getElementById("zhuce").innerHTML="<input class=\"loginregister\" id=\"loginregister\" type=\"button\"  value=\"注册 \"  />";  
                document.getElementById("loginregister").style.color =="#000000";  
                document.getElementById("loginregister").style.backgroundColor="#D5D3CD";  
                if(flage){  
                    flage = false;  
                }  
            }  
            return flage;  
    }  