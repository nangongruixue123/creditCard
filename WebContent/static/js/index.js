$(function() {
	search();
});

$("#aaa").on("click", ".menu-delete", function() {
	var $tr = $(this).parent().parent();
	var $number = $tr.find("td:eq(0)").text();
	var $input = confirm("确认要删除吗？");
	if ($input) {
		$.ajax({
			url : 'delete',
			method : 'post',
			data : {
				id : $number,
				kazhu : 123
			},
			success : function(resp) {
				if (resp) {
					alert("删除成功");
					location.href = "index.jsp";
				} else {
					alert("删除失败");
				}
			}
		});
	}
});

$("#bbb").on("click", function() {
	addCard();
	$("#add").on("click", function() {
		var data = {
			id : $("#addid").val(),
			kazhu : $("#addkazhu").val(),
			fakahang : $("#addfakahang").val(),
			kawei : $("#addkawei").val(),
			zhangdan : $("#addzhangdan").val(),
			huankuan : $("#addhuankuan").val(),
			shengyu : $("#addshengyu").val(),
			money : $("#addmoney").val(),
			yihuan : $("#addyihuan").val(),
			weihuan : $("#addweihuan").val(),
			hezhang : $("#addhezhang").val()
		}
		$.ajax({
			method : "post",
			url : "addCard",
			data : data,
			success : function(resp) {
				if (resp) {
					alert("添加成功")
					location.href = "index.jsp";
				}
			}
		});
	});
});

// 通过class添加on时间，可以带3个参数
$("#aaa").on("click",".menu-update",function() {
			var tr = $(this).parent().parent();
			var trData = tr.find("td");
			for(var i = 0;i < trData.length;i++){
				$('.updateData').eq(i).val(trData.eq(i).text());
			}
			updateCard();
			$("#tijiao").on("click", function() {
				$.ajax({
					method : "post",
					url : "updateCard",
					data : JSON.stringify({
						'id' : $("#updateid").val() + "123",
						'kazhu' : $("#updatekazhu").val(),
						'fakahang' : $("#updatefakahang").val(),
						'kawei' : $("#updatekawei").val(),
						'zhangdan' : $("#updatezhangdan").val(),
						'huankuan' : $("#updatehuankuan").val(),
						'shengyu' : $("#updateshengyu").val(),
						'money' : $("#updatemoney").val(),
						'yihuan' : $("#updateyihuan").val(),
						'weihuan' : $("#updateweihuan").val(),
						'hezhang' : $("#updatehezhang").val()
					}),
					dataType : "text",
					contentType : "application/json;charset=utf-8",
					success : function(resp) {
						if (resp) {
							alert("修改成功");
							location.href = "index.jsp";
						}
					}
				});
			})

		});

function updateCard() {
	$("#updateModal").modal("show");
}
function addCard() {
	$("#addModal").modal("show");
}
function search() {
	$.get('search', function(data) {
		$.each(data, function(i, row) {
			var tr = $('.clone').clone().removeClass("hidden clone");
			$(tr).find('td:eq(0)').text(row['id']);
			$(tr).find('td:eq(1)').text(row['kazhu']);
			$(tr).find('td:eq(2)').text(row['fakahang']);
			$(tr).find('td:eq(3)').text(row['kawei']);
			$(tr).find('td:eq(4)').text(row['zhangdan']);
			$(tr).find('td:eq(5)').text(row['huankuan']);
			$(tr).find('td:eq(6)').text(row['shengyu']);
			$(tr).find('td:eq(7)').text(row['time']);
			$(tr).find('td:eq(8)').text(row['money']);
			$(tr).find('td:eq(9)').text(row['yihuan']);
			$(tr).find('td:eq(10)').text(row['weihuan']);
			$(tr).find('td:eq(11)').text(row['hezhang']);
			// var hrefval = $(tr).find('td:eq(12) > input').attr('id');
			// $(tr).find('td:eq(12) > input').attr('href', hrefval + "/" +
			// row['id']);
			$('table > tbody').append(tr);
		});
	});
}
