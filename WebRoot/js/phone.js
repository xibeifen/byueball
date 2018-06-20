//�ֻ���֤��


    //ȥ��ǰ��ո�  
    function trim(str) {  
        var strnew=str.replace(/^\s*|\s*$/g, "");   
        return strnew;  
    }  
      
    //�ı���ʧȥ����ʱ��֤  
      
    //���벻��Ϊ��  
    $(function(){  
        $("input",$("#password").next("span")).blur(function(){  
            var password = $("#password").val();  
              
            if(trim(password)==""){  
                document.getElementById("passwordTip").innerHTML="<font color='red'>�� ���벻��Ϊ��</font>";   
                return false;  
            }else {  
                document.getElementById("passwordTip").innerHTML="<font color='#339933'>��</font>";  
                return true;  
            }  
        });  
    })  
      
    //ȷ������  
    $(function(){  
        $("input",$("#passwordRepeat").next("span")).blur(function(){  
              
            var passwordrepeat=$("#passwordRepeat").val();  
            var password = $("#password").val();  
              
            if(trim(passwordrepeat)=="") {  
                document.getElementById("passwordRepeatTip").innerHTML="<font color='red'>�� ȷ�����벻��Ϊ�� </font>";   
                return false;  
            }else if(trim(password)!=trim(passwordrepeat)){  
                document.getElementById("passwordRepeatTip").innerHTML="<font color='red'>�� ���������������һ��</font>";   
                return false;  
            }else {  
                document.getElementById("passwordRepeatTip").innerHTML="<font color='#339933'>��</font>";  
                return true;  
            }  
        });  
    })  
      
    //�ж��ֻ����Ƿ��Ѿ�ע��  
    $(function(){  
        $("input",$("#telephonename").next("span")).blur(function(){  
              
            var phonename=$("#telephonename").val();  
            var re= /(^1[3|5|8][0-9]{9}$)/;    
            if (trim(phonename) == "") {  
                document.getElementById("telephonenameTip").innerHTML = "<font color='red'>�� �ֻ����벻��Ϊ��</font>";   
                return false;  
            }else if(trim(phonename) != ""){  
                if(!re.test(phonename)){  
                    document.getElementById("telephonenameTip").innerHTML = "<font color='red'>�� ��������Ч���ֻ�����</font>";   
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
                                $("#telephonenameTip").html("<font color='red'>�� ���ֻ������ѱ�ע�ᣬ����������</font>");  
                                $("#loginregister").disabled=true;  
                                return false;  
                            }else {  
                                $("#telephonenameTip").html("<font color='#339933'>��</font>");  
                            }  
                        }  
                    });  
      
                    return true;  
                }  
              
            }  
              
        });  
    })  
      
    //��֤��  
    $(function(){  
        $("input",$("#codename").next("span")).blur(function(){  
            var coadename = $("#codename").val();  
              
            if(trim(coadename)==""){  
                document.getElementById("codenameTip").innerHTML="<font color='red'>�� ��֤�벻��Ϊ��</font>";  
                return false;  
            }else {  
                document.getElementById("codenameTip").innerHTML=("<font color='#339933'>��</font>");   
                return true;  
            }  
        });  
    })  
      
    //������֤��  
    var InterValObj; //timer����������ʱ��    
    var count = 60; //���������1��ִ��    
    var curCount;//��ǰʣ������    
    var code = ""; //��֤��    
    var codeLength = 6;//��֤�볤��    
        
    function sendMessage(){   
        curCount = count;    
        var jbPhone = $("#telephonename").val();    
        var jbPhoneTip = $("#telephonenameTip").text();    
        if (jbPhone != "") {    
            if(jbPhoneTip == "��" || jbPhoneTip == "�� ������֤���ѷ��������ֻ�,�����"){    
                // ������֤��    
                for ( var i = 0; i < codeLength; i++) {    
                    code += parseInt(Math.random() * 9).toString();    
                }    
                // ����buttonЧ������ʼ��ʱ    
                $("#btnSendCode").attr("disabled", "true");    
                $("#btnSendCode").val("����" + curCount + "����������֤��");    
                InterValObj = window.setInterval(SetRemainTime, 1000); // ������ʱ����1��ִ��һ��    
                // ���̨���ʹ�������    
                $.ajax({    
                    type: "POST", // ��POST��ʽ����    
                    dataType: "text", // ���ݸ�ʽ:JSON    
                    url: "register_sms.action", // Ŀ���ַ    
                    data: "jbPhone=" + jbPhone +"&code=" + code,    
                    error: function (XMLHttpRequest, textStatus, errorThrown) {     
                            
                    },    
                    success: function (data){     
                        data = parseInt(data, 10);    
                        if(data == 1){    
                            $("#telephonenameTip").html("<font color='#339933'>�� ������֤���ѷ��������ֻ�,�����</font>");    
                        }else if(data == 0){    
                            $("#telephonenameTip").html("<font color='red'>�� ������֤�뷢��ʧ�ܣ������·���</font>");    
                            return false;  
                        }else if(data == 2){    
                            $("#telephonenameTip").html("<font color='red'>�� ���ֻ�������췢����֤�����</font>");    
                        }    
                    }    
                });    
            }    
        }else{    
            $("#telephonenameTip").html("<font color='red'>�� �ֻ����벻��Ϊ��</font>");    
        }    
    }  
        
    //timer������    
    function SetRemainTime() {    
        if (curCount == 0) {                    
            window.clearInterval(InterValObj);// ֹͣ��ʱ��    
            $("#btnSendCode").removeAttr("disabled");// ���ð�ť    
            $("#btnSendCode").val("���·�����֤��");    
            code = ""; // �����֤�롣������������ʱ��������յ�����֤����Ȼ��Ч    
        }else {    
            curCount--;    
            $("#btnSendCode").val("����" + curCount + "����������֤��");    
        }    
    }    
        
    $(function(){    
        $("input",$("#codename").next("span")).blur(function(){    
            var SmsCheckCodeVal = $("#codename").val();    
            // ���̨���ʹ�������    
            $.ajax({    
                url : "register_checkCode.action",     
                data : {SmsCheckCode : SmsCheckCodeVal},     
                type : "POST",     
                dataType : "text",     
                success : function(data) {    
                    data = parseInt(data, 10);    
                    if (data == 1) {    
                        $("#codenameTip").html("<font color='#339933'>��</font>");    
                    } else {    
                        $("#codenameTip").html("<font color='red'>�� ������֤���������ʵ��������д</font>");  
                          
                    }    
                }    
            });   
            return true;  
        });    
    });    
      
    //�Է���Э�鰴ť�������ж�  
    function arrgement(){  
        if(document.getElementById("checked").checked){  
              
            document.getElementById("zhuce").innerHTML="<input class=\"loginregister\" id=\"loginregister\" type=\"submit\" onclick=\"clickregister()\" value=\"ע�� \"  />";  
            document.getElementById("loginregister").style.color = "#FFF";  
            document.getElementById("loginregister").style.backgroundColor="#60F";  
            return true;  
        }else {  
              
            document.getElementById("zhuce").innerHTML="<input class=\"loginregister\" id=\"loginregister\" type=\"button\"  value=\"ע�� \"  />";  
            document.getElementById("loginregister").style.color =="#000000";  
            document.getElementById("loginregister").style.backgroundColor="#D5D3CD";  
            return false;  
        }  
    }  
      
    //���ע�ᰴťʱ�������ж�  
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
        //���벻��Ϊ��  
        if(trim(password)==""){  
            document.getElementById("passwordTip").innerHTML="<font color='red'>�� ���벻��Ϊ��</font>";  
            if(flage){  
                flage = false;  
            }  
        }else if(trim(password)!=""){  
            document.getElementById("passwordTip").innerHTML="<font color='#339933'>��</font>";  
            //flage = true;  
        }  
          
          
        if(trim(passwordrepeat)==""){  
            document.getElementById("passwordRepeatTip").innerHTML="<font color='red'>�� ȷ�����벻��Ϊ�� </font>";   
            if(flage){  
                flage = false;  
            }  
        }else if(trim(password)!=trim(passwordrepeat)){  
            document.getElementById("passwordRepeatTip").innerHTML="<font color='red'>�� ���������������һ��</font>";   
            if(flage){  
                flage = false;  
            }  
        }else if(trim(passwordrepeat)!="" && trim(password)==trim(passwordrepeat) ){  
            document.getElementById("passwordRepeatTip").innerHTML="<font color='#339933'>��</font>";  
            //flage = true;  
        }  
          
          
        if (trim(phonename) == ""){  
            document.getElementById("telephonenameTip").innerHTML = "<font color='red'>�� �ֻ����벻��Ϊ��</font>";  
            if(flage){  
                flage = false;  
            }  
        }else {  
            //alert("11s");  
            if(!re.test(phonename)){  
                document.getElementById("telephonenameTip").innerHTML = "<font color='red'>�� ��������Ч���ֻ�����</font>";   
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
                            $("#telephonenameTip").html("<font color='red'>�� ���ֻ������ѱ�ע�ᣬ����������</font>");  
                            //$("#loginregister").disabled=true;  
                            if(flage){  
                                flage = false;  
                            }  
                        }else {  
                            $("#telephonenameTip").html("<font color='#339933'>��</font>");  
                            //flage=true;  
                        }  
                    }  
                });  
                  
                      
            }  
        }  
        //alert("11sssss");  
          
            if(trim(coadename)==""){  
                document.getElementById("codenameTip").innerHTML="<font color='red'>�� ��֤�벻��Ϊ��</font>";   
                if(flage){  
                    flage = false;  
                }  
            }else {  
                document.getElementById("codenameTip").innerHTML=("<font color='#339933'>��</font>");   
                  
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
                            $("#codenameTip").html("<font color='red'>�� ������֤���������ʵ��������д</font>");  
                            if(flage){  
                                flage = false;  
                            }  
                        } else {    
                            $("#codenameTip").html("<font color='#339933'>��</font>");    
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
          
            //�ж���û�й�ѡ����Э��  
            if(document.getElementById("checked").checked==true){  
                  
                document.getElementById("zhuce").innerHTML="<input class=\"loginregister\" id=\"loginregister\" type=\"submit\" onclick=\"clickregister()\" value=\"ע�� \"  />";  
                document.getElementById("loginregister").style.color = "#FFF";  
                document.getElementById("loginregister").style.backgroundColor="#60F";  
                //alert("2222");  
                //flage = true;  
                  
             }else {  
              
                document.getElementById("zhuce").innerHTML="<input class=\"loginregister\" id=\"loginregister\" type=\"button\"  value=\"ע�� \"  />";  
                document.getElementById("loginregister").style.color =="#000000";  
                document.getElementById("loginregister").style.backgroundColor="#D5D3CD";  
                if(flage){  
                    flage = false;  
                }  
            }  
            return flage;  
    }  