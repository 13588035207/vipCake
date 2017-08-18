/**
 * Created by Administrator on 2017/8/1.
 */
+function(){
    $.ajax({
        type:"GET",
        url:"/park",
        success:function(data){
            var str1=`<dt><a href="#"><img src=${data[0].pic} alt="出错"></dt>
<dd>${data[0].title}<span class="rt date">${data[0].date}</span>${data[0].content}</dd>`;
            $("div.second dl").append(str1);
            var str2="";
            for(var i=1;i<data.length;i++){
                var o=data[i];
                str2+=`<div class="row other">
                        <div class="col-xs-3"></div>
                        <div class="col-xs-9">
                        ${o.title}<span class="rt date">${o.date}</span>${o.content}
                        </div>
                        </div>`;
            }
            $("#content").append(str2);
        },
        error:function(){
            alert("网络问题！")
        }
    });
}();





