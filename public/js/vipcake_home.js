/**
 * Created by Administrator on 2017/8/1.
 */
+function(){
    $.ajax({
        type:"GET",
        url:"/vip_see",
        success:function(data){
            var str="";
            for(var i=0;i<data.length;i++){
                var o=data[i];
                str+=`<div>
                ${o.content}
            </div>
             <div>
                 <img src=${o.pic} alt="出错"/>
            </div>`;
            }
            $("#main div:nth-child(2)").append(str);
        },
        error:function(){alert("网络问题！")}
    });
}();