<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.sec1 {
	align-items: center;
	text-align: center;
}

.sec2 {
	align-items: center;
	text-align: center;
	background-color: lightyellow;
	margin: 50px;
	padding: 50px;
	align-content:center;
}
</style>
<script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
<script>
	$(document).ready(function() {
		function readURL(input) {
			if (input.files && input.files[0]) {
				var reader = new FileReader(); //파일을 읽기 위한 FileReader객체 생성
				reader.onload = function(e) {
					//파일 읽어들이기를 성공했을때 호출되는 이벤트 핸들러
					$('#blah').attr('src', e.target.result);

					//이미지 Tag의 SRC속성에 읽어들인 File내용을 지정
					//(아래 코드에서 읽어들인 dataURL형식)
				}
				reader.readAsDataURL(input.files[0]);

				//File내용을 읽어 dataURL형식의 문자열로 저장
			}

		}//readURL()--

		//file 양식으로 이미지를 선택(값이 변경) 되었을때 처리하는 코드
		$("#filename").change(function() {
			alert(this.value); //선택한 이미지 경로 표시
			readURL(this);
		});
	});
</script>
</head>
<body>

		<form id="form1" action="ResizeProc.jsp" method="post"
			enctype="multipart/form-data">
			<table width="100%" height="100%">
				<tr>

					<td class="sec1" width="30%"><img src="img/folder.png"
						name="blah" id="blah" width="200" height="200"><br> <input
						type="file" value="이미지 파일 선택" id="file1" ></td>
					<td>을 <select>
							<option value="ldpi (저밀도) ~120dpi">ldpi (저밀도) ~120dpi</option>
							<option value="mdpi(중간밀도) ~160dpi">mdpi(중간밀도) ~160dpi</option>
							<option value="hdpi(고밀도)~240dpi">hdpi(고밀도)~240dpi</option>
							<option value="xhdpi(초고밀도)~320dpi">xhdpi(초고밀도)~320dpi</option>
							<option value="xxhdpi(초초고밀도)~480dpi">xxhdpi(초초고밀도)~480dpi</option>
							<option value="xxxhdpi(초초초고밀도)~640dpi">xxxhdpi(초초초고밀도)~640dpi</option>
					</select> 폴더에 넣어 기준을 잡겠습니다.
					<input type="submit" value="download">
					</td>
				</tr>

				<tr>
					<td rowspan="2">
						<div  class="sec2">
							ldpi(저밀도) ~120dpi<input type="checkbox"><br> mdpi
							(중간밀도) ~160dpi<input type="checkbox"><br> hdpi
							(고밀도)~240dpi<input type="checkbox"><br> xhdpi
							(초고밀도)~320dpi<input type="checkbox"><br> xxhdpi
							(초초고밀도)~480dpi<input type="checkbox"><br> xxxhdpi
							(초초초고밀도)~640dpi<input type="checkbox"><br>
						</div> 
					</td>
				</tr>
			</table>
		</form>

</body>
</html>