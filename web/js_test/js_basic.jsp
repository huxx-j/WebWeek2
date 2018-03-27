<%--
  Created by IntelliJ IDEA.
  User: Huxx_j
  Date: 2018. 3. 27.
  Time: AM 10:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>자바스크립트 연습</title>
    <script type="text/javascript">
        function welcome() {
            document.write("HelloWorld! Javascript"); //sout 같은 기능
            alert("Message Box") //메세지창 띄우기
        }
        function example() {
            var name = "admin"; //변수는 var로 선언하고 브라우저에서 알아서 알맞은 데이터 타입으로 바꿔줌
            var kor = 30;
            var average = 30.2
        }
        function example2() {
            for (var i=0; i<10; i++) {
             document.write(i+1);
            }
            var total = sum2(10,20); //다른 메소드 호출도 가능
            alert(total + " from return function")
        }

        function sum(a,b) {
            var result = a+b;
            alert(result);
        }

        function sum2(a,b) { //리턴도 가능
            return a+b;

        }

        function other_form() {
            var add = function (a,b) { //익명함수 함수명이 없고 함수명은 변수명으로 해준다
                return a+b;
            }
            var r1 = add(10,20);
            var r2 = add(10,20);
            alert(r1)
            alert(r2)
        }

        function connectserver() {
            var xhp = new XMLHttpRequest();
            xhp.onreadystatechange = function() {
                if (this.readyState==4 && this.status==200){
                    var text = this.responseText;
                    alert(text);
                }
            }
            xhp.open("GET","server.jsp",true);
            xhp.send();
        }

    </script>
</head>
<body>
<button onclick="connectserver()">서버접속</button>
<button onclick="welcome()">자바스크립트 실행</button>
<button onclick="example2()">example2</button>
<button onclick="other_form()">other_form</button>
</body>
</html>
