<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>峰勤智付信用卡智能管理平台</title>

<link href="static/css/bootstrap.css" rel="stylesheet">
<link href="static/css/index.css" rel="stylesheet">
</head>
<body style="background: #d8d0d0;">
	<div id="shang">

		<div class="shang-box">峰勤智付信用卡智能管理平台</div>
		<div class="shang-box1">
			<span class="shang-box1-a">卡片张数：</span> <span class="shang-box1-a">额度合计：￥</span>
			<span class="shang-box1-a">当前余额：￥</span> <span class="shang-box1-a">当前欠款：￥</span>
		</div>
		<div class="shang-box2">
			<button class="btn btn-primary" id="bbb" >
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
				<table class="table table-hover">
					<thead>
						<tr>
							<th>序号</th>
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
					</thead>
					<tbody id="aaa">
						<tr class="hidden clone">
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td><input type="button" value="编辑" class="menu-update">
								<input type="button" value="删除" class="menu-delete"></td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</body>
<form action="addCard" method="post">
	<div class="modal fade" id="addModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" data-backdrop="static">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">添加信息</h4>
				</div>
				<div class="modal-body">
					<div style="position: relative; text-align: center;">
						序号：<input type="text" name="aa" />
					</div>
					<div style="position: relative; text-align: center;">
						卡主：<input type="text" name="addid" id="addid" />
					</div>
					<div style="position: relative; text-align: center; left: -7px;">
						发卡行：<input type="text" name="addfakahang" id="addfakahang" />
					</div>
					<div style="position: relative; text-align: center; left: -11px;">
						卡尾4位：<input type="text" name="addkawei" id="addkawei" />
					</div>
					<div style="position: relative; text-align: center;">
						账单：<input type="text" name="addzhangdan" id="addzhangdan" />
					</div>
					<div style="position: relative; text-align: center;">
						还款：<input type="text" name="addhuankuan" id="addhuankuan" />
					</div>
					<div style="position: relative; text-align: center;">
						剩余：<input type="text" name="addishengyu" id="addishengyu" />
					</div>
					<!-- 	<div style="position: relative; text-align: center;left: -14px; readonly">
							有效时间：<input type="text" name="addtime" id="addtime"/>
						</div> -->
					<div style="position: relative; text-align: center; left: -14px;">
						剩余金额：<input type="text" name="addmoney" id="addmoney" />
					</div>
					<div style="position: relative; text-align: center;">
						已还：<input type="text" name="addyihuan" id="addyihuan" />
					</div>
					<div style="position: relative; text-align: center;">
						未还：<input type="text" name="addweihuan" id="addweihuan" />
					</div>
					<div style="position: relative; text-align: center;">
						核账：<input type="text" name="addhezhang" id="addhezhang" />
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
					<button type="submit" class="btn btn-primary" id="add">添加</button>
				</div>
			</div>
		</div>
	</div>
</form>


<div class="modal fade" id="updateModal" tabindex="-1" role="dialog"
	aria-labelledby="myModalLabel" data-backdrop="static">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				<h4 class="modal-title" id="myModalLabel">修改信息</h4>
			</div>
			<div class="modal-body">
				<form action="updateCard" method="post" id="qwe">
					<div style="position: relative; text-align: center;">
						序号：<input class="updateData"  type="text" name="updateid" id="updateid" />
					</div>
					<div style="position: relative; text-align: center;">
						卡主：<input class="updateData" type="text" name="updatekahzu" id="updatekazhu" />
					</div>
					<div style="position: relative; text-align: center; left: -7px;">
						发卡行：<input class="updateData" type="text" name="updatefakahang" id="updatefakahang" />
					</div>
					<div style="position: relative; text-align: center; left: -11px;">
						卡尾4位：<input class="updateData" type="text" name="updatekawei" id="updatekawei" />
					</div>
					<div style="position: relative; text-align: center;">
						账单：<input class="updateData" type="text" name="updatezhangdan" id="updatezhangdan" />
					</div>
					<div style="position: relative; text-align: center;">
						还款：<input class="updateData" type="text" name="updatehuankuan" id="updatehuankuan" />
					</div>
					<div style="position: relative; text-align: center;">
						剩余：<input class="updateData" type="text" name="updateshengyu" id="updateshengyu" />
					</div>
              				<!--<div style="position: relative; text-align: center; left: -14px;">
						有效时间：<input type="text" name="updatetime" id="updatetime" />
					</div> -->
					<div style="position: relative; text-align: center; left: -14px;">
						剩余金额：<input class="updateData" type="text" name="updatemoney" id="updatemoney" />
					</div>
					<div style="position: relative; text-align: center;">
						已还：<input class="updateData" type="text" name="updateyihuan" id="updateyihuan" />
					</div>
					<div style="position: relative; text-align: center;">
						未还：<input class="updateData" type="text" name="updateweihuan" id="updateweihuan" />
					</div>
					<div style="position: relative; text-align: center;">
						核账：<input class="updateData" type="text" name="updatehezhang" id="updatehezhang" />
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
						<button type="submit" class="btn btn-primary" id="tijiao">修改</button>
					</div>
				</form>
			</div>

		</div>
	</div>
</div>

<script type="text/javascript" src="static/js/jquery.min.js"></script>
<script type="text/javascript" src="static/js/bootstrap.js"></script>
<script type="text/javascript" src="static/js/index.js"></script>

</html>
