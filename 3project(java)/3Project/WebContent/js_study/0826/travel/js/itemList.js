		//1.제어할 HTML요소에 접근 --> HTML요소객체값 반환
		let addBtn = document.querySelector('#add')
		let input = document.querySelector('#item')
		let div = document.querySelector('#itemList')

		//여행준비물을 저장히기 위한 items라는 배열을 생성
		let items = [];
		
		//이벤트를 적용하는 메소드
		addBtn.addEventListener('click', function(){
		
			//사용자가 입력한 값을 출력
			//console.log(input.value);

			addItem();

			//div태그 내에 여행 준비물 출력하기
			console.log(div.innerHTML);//div태그 내 작성된 내용접근
			
			//itmes배열에 저장된 모든 데이터를 
			//li태그 구조로 만든 후 div태그에 값으로 초기화(대입,저장한다는 마인드)
			
			showItem();
		});

		function addItem(){
			//입력한 값을 배열에 저장한 후에 items배열을 출력
			items.push(input.value);
		}

	function showItem(){
		//웹 페이지에 목록 갱신
		let html = '<ul>';

		for(let i =0; i<items.length; i++){
		html += '<li>'+items[i]+'<span class="close" id="'+i+'">X</span></li>';
		}	
		html += '</ul>';

		div.innerHTML = html;

		//삭제버튼인 span요소들을 접근
		let delBtns = document.querySelectorAll('.close');
		for(let i=0; i<delBtns.length;i++){
		delBtns[i].addEventListener('click',removeItem);
	}//end for
		console.log(delBtns);

	// 	for(let i=0; i<delBtns.length;i++){
	// 	delBtns[i].addEventListener('click',function(){\
	// 	//삭제버튼 클릭 시 items에 저장된 요소 삭제
	// 	removeItem();
	// 	//console.log('삭제버튼 실행')

	// 	//this : 이벤트가 발생한 HTML요소객체의 정보를 담고 있는 키워드
	// 	//console.log(this.attributes);
	// 	//console.log('id속성값>>',this.getAttribute('id'));

	// 	//items배열에 저장된 데이터 삭제(span태그의 id값 활용)
	// 	//splice(시작 인덱스, 삭제할 갯수)
	// 	//let pos = this.getAttribute('id');
	// 	//items.splice(pos,1);

	// 	//웹 페이지에 목록 갱신
	// 	// let html = '<ul>';

	// 	// for(let i =0; i<items.length; i++){
	// 	// html += '<li>'+items[i]+'<span class="close" id="'+i+'">X</span></li>';
	// 	// }	
	// 	// html += '</ul>';

	// 	// div.innerHTML = html;

	// 	});//end addEvent
	// }//end for

}//end showItem

function removeItem(){
	console.log('삭제기능 실행!')
	let pos = this.getAttribute('id');
	items.splice(pos,1);

	showItem();
}