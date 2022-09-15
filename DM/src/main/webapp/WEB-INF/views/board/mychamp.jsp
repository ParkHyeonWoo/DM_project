<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="../header.jsp" %>

<script src="http://code.jquery.com/jquery-3.5.1.min.js">

</script>
</head>
<body>
	<div id ="a">
	
	<p>팀워크를 중요시 한다.</p>

	<div class ="q">
		<input type="radio" id="Tank" name="teamwork" value="Tank">
		<label for="Tank">매우그렇다</label>
		<input type="radio" id="supporter" name="teamwork" value="supporter">
		<label for="supporter">그렇다</label>
		<input type="radio" id="Mage" name="teamwork" value="Mage"> 
		<label for="Mage">보통이다</label>
		<input type="radio" id="Fighter" name="teamwork" value="Fighter">
		<label for="Fighter">모르겠다</label>
		<input type="radio" id="Marksman" name="teamwork" value="Marksman">
		<label for="Marksman">그렇지 않다</label>
		<input type="radio" id="Assassin" name="teamwork" value="Assassin">
		<label for="Assassin">전혀 그렇지 않다</label>
	</div>
	
	<br>
	<p>자신이 주도적인 타입이다.</p>
	
	<div class ="q">
		<input type="radio" id="Fighter" name="pora" value="Fighter">
		<label for="Fighter">매우그렇다</label>
		<input type="radio" id="Assassin" name="pora" value="Assassin">
		<label for="Assassin">그렇다</label>
		<input type="radio" id="Marksman" name="pora" value="Marksman">
		<label for="Marksman">보통이다</label>
		<input type="radio" id="Mage" name="pora" value="Mage"> 
		<label for="Mage">모르겠다</label>
		<input type="radio" id="supporter" name="pora" value="supporter">
		<label for="supporter">그렇지 않다</label>
		<input type="radio" id="Tank" name="pora" value="Tank"> 
		<label for="Tank">전혀 그렇지 않다</label>
	</div>
	<br>
	<p>팀원과 조욜하는 타입이다.</p>
	
	<div class ="q">
		<input type="radio" id="supporter" name="jo" value="supporter">
		<label for="supporter">매우그렇다</label>
		<input type="radio" id="Tank" name="jo" value="Tank"> 
		<label for="Tank">그렇다</label>
		<input type="radio" id="Fighter" name="jo" value="Fighter"> 
		<label for="Fighter">보통이다</label>
		<input type="radio" id="Mage" name="jo" value="Mage"> 
		<label for="Mage">모르겠다</label>
		<input type="radio" id="Assassin" name="jo" value="Assassin">
		<label for="Assassin">그렇지 않다</label>
		<input type="radio" id="Marksman" name="jo" value="Marksman">
		<label for="Marksman">전혀 그렇지 않다</label>
	</div>
	<br>
	<p>남들을 도와주는게 좋다</p>
	
	<div class ="q">
		<input type="radio" id="supporter" name="support" value="supporter">
		<label for="supporter">매우그렇다</label>
		<input type="radio" id="Tank" name="support" value="Tank"> 
		<label for="Tank">그렇다</label>
		<input type="radio" id="Mage" name="support" value="Mage"> 
		<label for="Mage">보통이다</label>
		<input type="radio" id="Fighter" name="support" value="Fighter">
		<label for="Fighter">모르겠다</label>
		<input type="radio" id="Marksman" name="support" value="Marksman">
		<label for="Marksman">그렇지 않다</label>
		<input type="radio" id="Assassin" name="support" value="Assassin">
		<label for="Assassin">전혀 그렇지 않다</label>
	</div>
	<br>
	<p >하이리스크 하이리턴이 좋다.</p>
	
	<div class ="q">
		<input type="radio" id="Marksman" name="hirisk" value="Marksman">
		<label for="Marksman">매우그렇다</label>
		<input type="radio" id="Assassin" name="hirisk" value="Assassin">
		<label for="Assassin">그렇다</label>
		<input type="radio" id="Fighter" name="hirisk" value="Fighter">
		<label for="Fighter">보통이다</label>
		<input type="radio" id="Mage" name="hirisk" value="Mage"> 
		<label for="Mage">모르겠다</label>
		<input type="radio" id="Tank" name="hirisk" value="Tank"> 
		<label for="Tank">그렇지 않다</label>
		<input type="radio" id="supporter" name="hirisk" value="supporter">
		<label for="supporter">전혀 그렇지 않다</label>
	</div>
	<br>
	<p>게임시간이 짧은게 좋다.</p>
	
	<div class ="q">
		<input type="radio" id="Assassin" name="choban" value="Assassin">
		<label for="Assassin">매우 그렇다</label>
		<input type="radio" id="Fighter" name="choban" value="Fighter">
		<label for="Fighter">그렇다</label>
		<input type="radio" id="Mage" name="choban" value="Mage"> 
		<label for="Mage">보통이다</label>
		<input type="radio" id="Tank" name="choban" value="Tank"> 
		<label for="Tank">모르겠다</label>
		<input type="radio" id="Marksman" name="choban" value="Marksman">
		<label for="Marksman">그렇지 않다</label>
		<input type="radio" id="supporter" name="choban" value="supporter">
		<label for="supporter">전혀 그렇지 않다</label>
	</div>
	<br>
	<p>한방데미지가 강력한걸 선호한다.</p>
	
	<div class ="q">
		<input type="radio" id="Fighter" name="onebbang" value="Fighter">
		<label for="Fighter">매우 그렇다</label> 
		<input type="radio" id="Mage" name="onebbang" value="Mage"> 
		<label for="Mage">그렇다</label> 
		<input type="radio" id="Assassin" name="onebbang" value="Assassin">
		<label for="Assassin">보통이다</label> 
		<input type="radio" id="Marksman" name="onebbang" value="Marksman"> 
		<label for="Marksman">모르겠다</label>
		<input type="radio" id="supporter" name="onebbang" value="supporter">
		<label for="supporter">그렇지 않다</label> 
		<input type="radio" id="Tank" name="onebbang" value="Tank"> 
		<label for="Tank">전혀 그렇지 않다</label>
	</div>
	<br>
	<p>기술연계가 있었으면 한다.</p>
	
	<div class ="q"> 
		<input type="radio" id="Mage" name="understand" value="Mage">
		<label for="Mage">매우 그렇다</label> 
		<input type="radio" id="Assassin" name="understand" value="Assassin"> 
		<label for="Assassin">그렇다</label> 
		<input type="radio" id="Marksman" name="understand" value="Marksman">
		<label for="Marksman">보통이다</label> 
		<input type="radio" id="Fighter" name="understand" value="Fighter"> 
		<label for="Fighter">모르겠다</label>
		<input type="radio" id="supporter" name="understand" value="supporter">
		<label for="supporter">그렇지 않다</label> 
		<input type="radio" id="Tank" name="understand" value="Tank"> 
		<label for="Tank">전혀 그렇지 않다</label>
	</div>
	<br>
	<p>원거리위주 챔피언이었으면 좋겠다.</p>
	
	<div class ="q"> 
		<input type="radio" id="Marksman" name="range" value="Marksman">
		<label for="Marksman">매우 그렇다</label> 
		<input type="radio" id="Mage" name="range" value="Mage"> 
		<label for="Mage">그렇다</label> 
		<input type="radio" id="supporter" name="range" value="supporter">
		<label for="supporter">보통이다</label> 
		<input type="radio" id="Assassin" name="range" value="Assassin"> 
		<label for="Assassin">모르겠다</label>
		<input type="radio" id="Fighter" name="range" value="Fighter">
		<label for="Fighter">그렇지 않다</label> 
		<input type="radio" id="Tank" name="range" value="Tank"> 
		<label for="Tank">전혀 그렇지 않다</label>
	</div>
	<br>
	<p>총보다 마법이 좋다.</p>
	
	<div class ="q"> 
		<input type="radio" id="Mage" name="magic" value="Mage">
		<label for="Mage">매우 그렇다</label> 
		<input type="radio" id="supporter" name="magic" value="supporter"> 
		<label for="supporter">그렇다</label> 
		<input type="radio" id="Fighter" name="magic" value="Fighter">
		<label for="Fighter">보통이다</label> 
		<input type="radio" id="Tank" name="magic" value="Tank"> 
		<label for="Tank">모르겠다</label>
		<input type="radio" id="Assassin" name="magic" value="Assassin">
		<label for="Assassin">그렇지 않다</label> 
		<input type="radio" id="Marksman" name="magic" value="Marksman"> 
		<label for="Marksman">전혀 그렇지 않다</label>
	</div>
	<br>
	<p>개인전보다 협동전을 선호한다. </p>
	
	<div class ="q">  
		<input type="radio" id="Tank" name="teamfight" value="Tank">
		<label for="Tank">매우 그렇다</label> 
		<input type="radio" id="supporter" name="teamfight" value="supporter"> 
		<label for="supporter">그렇다</label> 
		<input type="radio" id="Mage" name="teamfight" value="Mage">
		<label for="Mage">보통이다</label> 
		<input type="radio" id="Marksman" name="teamfight" value="Marksman"> 
		<label for="Marksman">모르겠다</label>
		<input type="radio" id="Fighter" name="teamfight" value="Fighter">
		<label for="Fighter">그렇지 않다</label> 
		<input type="radio" id="Assassin" name="teamfight" value="Assassin"> 
		<label for="Assassin">전혀 그렇지 않다</label>
	</div>
	<br>
	<p>기습공격으로 적을 공격하고 싶다.</p>
	
	<div class ="q"> 
		<input type="radio" id="Assassin" name="suddenattack" value="Assassin">
		<label for="Assassin">매우 그렇다</label> 
		<input type="radio" id="Fighter" name="suddenattack" value="Fighter"> 
		<label for="Fighter">그렇다</label> 
		<input type="radio" id="Mage" name="suddenattack" value="Mage">
		<label for="Mage">보통이다</label> 
		<input type="radio" id="Marksman" name="suddenattack" value="Marksman"> 
		<label for="Marksman">모르겠다</label>
		<input type="radio" id="Tank" name="suddenattack" value="Tank">
		<label for="Tank">그렇지 않다</label> 
		<input type="radio" id="supporter" name="suddenattack" value="supporter"> 
		<label for="supporter">전혀 그렇지 않다</label>
	</div>
	<br>
	<p>팀원들을 지키는 플레이스타일이다.</p>
	
	<div class ="q">  
		<input type="radio" id="Tank" name="tanker" value="Tank">
		<label for="Tank">매우 그렇다</label> 
		<input type="radio" id="Fighter" name="tanker" value="Fighter"> 
		<label for="Fighter">그렇다</label> 
		<input type="radio" id="Assassin" name="tanker" value="Assassin">
		<label for="Assassin">보통이다</label> 
		<input type="radio" id="Mage" name="tanker" value="Mage"> 
		<label for="Mage">모르겠다</label>
		<input type="radio" id="Marksman" name="tanker" value="Marksman">
		<label for="Marksman">그렇지 않다</label> 
		<input type="radio" id="supporter" name="tanker" value="supporter"> 
		<label for="supporter">전혀 그렇지 않다</label>
	</div>
	
	<br>
	<p>괴물캐릭터보다 귀여운 캐릭터를 좋아한다.</p>
	
	<div class ="q">  
		<input type="radio" id="supporter" name="cute" value="supporter">
		<label for="supporter">매우 그렇다</label> 
		<input type="radio" id="Mage" name="cute" value="Mage"> 
		<label for="Mage">그렇다</label> 
		<input type="radio" id="Marksman" name="cute" value="Marksman">
		<label for="Marksman">보통이다</label> 
		<input type="radio" id="Assassin" name="cute" value="Assassin"> 
		<label for="Assassin">모르겠다</label>
		<input type="radio" id="Fighter" name="cute" value="Fighter">
		<label for="Fighter">그렇지 않다</label> 
		<input type="radio" id="Tank" name="cute" value="Tank"> 
		<label for="Tank">전혀 그렇지 않다</label>
	</div>
	
	<br>
	
	<p>얍삽하고 빠른스타일이었으면 좋겠다.</p>
	
	<div class ="q">  
		<input type="radio" id="Assassin" name="assa" value="Assassin">
		<label for="Assassin">매우 그렇다</label> 
		<input type="radio" id="Fighter" name="assa" value="Fighter"> 
		<label for="Fighter">그렇다</label> 
		<input type="radio" id="Mage" name="assa" value="Mage">
		<label for="Mage">보통이다</label> 
		<input type="radio" id="Tank" name="assa" value="Tank"> 
		<label for="Tank">모르겠다</label>
		<input type="radio" id="Marksman" name="assa" value="Marksman">
		<label for="Marksman">그렇지 않다</label> 
		<input type="radio" id="supporter" name="assa" value="supporter"> 
		<label for="supporter">전혀 그렇지 않다</label>
	</div>
	
	<br>
	<p>상대에게 쓸수있는 무력화스킬(기절,수면,변이)이 있었으면 한다.</p>
	
	<div class ="q">  
		<input type="radio" id="Mage" name="cc" value="Mage">
		<label for="Mage">매우 그렇다</label> 
		<input type="radio" id="supporter" name="cc" value="supporter"> 
		<label for="supporter">그렇다</label> 
		<input type="radio" id="Tank" name="cc" value="Tank">
		<label for="Tank">보통이다</label> 
		<input type="radio" id="Fighter" name="cc" value="Fighter"> 
		<label for="Fighter">모르겠다</label>
		<input type="radio" id="Assassin" name="cc" value="Assassin">
		<label for="Assassin">그렇지 않다</label> 
		<input type="radio" id="Marksman" name="cc" value="Marksman"> 
		<label for="Marksman">전혀 그렇지 않다</label>
	</div>
	
	<br>
	<p>게임은 져도 나만 재미있으면 그만이다.</p>
	
	<div class ="q">  
		<input type="radio" id="Fighter" name="fun" value="Fighter">
		<label for="Fighter">매우 그렇다</label> 
		<input type="radio" id="Assassin" name="fun" value="Assassin"> 
		<label for="Assassin">그렇다</label> 
		<input type="radio" id="Mage" name="fun" value="Mage">
		<label for="Mage">보통이다</label> 
		<input type="radio" id="Marksman" name="fun" value="Marksman"> 
		<label for="Marksman">모르겠다</label>
		<input type="radio" id="supporter" name="fun" value="supporter">
		<label for="supporter">그렇지 않다</label> 
		<input type="radio" id="Tank" name="fun" value="Tank"> 
		<label for="Tank">전혀 그렇지 않다</label>
	</div>
	
	<br>
	<p>반응속도가 빠른편이다.</p>
	
	<div class ="q">  
		<input type="radio" id="Marksman" name="ms" value="Marksman">
		<label for="Marksman">매우 그렇다</label> 
		<input type="radio" id="Assassin" name="ms" value="Assassin"> 
		<label for="Assassin">그렇다</label> 
		<input type="radio" id="Mage" name="ms" value="Mage">
		<label for="Mage">보통이다</label> 
		<input type="radio" id="Fighter" name="ms" value="Fighter"> 
		<label for="Fighter">모르겠다</label>
		<input type="radio" id="Tank" name="ms" value="Tank">
		<label for="Tank">그렇지 않다</label> 
		<input type="radio" id="supporter" name="ms" value="supporter"> 
		<label for="supporter">전혀 그렇지 않다</label>
	</div>
	
	<br>


	<div>
		<button  onclick = "submit()">나의 챔피언보기</button>
	</div>	
	</div>
	 
	 
	<br>

</body>
<script type="text/javascript">
	let arr = [];
	let result = {};

	function submit(){
		const request = new XMLHttpRequest();
		
		tw = document.querySelector('input[name="teamwork"]:checked').value;
	 	p = document.querySelector('input[name="pora"]:checked').value;
		j = document.querySelector('input[name="jo"]:checked').value;
		h = document.querySelector('input[name="hirisk"]:checked').value;
		c = document.querySelector('input[name="choban"]:checked').value;
		o = document.querySelector('input[name="onebbang"]:checked').value;
		u = document.querySelector('input[name="understand"]:checked').value;
		r = document.querySelector('input[name="range"]:checked').value;
		m = document.querySelector('input[name="magic"]:checked').value;
		tf = document.querySelector('input[name="teamfight"]:checked').value;
		sa = document.querySelector('input[name="suddenattack"]:checked').value;
		t = document.querySelector('input[name="tanker"]:checked').value;
		cu = document.querySelector('input[name="cute"]:checked').value;
		as = document.querySelector('input[name="assa"]:checked').value;
		cc = document.querySelector('input[name="cc"]:checked').value;
		fun = document.querySelector('input[name="fun"]:checked').value;
		ms = document.querySelector('input[name="ms"]:checked').value;
		 
		
	
		arr=[tw,p,j,h,c,o,u,r,m,tf,sa,t,cu,as,cc,fun,ms];
		console.log(arr);
		 
		arr.forEach((x)=>{//forEach 배열의 각각 원소들을 순서대로 함수에전달.
			result[x]=(result[x]||0)+1;
			
			// if(result[x]){
				//result[x]=result[x]+1;
			//}else{
				//result[x]=0+1;
			//}  //result값이 같으면 1 아니면 0
			//	})
		});
		location.href="/controller/board/mychampion?championClass="+max(result);
	}
	
	function max(obj){
		var tmp = 0;
		var key_tmp = '';
		for(key in obj){
			console.log('key:'+key+' '+'value:'+obj[key]);
			if (tmp < obj[key]) {
				tmp = obj[key];
				key_tmp = key;
			}
		}
		return key_tmp;
	}
	
</script>
</html>