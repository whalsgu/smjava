[폼 태그]
Web Form

(기본형식)
<form 속성="속성값">
</form>

(속성)
1. method : 사용자가 입력한 내용을 서버에 넘겨주는 방식
   - get  : 주소에 내용을 담아서 전달, 크기(4096byte, 4KB), 내용이 노출되는 단점
   - post : 크기 제한이 없다, 내용이 노출되지 않는다.(보안성이 보장되지는 않는다)
2. name : 폼의 이름, 한 문서에 여러개의 폼이 존재할 때 구분하기 위한 이름
3. action : form 태그 안에 내용을 처리할 서버상의 프로그램 명
4. target : action 태그에서 지정한 스크립트 파일을 어떤 페이지에서 열 것인가 결정
            서버로 받은 응답을 표시할 페이지
        -> _self : 기본값, 폼이 속한 페이지
        -> _blank : 새로운 창(윈도우), 탭(tab) 페이지
        -> _parent : 부모 페이지
        -> _top : 최 상위 윈도우
5. submit : 서버에 데이터 전송 명령

(예시)
<form name="login" aciton="login.jsp" method="post">
    <input type="text" title="이름">
    <input type="password" value="비밀번호">
    <input type="submit" value="로그인">
</form>