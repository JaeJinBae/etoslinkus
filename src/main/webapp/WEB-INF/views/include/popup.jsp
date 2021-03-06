<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<style>
.popup_content{
	width:450px;
	background: #f3f3f3;
	margin:0 auto;
	margin-top:100px;
	position: relative;
	z-index: 999;
	text-align: center;
	padding-bottom: 1px;
}
.popup_content > .simplePatientInfo{
	position: absolute;
	right: -200px;
	width: 200px;
	background: #fff;
}
.popup_content > .simplePatientInfo > ul{
	width: 100%;
}
.popup_content > .simplePatientInfo > ul > li{
	width: 100%;
	text-align: left;
	padding: 5px;
	font-size: 14px;
}
.popup_content > .simplePatientInfo > ul > li > .spi_t{
	display: inline-block;
	width: 60x;
}
.popup_content > .simplePatientInfo > ul > li > .spi_memo{
	display: inline-block;
	width: 125px;
	vertical-align: top;
}
.popup_content > h2{
	width:100%;
	padding: 10px 0;
	background: #353c46;
	color: #fff;
	letter-spacing: 2px;
	overflow: hidden;
	vertical-align: middle;
	font-size: 25px;
	font-weight: bold;
}
.popup_content > table{
	width:100%;
	margin: 0 auto;
	border-bottom: 2px solid lightgray;
}
.popup_content > table tr{
	display:block;
}
.popup_content > table tr > th{
	font-size:16px;
	width:145px;
	background: #e9e9e9;
	color: #494949; 
	font-weight: bold;
	letter-spacing: 0.3px;
	padding-left: 10px;
	text-align: left;
}
.popup_content > table tr > td{
	font-size:15px;
	padding: 15px 0;
	padding-left: 20px;
	text-align: left;
}
.popup_content > table tr > td > span{
	vertical-align: middle;
}
.popup_content > table tr > td > input{
	width: 181px;
	font-size:15px;
	padding: 3px;
}
.popup_content > table tr > td > select{
	font-size: 15px;
	padding: 3px;
}
.popup_content > table tr > td > button{
	font-size: 15px;
	background: #353c46;
	color: #fff;
	letter-spacing: 1px;
	padding:4px;
	border-radius: 4px;
	margin-left:10px;
}
.popup_mypage{
	display:none;
}
.popup_mypage > .popup_mypage_btn_wrap{
	width: 100%;
	margin: 15px auto;
}
.popup_mypage > .popup_mypage_btn_wrap > p{
	display: inline-block;
	padding:8px 10px;
	font-size:15px;
	margin: 0 10px;
	cursor: pointer;
	background: #595959;
	color: #fff;
	border-radius: 4px;
	letter-spacing: 1px;
}
.popup_patient_register{
	display: none;
}
.popup_patient_register > .popup_patient_register_submit_wrap{
	width: 100%;
	margin: 15px auto;
}
.popup_patient_register > .popup_patient_register_submit_wrap > p{
	display: inline-block;
	padding:8px 10px;
	font-size:15px;
	margin: 0 10px;
	cursor: pointer;
	background: #595959;
	color: #fff;
	border-radius: 4px;
	letter-spacing: 1px;
}
.popup_patientUpdate{
	display:none;
}
.popup_patientUpdate > .popup_patient_update_submit_wrap{
	width:100%;
	margin: 15px auto;
}
.popup_patientUpdate > .popup_patient_update_submit_wrap > p{
	display: inline-block;
	padding:8px 10px;
	font-size:15px;
	margin: 0 10px;
	cursor: pointer;
	background: #595959;
	color: #fff;
	border-radius: 4px;
	letter-spacing: 1px;
}
.popup_clinic_reservation_register{
	display:none;
}
.popup_clinic_reservation_register .fix_clinic_res_tr{
	display:none;
}
.popup_therapy_reservation_register{
	display: none;
}
.popup_therapy_reservation_register .fix_therapy_res_tr{
	display: none;
}
.popup_reservation_register_btn_wrap{
	width:100%;
	margin: 15px auto;
}
.popup_reservation_register_btn_wrap > p{
	display: inline-block;
	padding:8px 10px;
	font-size:15px;
	margin: 0 10px;
	cursor: pointer;
	background: #595959;
	color: #fff;
	border-radius: 4px;
	letter-spacing: 1px;
}
.popup_reservation_info_view{
	display:none;
	width: 510px;
}
.popup_reservation_info_view > h2 > span{
	cursor: pointer;
}
.popup_reservation_info_view > table tr:nth-child(5){
	display: none;
}
.popup_reservation_info_view > table tr:nth-child(6) > td{
	text-align: left;
}
.popup_reservation_info_view > table tr:nth-child(6) > td > p{
	font-size: 15px;
	margin-bottom: 5px;
	cursor: pointer;
}
.popup_reservation_info_view > table tr:nth-child(6) > td > p:hover{
	font-weight: bold;
}
.popup_reservation_info_view > .popup_reservation_info_btn_wrap{
	width:100%;
	margin: 15px auto;
}
.popup_reservation_info_view > .popup_reservation_info_btn_wrap > p{
	display: inline-block;
	padding:8px 10px;
	font-size:15px;
	margin: 0 10px;
	cursor: pointer;
	background: #353c46;
	color: #fff;
	border-radius: 4px;
	letter-spacing: 1px;
}
.popup_reservation_info_view > table .cancel_reason{
	display:none;
}
.popup_reservation_info_view > table .cancel_reason > td > textarea{
	width: 226px;
	font-size: 14px;
	vertical-align: middle;
	resize: none;
}
.popup_reservation_info_cancel_wrap > table{
	width: 100%;
}
.popup_reservation_update{
	display:none;
}
.popup_reservation_update > .popup_res_update_btn_wrap{
	width:100%;
	margin: 15px auto;
}
.popup_reservation_update > .popup_res_update_btn_wrap > p{
	display: inline-block;
	padding:8px 10px;
	font-size:15px;
	margin: 0 10px;
	cursor: pointer;
	background: #353c46;
	color: #fff;
	border-radius: 4px;
	letter-spacing: 1px;
}

.popup_reservation_schedule_update{
	display:none;
}
.popup_reservation_schedule_update > .popup_sch_update_btn_wrap{
	width:100%;
	margin: 15px auto;
}
.popup_reservation_schedule_update > .popup_sch_update_btn_wrap > p{
	display: inline-block;
	padding:8px 10px;
	font-size:15px;
	margin: 0 10px;
	cursor: pointer;
	background: #353c46;
	color: #fff;
	border-radius: 4px;
	letter-spacing: 1px;
}
.popup_normal_off_register{
	display:none;
}
.popup_normal_off_register > .popup_normalOff_register_btn_wrap{
	width:100%;
	margin: 15px auto;
}
.popup_normal_off_register > .popup_normalOff_register_btn_wrap > p{
	display: inline-block;
	padding:8px 10px;
	font-size:15px;
	margin: 0 10px;
	cursor: pointer;
	background: #353c46;
	color: #fff;
	border-radius: 4px;
	letter-spacing: 1px;
}
.popup_fix_off_register{
	display:none;
}
.popup_fix_off_register > .popup_fixOff_register_btn_wrap{
	width:100%;
	margin: 15px auto;
}
.popup_fix_off_register > .popup_fixOff_register_btn_wrap > p{
	display: inline-block;
	padding:8px 10px;
	font-size:15px;
	margin: 0 10px;
	cursor: pointer;
	background: #353c46;
	color: #fff;
	border-radius: 4px;
	letter-spacing: 1px;
}
.popup_normal_off_update{
	display:none;
}
.popup_normal_off_update > .popup_normalOff_update_btn_wrap{
	width:100%;
	margin: 15px auto;
}
.popup_normal_off_update > .popup_normalOff_update_btn_wrap > p{
	display: inline-block;
	padding:8px 10px;
	font-size:15px;
	margin: 0 10px;
	cursor: pointer;
	background: #353c46;
	color: #fff;
	border-radius: 4px;
	letter-spacing: 1px;
}
.popup_fix_off_update{
	display:none;
}
.popup_fix_off_update > .popup_fixOff_update_btn_wrap{
	width:100%;
	margin: 15px auto;
}
.popup_fix_off_update > .popup_fixOff_update_btn_wrap > p{
	display: inline-block;
	padding:8px 10px;
	font-size:15px;
	margin: 0 10px;
	cursor: pointer;
	background: #353c46;
	color: #fff;
	border-radius: 4px;
	letter-spacing: 1px;
}

.popup_smsSend{
	display: none;
	position: absolute;
	top: -4%;
	left: 40%;
	border: 1px solid gray;
}
.popup_smsSend > table tr > td > textarea{
	width: 182px;
	height: 250px;
	font-size: 15px;
	resize: none;
}
.popup_smsSend > .popup_smsSend_btn_wrap{
	width:100%;
	margin: 15px auto;
}
.popup_smsSend > .popup_smsSend_btn_wrap > p{
	display: inline-block;
	padding:8px 10px;
	font-size:15px;
	margin: 0 10px;
	cursor: pointer;
	background: #353c46;
	color: #fff;
	border-radius: 4px;
	letter-spacing: 1px;
}
</style>
<script>
function inputBirthChk(obj) {
	var number = obj.value.replace(/[^0-9]/g, "");
	var birth = "";
	
	if(number.length < 5) {
		return number;
	} else if(number.length < 7) {
		birth += number.substr(0, 4);
		birth += "-";
		birth += number.substr(4);
	}else {
		birth += number.substr(0, 4);
		birth += "-";
		birth += number.substr(4, 2);
		birth += "-";
		birth += number.substr(6);
	}
	
	obj.value = birth;
}

function inputPhoneNumber(obj) {
	var number = obj.value.replace(/[^0-9]/g, "");
	var phone = "";
	
	if(number.length < 4) {
		return number;
	} else if(number.length < 7) {
		phone += number.substr(0, 3);
		phone += "-";
		phone += number.substr(3);
	} else if(number.length < 11) {
		phone += number.substr(0, 3);
		phone += "-";
		phone += number.substr(3, 3);
		phone += "-";
		phone += number.substr(6);
	} else {
		phone += number.substr(0, 3);
		phone += "-";
		phone += number.substr(3, 4);
		phone += "-";
		phone += number.substr(7);
	}
	obj.value = phone;
}

$(function(){
	$(".popup_clinic_reservation_register > table tr:nth-child(3) > td > select[name='rtype']").change(function(){
		var rtype=$(this).val();
		if(rtype == "fc"){
			$(".fix_clinic_res_tr").css("display","block");
		}else{
			$(".fix_clinic_res_tr").css("display","none");
		}
	});
	
	$(".popup_therapy_reservation_register > table tr:nth-child(3) > td > select[name='rtype']").change(function(){
		var rtype=$(this).val();
		if(rtype == "ft"){
			$(".fix_therapy_res_tr").css("display","block");
		}else{
			$(".fix_therapy_res_tr").css("display","none");
		}
	});
	
});
</script>
	<div class="popup_bg">
	</div>
	<div class="popup_mypage popup_content">
		<h2>내정보 수정</h2>
		<table>
			<tr>
				<th>▶ 이름</th>
				<td><input type="text" name="name"></td>
			</tr>
			<tr>
				<th>▶ 생년월일</th>
				<td><input type="text" name="birth" placeholder="ex) 1999-09-09"></td>
			</tr>
			<tr>
				<th>▶ 연락처</th>
				<td><input type="text" name="phone" placeholder="ex) 010-1111-1111" onKeyup="inputPhoneNumber(this);" maxlength="13"></td>
			</tr>
			<tr>
				<th>▶ 아이디</th>
				<td><input type="text" name="id" readonly="readonly"></td>
			</tr>
			<tr>
				<th>▶ 변경 비밀번호</th>
				<td><input type="password" name="pw" placeholder="변경 시 입력해주세요."></td>
			</tr>
			<tr>
				<th>▶  비밀번호 확인</th>
				<td><input type="password" name="pwConfirm" placeholder="변경 시 입력해주세요."></td>
			</tr>
		</table>
		<div class="popup_mypage_btn_wrap">
			<p>저장</p>
			<p>닫기</p>
		</div>
	</div>
	<div class="popup_patient_register popup_content">
		<h2><span>환자등록 </span></h2>
		<table>
			<tr>
				<th>▶ 차트번호</th>
				<td><input type="text" name="cno" value=""><button>중복확인</button><input type="hidden" name="dupliChkNum" value="0"></td>
			</tr>
			<tr>
				<th>▶ 이름</th>
				<td><input type="text" name="name" value=""></td>
			</tr>
			<tr>
				<th>▶ 연락처</th>
				<td><input type="text" name="phone" value="" placeholder="ex) 010-1234-1234" onKeyup="inputPhoneNumber(this);" maxlength="13"></td>
			</tr>
			<tr>
				<th>▶ 생년월일</th>
				<td><input type="text" name="birth" value="" placeholder="ex) 1999-09-09" onKeyup="inputBirthChk(this);" maxlength="10"></td>
			</tr>
			<tr>
				<th>▶ 성별</th>
				<td>
					<select name="gender">
						<option value="남">남</option>
						<option value="여">여</option>
					</select>
				</td>
			</tr>
			<tr>
				<th>▶ 담당의사</th>
				<td>
					<select name="main_doctor">
						<option value="">선택해주세요.</option>
						<c:forEach var="list" items="${doctorList}">
							<option value="${list.eno}">${list.name}</option>
						</c:forEach>
					</select>
				</td>
			</tr>
			<tr>
				<th>▶ 메모</th>
				<td><input type="text" name="memo" value=""></td>
			</tr>
		</table>
		<div class="popup_patient_register_submit_wrap">
			<p>저장</p>
			<p>닫기</p>
		</div>
	</div><!-- popup_patient_register end -->
	
	<div class="popup_patientUpdate popup_content">
		<h2>회원정보수정</h2>
		<input name="pno" type="hidden" value="">
		<table>
			<tr>
				<th>▶ 차트번호</th>
				<td><input type="text" name="cno" value=""><button>중복확인</button><input type="hidden" name="dupliChkNum" value="1"></td>
			</tr>
			<tr>
				<th>▶ 이름</th>
				<td><input type="text" name="name" value=""></td>
			</tr>
			<tr>
				<th>▶ 연락처</th>
				<td><input type="text" name="phone" value="" placeholder="ex) 010-1234-1234"></td>
			</tr>
			<tr>
				<th>▶ 생년월일</th>
				<td><input type="text" name="birth" value="" placeholder="ex) 1999-09-09"></td>
			</tr>
			<tr>
				<th>▶ 성별</th>
				<td>
					<select name="gender">
						<option value="남">남</option>
						<option value="여">여</option>
					</select>
				</td>
			</tr>
			<tr>
				<th>▶ 담당의사</th>
				<td>
					<select name="main_doctor">
						<option value="">선택해주세요.</option>
						<c:forEach var="list" items="${doctorList}">
							<option value="${list.eno}">${list.name}</option>
						</c:forEach>
					</select>
				</td>
			</tr>
			<tr>
				<th>▶ 메모</th>
				<td><input type="text" name="memo" value=""></td>
			</tr>
		</table>
		<div class="popup_patient_update_submit_wrap">
			<p>저장</p>
			<p>닫기</p>
		</div>
	</div><!-- popup_patientUpdate end -->
	
	<!-- 진료일정등록 -->
	<div class="popup_clinic_reservation_register popup_content popup_content2">
		<h2><span></span> 진료일정등록</h2>
		<table>
			<tr>
				<th>▶ 담당의사</th>
				<td>
					<select name="eno">
						<c:forEach var="item" items="${doctorList}">
							<option value="${item.eno}">${item.name}</option>
						</c:forEach>
					</select>
				</td>
			</tr>
			<tr>
				<th>▶ 진료종류</th>
				<td>
					<select name="clinic">
						<option value="">선택없음</option>
						<c:forEach var="item" items="${clinicList}">
							<option value="${item.cno}">${item.code_name}</option>
						</c:forEach>
					</select>
				</td>
			</tr>
			<tr>
				<th>▶ 예약구분</th>
				<td>
					<select name="rtype">
						<option value="nc">일반예약</option>
						<option value="fc">고정예약</option>
						<option value="wr">대기예약</option>
					</select>
				</td>
			</tr>
			<tr>
				<th>▶ 예약시간</th>
				<td>
					<span class="popup_reservation_register_date"></span>시
					<select name="rtime_minute">
						<option value="0">00분</option>
						<option value="5">05분</option>
						<option value="10">10분</option>
						<option value="15">15분</option>
						<option value="20">20분</option>
						<option value="25">25분</option>
						<option value="30">30분</option>
						<option value="35">35분</option>
						<option value="40">40분</option>
						<option value="45">45분</option>
						<option value="50">50분</option>
						<option value="55">55분</option>
						<option value="60">60분</option>
					</select>
				</td>
			</tr>
			<tr class="fix_clinic_res_tr">
				<th>▶ 고정예약요일</th>
				<td>
					<select name="fix_day">
						<option value="월">월</option>
						<option value="화">화</option>
						<option value="수">수</option>
						<option value="목">목</option>
						<option value="금">금</option>
						<option value="토">토</option>
					</select>
				</td>
			</tr>
			<tr class="fix_clinic_res_tr">
				<th>▶ 고정예약시작일</th>
				<td><input type="date" name="fix_day_start" readonly="readonly"></td>
			</tr>
			<tr class="fix_clinic_res_tr">
				<th>▶ 고정예약종료일</th>
				<td><input type="date" name="fix_day_end"></td>
			</tr>
			<tr>
				<th>▶ 메모</th>
				<td><input type="text" name="memo" value=""></td>
			</tr>
		</table>
		<div class="popup_reservation_register_btn_wrap">
			<p>예약추가</p>
			<p>진료접수</p>
			<p>닫기</p>
		</div>
	</div><!-- popup_reservation_register -->
	
	<!-- 치료일정등록 -->
	<div class="popup_therapy_reservation_register popup_content popup_content2">
		<h2><span></span> 치료일정등록</h2>
		<table>
			<tr>
				<th>▶ 치료사</th>
				<td>
					<select name="eno">
						<c:forEach var="item" items="${therapistList}">
							<option value="${item.eno}">${item.name}</option>
						</c:forEach>
					</select>
				</td>
			</tr>
			<tr>
				<th>▶ 치료종류</th>
				<td>
					<select name="clinic">
						<option value="">선택없음</option>
						<c:forEach var="item" items="${therapyList}"> 
							<option value="${item.cno}">${item.code_name}</option>
						</c:forEach>
					</select>
				</td>
			</tr>
			<tr>
				<th>▶ 예약구분</th>
				<td>
					<select name="rtype">
						<option value="nt">일반예약</option>
						<option value="ft">고정예약</option>
						<option value="wr">대기예약</option>
					</select>
				</td>
			</tr>
			<tr>
				<th>▶ 예약시간</th>
				<td>
					<span class="popup_reservation_register_date"></span>시
					<select name="rtime_minute">
						<option value="0">00분</option>
						<option value="5">05분</option>
						<option value="10">10분</option>
						<option value="15">15분</option>
						<option value="20">20분</option>
						<option value="25">25분</option>
						<option value="30">30분</option>
						<option value="35">35분</option>
						<option value="40">40분</option>
						<option value="45">45분</option>
						<option value="50">50분</option>
						<option value="55">55분</option>
						<option value="60">60분</option>
					</select>
				</td>
			</tr>
			
			<tr class="fix_therapy_res_tr">
				<th>▶ 고정예약요일</th>
				<td>
					<select name="fix_day">
						<option value="월">월</option>
						<option value="화">화</option>
						<option value="수">수</option>
						<option value="목">목</option>
						<option value="금">금</option>
						<option value="토">토</option>
					</select>
				</td>
			</tr>
			<tr class="fix_therapy_res_tr">
				<th>▶ 고정예약시작일</th>
				<td><input type="date" name="fix_day_start" placeholder="ex) 2019-01-01" readonly="readonly"></td>
			</tr>
			<tr class="fix_therapy_res_tr">
				<th>▶ 고정예약종료일</th>
				<td><input type="date" name="fix_day_end"></td>
			</tr>
			<tr>
				<th>▶ 메모</th>
				<td><input type="text" name="memo" value=""></td>
			</tr>
		</table>
		<div class="popup_reservation_register_btn_wrap">
			<p>예약추가</p>
			<p>치료접수</p>
			<p>닫기</p>
		</div>
	</div><!-- popup_therapy_reservation_register end -->
	
	<div class="popup_reservation_info_view popup_content">
		<div class="simplePatientInfo">
			<ul>
				<li><span class="spi_t">생년월일 :</span><span class="spi_birth"></span></li>
				<li><span class="spi_t">환자메모 :</span><span class="spi_memo"></span></li>
			</ul>
		</div>
		<h2></h2>
		<table>
			<tr>
				<th>▶ 연락처</th>
				<td><span></span><button>문자</button></td>
			</tr>
			<tr>
				<th>▶ 일정일시</th>
				<td><span></span><button id="upResBtn">예약변경</button><button id="upSchBtn">일정변경</button></td>
			</tr>
			<tr>
				<th>▶ 치료내용</th>
				<td><span></span></td>
			</tr>
			<tr>
				<th>▶ 메모</th>
				<td><span></span></td>
			</tr>
			<tr class="cancelMemo">
				<th>▶ 취소메모</th>
				<td><span></span></td>
			</tr>
			<tr>
				<th>▶ 당일 예약 현황</th>
				<td></td>
			</tr>
			<tr class="cancel_reason">
				<th>▶ 취소사유</th>
				<td><textarea name="cancel_reason"></textarea><button>저장</button></td>
			</tr>
		</table>
		<div class="popup_reservation_info_btn_wrap">
			<p>예약완료</p>
			<p>접수완료</p>
			<p>예약취소</p>
			<p>닫기</p>
		</div>
	</div><!-- popup_reservation_info_view -->
	
	<div class="popup_reservation_update popup_content">
		<h2><span></span>일정변경</h2>
		<table>
			<tr>
				<th>▶ 변경 전 일시</th>
				<td></td>
			</tr>
			<tr>
				<th>▶ 변경 날짜</th>
				<td><input type="date" name="rdate" value=""></td>
			</tr>
			<tr>
				<th>▶ 변경 시간</th>
				<td>
					<select name="rtime1">
						<option value="480">08시</option>
						<option value="540">09시</option>
						<option value="600">10시</option>
						<option value="660">11시</option>
						<option value="720">12시</option>
						<option value="780">13시</option>
						<option value="840">14시</option>
						<option value="900">15시</option>
						<option value="960">16시</option>
						<option value="1020">17시</option>
						<option value="1080">18시</option>
						<option value="1140">19시</option>
						<option value="1200">20시</option>
						<option value="1260">21시</option>
						<option value="1320">22시</option>
					</select>
					<select name="rtime2">
						<option value="0">00분</option>
						<option value="5">05분</option>
						<option value="10">10분</option>
						<option value="15">15분</option>
						<option value="20">20분</option>
						<option value="25">25분</option>
						<option value="30">30분</option>
						<option value="35">35분</option>
						<option value="40">40분</option>
						<option value="45">45분</option>
						<option value="50">50분</option>
						<option value="55">55분</option>
						<option value="60">60분</option>
					</select>
				</td>
			</tr>
			<tr>
				<th>▶ 의사/치료사</th>
				<td>
					<select name="emp">
						
					</select>
				</td>
			</tr>
			<tr>
				<th>▶ 진료종류</th>
				<td>
					<select name="clinic">
					
					</select>
				</td>
			</tr>
			<tr>
				<th>▶ 메모</th>
				<td><input type="text" name="memo" value=""></td>
			</tr>
			<tr>
				<th>▶ 변경사유</th>
				<td><input type="text" name="updateMemo" value="" style="border:1px solid #f44e21;"></td>
			</tr>
		</table>
		<div class="popup_res_update_btn_wrap">
			<p>변경저장</p>
			<p>예약삭제</p>
			<p>닫기</p>
		</div>
	</div><!-- popup_normal_reservation_update -->
	
	<div class="popup_reservation_schedule_update popup_content">
		<h2><span></span>일정변경</h2>
		<table>
			<tr>
				<th>▶ 변경 전 일정</th>
				<td><span></span><input type="hidden" name="fix_day_start"><input type="hidden" name="fix_day_end"></td>
			</tr>
			<tr>
				<th>▶ 변경 기간</th>
				<td>시작일: <input type="date" name="req_day_start" value=""><br>종료일: <input type="date" name="req_day_end" value=""></td>
			</tr>
			<tr>
				<th>▶ 변경 일시</th>
				<td>
					<select name="fix_day" disabled>
						<option value="월">월</option>
						<option value="화">화</option>
						<option value="수">수</option>
						<option value="목">목</option>
						<option value="금">금</option>
						<option value="토">토</option>
					</select>
					<select name="rtime1">
						<option value="480">08시</option>
						<option value="540">09시</option>
						<option value="600">10시</option>
						<option value="660">11시</option>
						<option value="720">12시</option>
						<option value="780">13시</option>
						<option value="840">14시</option>
						<option value="900">15시</option>
						<option value="960">16시</option>
						<option value="1020">17시</option>
						<option value="1080">18시</option>
						<option value="1140">19시</option>
						<option value="1200">20시</option>
						<option value="1260">21시</option>
						<option value="1320">22시</option>
					</select>
					<select name="rtime2">
						<option value="0">00분</option>
						<option value="5">05분</option>
						<option value="10">10분</option>
						<option value="15">15분</option>
						<option value="20">20분</option>
						<option value="25">25분</option>
						<option value="30">30분</option>
						<option value="35">35분</option>
						<option value="40">40분</option>
						<option value="45">45분</option>
						<option value="50">50분</option>
						<option value="55">55분</option>
						<option value="60">60분</option>
					</select>
				</td>
			</tr>
			<tr>
				<th>▶ 의사/치료사</th>
				<td>
					<select name="emp">
						
					</select>
				</td>
			</tr>
			<tr>
				<th>▶ 진료종류</th>
				<td>
					<select name="clinic">
					
					</select>
				</td>
			</tr>
			<tr>
				<th>▶ 메모</th>
				<td><input type="text" name="memo" value=""></td>
			</tr>
			<tr>
				<th>▶ 변경사유</th>
				<td><input type="text" name="updateMemo" value="" style="border:1px solid #f44e21;"></td>
			</tr>
		</table>
		<div class="popup_sch_update_btn_wrap">
			<p>변경일정저장</p>
			<p>예약삭제</p>
			<p>닫기</p>
		</div>
	</div><!-- popup_reservation_schedule_update end -->
	
	<div class="popup_normal_off_register popup_content">
		<h2>일반휴무 추가</h2>
		<table>
			<tr>
				<th>▶ 휴무자</th>
				<td>
					<select name="emp">
						<option value="">선택해주세요.</option>
						<option value="0_all">직원전체</option>
						<c:forEach var="list" items="${doctorList}">
							<option value="${list.eno}_${list.type}">${list.name}</option>
						</c:forEach>
						<c:forEach var="list" items="${therapistList}">
							<option value="${list.eno}_${list.type}">${list.name}</option>
						</c:forEach>
					</select>
				</td>
			</tr>
			<tr>
				<th>▶ 휴무종류</th>
				<td><input type="text" name="offType" value="휴무" placeholder="ex) 휴무"></td>
			</tr>
			<tr>
				<th>▶ 시작일</th>
				<td>
					<input type="date" name="startdate" value="">
					<select name="starttime">
						<c:forEach var="idx" begin="8" end="23">
							<option value="${idx}">${idx}시</option>
						</c:forEach>
					</select>
				</td>
			</tr>
			<tr>
				<th>▶ 종료일</th>
				<td>
					<input type="date" name="enddate" value="">
					<select name="endtime">
						<c:forEach var="idx" begin="8" end="23">
							<option value="${idx}">${idx}시</option>
						</c:forEach>
					</select>
				</td>
			</tr>
		</table>
		<div class="popup_normalOff_register_btn_wrap">
			<p>휴무 등록</p>
			<p>닫기</p>
		</div>
	</div><!-- popup_normal_off_register -->
	
	<div class="popup_normal_off_update popup_content">
		<h2>일반휴무 수정</h2>
		<span><input type="hidden" name="no" value=""></span>
		<table>
			<tr>
				<th>▶ 휴무자</th>
				<td>
					<select name="emp" disabled>
						<option value="">선택해주세요.</option>
						<c:forEach var="list" items="${doctorList}">
							<option value="${list.eno}_${list.type}">${list.name}</option>
						</c:forEach>
						<c:forEach var="list" items="${therapistList}">
							<option value="${list.eno}_${list.type}">${list.name}</option>
						</c:forEach>
					</select>
				</td>
			</tr>
			<tr>
				<th>▶ 휴무종류</th>
				<td><input type="text" name="offType" value="휴무" placeholder="ex) 휴무"></td>
			</tr>
			<tr>
				<th>▶ 시작일</th>
				<td>
					<input type="date" name="startdate" value="">
					<select name="starttime">
						<c:forEach var="idx" begin="8" end="23">
							<option value="${idx}">${idx}시</option>
						</c:forEach>
					</select>
				</td>
			</tr>
			<tr>
				<th>▶ 종료일</th>
				<td>
					<input type="date" name="enddate" value="">
					<select name="endtime">
						<c:forEach var="idx" begin="8" end="23">
							<option value="${idx}">${idx}시</option>
						</c:forEach>
					</select>
				</td>
			</tr>
		</table>
		<div class="popup_normalOff_update_btn_wrap">
			<p>수정</p>
			<p>삭제</p>
			<p>닫기</p>
		</div>
	</div><!-- popup_normal_off_update end -->
	
	<div class="popup_fix_off_register popup_content">
		<h2>고정휴무 추가</h2>
		<span><input type="hidden" name="no" value=""></span>
		<table>
			<tr>
				<th>▶ 휴무자</th>
				<td>
					<select name="emp">
						<option value="">선택해주세요.</option>
						<option value="0_all">직원전체</option>
						<c:forEach var="list" items="${doctorList}">
							<option value="${list.eno}_${list.type}">${list.name}</option>
						</c:forEach>
						<c:forEach var="list" items="${therapistList}">
							<option value="${list.eno}_${list.type}">${list.name}</option>
						</c:forEach>
					</select>
				</td>
			</tr>
			<tr>
				<th>▶ 휴무종류</th>
				<td><input type="text" name="offType" value="고정휴무" placeholder="ex) 고정휴무"></td>
			</tr>
			<tr>
				<th>▶ 요일</th>
				<td>
					<select name="dow">
						<option value="">요일선택</option>
						<option value="월">월</option>
						<option value="화">화</option>
						<option value="수">수</option>
						<option value="목">목</option>
						<option value="금">금</option>
						<option value="토">토</option>
						<option value="월금">월~금</option>
						<option value="월토">월~토</option>
					</select>
				</td>
			</tr>
			<tr>
				<th>▶ 시작일</th>
				<td>
					<input type="date" name="startdate" value="">
					<select name="starttime">
						<c:forEach var="idx" begin="8" end="23">
							<option value="${idx}">${idx}시</option>
						</c:forEach>
					</select>
				</td>
			</tr>
			<tr>
				<th>▶ 종료일</th>
				<td>
					<input type="date" name="enddate" value="">
					<select name="endtime">
						<c:forEach var="idx" begin="8" end="23">
							<option value="${idx}">${idx}시</option>
						</c:forEach>
					</select>
				</td>
			</tr>
		</table>
		<div class="popup_fixOff_register_btn_wrap">
			<p>휴무 등록</p>
			<p>닫기</p>
		</div>
	</div><!-- popup_fix_off_register -->
	
	<div class="popup_fix_off_update popup_content">
		<h2>고정휴무 수정</h2>
		<span><input type="hidden" name="no" value=""></span>
		<table>
			<tr>
				<th>▶ 휴무자</th>
				<td>
					<select name="emp" disabled>
						<option value="">선택해주세요.</option>
						<c:forEach var="list" items="${doctorList}">
							<option value="${list.eno}_${list.type}">${list.name}</option>
						</c:forEach>
						<c:forEach var="list" items="${therapistList}">
							<option value="${list.eno}_${list.type}">${list.name}</option>
						</c:forEach>
					</select>
				</td>
			</tr>
			<tr>
				<th>▶ 휴무종류</th>
				<td><input type="text" name="offType" value="고정휴무" placeholder="ex) 고정휴무"></td>
			</tr>
			<tr>
				<th>▶ 요일</th>
				<td>
					<select name="dow">
						<option value="">요일선택</option>
						<option value="월">월</option>
						<option value="화">화</option>
						<option value="수">수</option>
						<option value="목">목</option>
						<option value="금">금</option>
						<option value="토">토</option>
					</select>
				</td>
			</tr>
			<tr>
				<th>▶ 시작일</th>
				<td>
					<input type="date" name="startdate" value="">
					<select name="starttime">
						<c:forEach var="idx" begin="8" end="23">
							<option value="${idx}">${idx}시</option>
						</c:forEach>
					</select>
				</td>
			</tr>
			<tr>
				<th>▶ 종료일</th>
				<td>
					<input type="date" name="enddate" value="">
					<select name="endtime">
						<c:forEach var="idx" begin="8" end="23">
							<option value="${idx}">${idx}시</option>
						</c:forEach>
					</select>
				</td>
			</tr>
		</table>
		<div class="popup_fixOff_update_btn_wrap">
			<p>수정</p>
			<p>삭제</p>
			<p>닫기</p>
		</div>
	</div><!-- popup_fix_off_update end -->
	
	<div class="popup_smsSend popup_content">
		<h2>문자전송</h2>
		<span><input type="hidden" name="no" value=""></span>
		<table>
			<tr>
				<th>▶ 받는사람</th>
				<td><input type="text" name="name"></td>
			</tr>
			<tr>
				<th>▶ 연락처</th>
				<td><input type="text" name="phone" placeholder="ex) 010-1234-1234"></td>
			</tr>
			<tr>
				<th>▶ 내용</th>
				<td>
					<textarea placeholder="45자(90byte) 초과시 장문으로 넘어가며 장문 문자는 1000자(2000byte)입니다."></textarea>
				</td>
			</tr>
		</table>
		<div class="popup_smsSend_btn_wrap">
			<p>전송</p>
			<p>닫기</p>
		</div>
	</div><!-- popup_smsSend popup_content -->
	