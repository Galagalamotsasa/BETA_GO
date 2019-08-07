// share
$('.shareWrap button').click(function(){
	$(this).toggleClass('active');
});

// kakaoTalk
var kakaoTalk = function( items ){
	var firstimage = '';
	if( items.firstimage ){ firstimage = items.firstimage }
	
	Kakao.init('601ab5e5a3e00b612d97e6037eeefff4');
	Kakao.Link.createDefaultButton({
		container: '.kakaoTalk',
		objectType: 'feed',
		content: {
			title: $('title').text(),
			description: items.overview,
			imageUrl: firstimage,
			link: {
				mobileWebUrl: window.location.href,
				webUrl: window.location.href
			}
		},
		buttons: [
			{
				title: '자세히 보기',
				link: {
					mobileWebUrl: window.location.href,
					webUrl: window
					.location.href
				}
			}
		]
	});
}

// social
var social = function( items ){
	var firstimage = '';
	if( items.firstimage ){ firstimage = items.firstimage }
	$('meta[property=og\\:image]').attr( 'content', firstimage );
	$('meta[property=og\\:title]').attr( 'content', $('title').text() );
	$('meta[property=og\\:description]').attr( 'content', items.overview );
	
	$('.facebook').click(function(){
		var link = 'http://www.facebook.com/share.php?u=' + encodeURIComponent( window.location.href );
		window.open(link, "_blank", "width=900,height=530");
	});
	
	$('.twitter').click(function(){
		var link = 'http://twitter.com/share?url=' + encodeURIComponent( window.location.href );
		window.open(link, "_blank", "width=900,height=530");
	});
}

// linkShare
$('.urlShare').click(function(){
	var clipboard = window.location.href;
	
	var t = document.createElement("textarea");
	document.body.appendChild(t);
	t.value = clipboard;
	t.select();
	document.execCommand('copy');
	document.body.removeChild(t);
	
	alert('클립보드에 복사되었습니다. 공유하고자 하는 곳에 붙여넣기 하세요');
});