$(function(){
	//订单按条件排序
	orderSort();
});


function orderSort(){
	$("#orderSort li").click(function(){
		var  liValue = $(this).text();
		var data;
		if(liValue == "按时间升序"){data ={'sortkey':'OrderDate','sorttype':'asc','tabid':'0'}; }
		else if(liValue == "按时间降序"){data ={'sortkey':'OrderDate','sorttype':'desc','tabid':'0'};}
		else if(liValue == "按分期次数升序"){data ={'sortkey':'Times','sorttype':'asc','tabid':'0'};}
		else if(liValue == "按分期次数降序"){data ={'sortkey':'Times','sorttype':'desc','tabid':'0'};}
		
		$.ajax({
			type:"post",
			url:"order/ordersort.action",
			data:data,
			cache:false,
			success(Data){
				console.log(Data);
			}
		});
		
	})
	
}
