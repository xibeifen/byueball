
        window.onload = imgStart()  
        window.onload = xunhuan()  
  
        function changeImg4() {  
            setColor();  
            var img = document.getElementById("img1")  
            img.src="images/img/eb71d60cb10cc74e9c66098114616328.jpg";  
            var div4 = document.getElementById("in1")  
            div4.style.backgroundColor = "red"  
        }  
  
        function changeImg3() {  
            setColor();  
            var img = document.getElementById("img1")  
            img.src = "images/img/be1b20744177c0881945f5e2c02e82f7.jpg";  
            var div3 = document.getElementById("in2")  
            div3.style.backgroundColor = "red"  
        }  
  
        function changeImg2() {  
            setColor();  
            var img = document.getElementById("img1")  
            img.src ="images/img/899c826c9c4d143ef071c0bf186fc3b3.jpg";  
            var div2 = document.getElementById("in3")  
            div2.style.backgroundColor = "red"  
        }  
  
        function changeImg1() {  
            setColor();  
            var img = document.getElementById("img1")  
            img.src = "images/img/e086ffe7391eed669387f76c98399b50.jpg";  
            var div1 = document.getElementById("in4")  
            div1.style.backgroundColor = "red"  
        }  
  
        function setColor() {  
            var div1 = document.getElementById("in1")  
            var div2 = document.getElementById("in2")  
            var div3 = document.getElementById("in3")  
            var div4 = document.getElementById("in4")  
            div1.style.backgroundColor = "pink"  
            div2.style.backgroundColor = "pink"  
            div3.style.backgroundColor = "pink"  
            div4.style.backgroundColor = "pink"  
        }  
  
        function imgStart() {  
            setTimeout("changeImg1()", 0)  
            setTimeout("changeImg2()", 2000)  
            setTimeout("changeImg3()", 4000)  
            setTimeout("changeImg4()", 6000)  
        }  
  
        function xunhuan() {  
            setInterval("imgStart()", 8000)  
        }  
  