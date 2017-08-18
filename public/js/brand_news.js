/**
 * Created by Administrator on 2017/8/1.
 */
+function(){
    $.ajax({
        type:"GET",
        url:"/news",
        success:function(data){
            var str1=`<dt>
                        <a href="#">${data[0].title}</a>
                        <span class="rt date">${data[0].data}</span>
                    </dt>
                    <dd>${data[0].content}</dd>`;
            $("div.first dl").append(str1);
            var str="";
            for(var i=1;i<data.length;i++){
                var o=data[i];
                str+=`<div class="row other">
            <div class="col-xs-2"></div>
            <div class="col-xs-10">
                <dl>
                    <dt>
                        <a href="#">${o.title}</a>
                        <span class="rt date">${o.data}</span>
                    </dt>
                    <dd>${o.content}</dd>
                </dl>
            </div>
        </div>`;
            }
            $("#content").append(str);
        },
        error:function(){alert("网络问题！")}
    });
}();
