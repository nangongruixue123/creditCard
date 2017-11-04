<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>峰勤智付信用卡智能管理平台列表</title>
<link href="static/css/bootstrap.css" rel="stylesheet">
<script type="text/javascript" src="static/js/jquery.min.js"></script>
<script type="text/javascript" src="static/js/bootstrap.js"></script>
</head>
<body>
	<div id="shang">
		<div class="shang-box">峰勤智付信用卡智能管理平台</div>
		<div class="shang-box1">
			<span class="shang-box1-a">卡片张数：</span> <span class="shang-box1-a">额度合计：￥</span>
			<span class="shang-box1-a">当前余额：￥</span> <span class="shang-box1-a">当前欠款：￥</span>
		</div>
		<div class="shang-box2">
			<button class="btn btn-primary" id="CreditCard_add_modal_btn">
				<span class="glyphicon glyphicon-pencil"> 添加卡片</span>
			</button>
			<button class="btn btn-warning" id="jihua_add_modal_btn">
				<span class="glyphicon glyphicon-th-list"> 计划列表</span>
			</button>
		</div>
	</div>
	<div class="zhong-box1">
		<div class="zhong-box1-a">
			<span>全部()</span> <span>待执行()</span> <span>无账单()</span> <span>已逾期()</span>
			<span>过期卡()</span>
		</div>

		<div class="zhong-box1-b">
			未执行<span class="label label-warning" style="margin-right: 10px;">&nbsp</span>
			执行中<span class="label label-success" style="margin-right: 10px;">&nbsp</span>
			已终止<span class="label label-danger" style="margin-right: 10px;">&nbsp</span>
			已完成<span class="label label-primary" style="margin-right: 10px;">&nbsp</span>
		</div>
	</div>
	
	<div class="zhong-box2-a">
	<div class="row">
		<div class="col-md-12">
			<table class="table table-hover" >
					<tr>
						<th><input type="checkbox" id="check_all" /></th>
						<th>卡主</th>
						<th>发卡行</th>
						<th>卡尾4位</th>
						<th>账单</th>
						<th>还款</th>
						<th>剩余</th>
						<th>有效期</th>
						<th>账单金额</th>
						<th>已还</th>
						<th>未还</th>
						<th>核账</th>
						<th>更多</th>
					</tr>
					<c:forEach items="${pageInfo.list}" var="search">
						<tr>
							<th>${search.kaZhuTd }</th>
							<th>${search.kaWeiTd }</th>
							<th>${search.zhangDanTd}</th>
							<th>${search.huanKuanTd }</th>
							<th>${search.shengYuTd}</th>
							<th>${search.timeTd }</th>
							<th>${search.moneyTd }</th>
							<th>${search.yiHuanTd}</th>
							<th>${search.weiHuanTd }</th>
							<th>${search.heZhangTd}</th>
							<th>
								<button class="btn btn-primary btn-sm">
									<span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>
									编辑
								</button>
								<button class="btn btn-danger btn-sm">
									<span class="glyphicon glyphicon-trash" aria-hidden="true"></span>
									删除
								</button>
							</th>
						</tr>
					</c:forEach>
			</table>
		</div>
	</div>

		</div>

		<!-- 显示分页信息 -->
		<div class="row">
			<!--分页文字信息  -->
			<div class="col-md-6">当前 ${pageInfo.pageNum }页,总${pageInfo.pages }
				页,总 ${pageInfo.total } 条记录</div>
			<!-- 分页条信息 -->
			<div class="col-md-6">
				<nav aria-label="Page navigation">
				<ul class="pagination">
					<li><a href="zhuce?pn=1">首页</a></li>
					<c:if test="${pageInfo.hasPreviousPage }">
						<li><a href="zhuce?pn=${pageInfo.pageNum-1}"
							aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
						</a></li>
					</c:if>


					<c:forEach items="${pageInfo.navigatepageNums }" var="page_Num">
						<c:if test="${page_Num == pageInfo.pageNum }">
							<li class="active"><a href="#">${page_Num }</a></li>
						</c:if>
						<c:if test="${page_Num != pageInfo.pageNum }">
							<li><a href="zhuce?pn=${page_Num }">${page_Num }</a></li>
						</c:if>

					</c:forEach>
					<c:if test="${pageInfo.hasNextPage }">
						<li><a href="zhuce?pn=${pageInfo.pageNum+1 }"
							aria-label="Next"> <span aria-hidden="true">&raquo;</span>
						</a></li>
					</c:if>
					<li><a href="zhuce?pn=${pageInfo.pages}">末页</a></li>
				</ul>
				</nav>
			</div>
		</div>
		
	</div>
</body>
</html>