/**
 * Created by Administrator on 2017/7/31.
 */
+function(){
    var uid=sessionStorage.getItem("uid");
    $.ajax({
        type:"GET",
        url:"/pro_other",
        success:function(data){
            var str="";
            for(var i=0;i<data.length;i++){
                var o=data[i];
                var index=i+1;
                //console.log(index);
                str+=` <li>
                        <dl>
                        <dt class="imgs"><a href="#"><img src=${o.ppic} title="${index}"></a></dt>
                        <dd class="info">
                        <div class="pname"><a href="#" title="黑森林">${o.pname}</a></div>
                        <div><a href="#"></a>
                                ${o.description}
                        </div>
                        </dd>
                        <dd class="buy">
                        <a href="#" class="detail see" title="${index}">
                        <span class="glyphicon glyphicon-arrow-right"></span>&nbsp;查看详细
                        </a><br/>
                        <a href="#" class="detail quick_pay" title="${index}"><span                         class="glyphicon glyphicon-heart-empty"></span>&nbsp;快速购买
                        </a>
                        </dd>
                        </dl>
                        </li>
                        `;
            }
            $("div.products_other>ul").append(str);
            $("dd.buy").on("click","a",function(e){
                e.preventDefault();
                var $tar=$(e.target);
                var pid=$tar.attr("title");
                console.log(pid,uid);
                //保存pid
                sessionStorage.setItem("pid",pid);
                //查看详情
                if($tar.hasClass("see")){
                    location.href="detail.html";
                }else if($tar.hasClass("quick_pay")){
                    //快速购买
                    $.ajax({
                        type:"GET",
                        url:"/addCart",
                        data:{pid:pid,uid:uid},
                        success:function(data){
                            $("div.box_info h2").html(data.msg);
                            $("#modal").show();
                            //console.log($("#modal"));
                        },
                        error:function(){
                            alert("网络有问题，请检查您的网络！")
                        }
                    })
                }
            })
            /*图片点击跳转*/
            $("dt.imgs a").on("click","img",function(e){
                var $tar=$(e.target);
                var pid=$tar.attr("title");
                sessionStorage.setItem("pid",pid);
                location.href="detail.html";
            })
        }
    });
}();
+function(){
    var uid=sessionStorage.getItem("uid");
    $.ajax({
        type:"GET",
        url:"/pro",
        success:function(data){
            //console.log(data);
            var str="";
            var len=data.length;
            //console.log(len);
            for(var i=0;i<len-2;i+=3){
                if(data[i]!==undefined){
                    var index=i+1;
               str+=`
        <ul>
            <li>
                <dl>
                    <dt><a href="#" class="image"><img src=${data[i].ppic} alt="" title="${index}"/></a></dt>
                    <dd>
                        <div  class="cake_type"><a href="#">${data[i].pname}</a></div>
                        <div class="cake_info">
                            <div class="cake_info1">
                                <span>￥${data[i].price}</span> 甜度：${data[i].sweet}<br>
                                蛋糕类别：${data[i].ptype} <br>
                                保鲜条件：${data[i].fresh}</div>
                            <div class="cake_info2">
                                原材料：${data[i].raw}
                            </div>
                            <div class="mask">
                                <a href="#" class="addCart" title="${index}">加入购物车</a>
                                <a href="#" class="pay" title="${index}">立即购买</a>
                            </div>
                        </div>
                    </dd>
                </dl>
            </li>
            <li>
                <dl>
                    <dt><a href="#" class="image"><img src=${data[i+1].ppic} title="${index+1}"></a></dt>
                    <dd><div  class="cake_type"><a href="#" title="心愿">${data[i+1].pname}</a></div>
                        <div class="cake_info">
                            <div class="cake_info1">
                                <span>￥${data[i+1].price}</span> 甜度：${data[i+1].sweet}<br>
                                蛋糕类别： ${data[i+1].ptype} <br>
                                保鲜条件：${data[i+1].fresh}</div>
                            <div class="cake_info2">
                                原材料：${data[i+1].raw}
                            </div>
                            <div class="mask">
                                <a href="#" class="addCart" title="${index+1}">加入购物车</a>
                                <a href="#" class="pay" title="${index+1}">立即购买</a>
                            </div>
                        </div>
                    </dd>
                </dl>
            </li>
            <li>
                <dl>
                    <dt><a href="#" class="image"><img src=${data[i+2].ppic} title="${index+2}"></a></dt>
                    <dd><div  class="cake_type"><a href="#" title="芒果拿破仑">${data[i+2].pname}</a></div>
                        <div class="cake_info">
                            <div class="cake_info1">
                                <span>￥${data[i+2].price}</span> 甜度：${data[i+2].sweet}<br>
                                蛋糕类别： ${data[i+2].ptype} <br>
                                保鲜条件：${data[i+2].fresh}</div>
                            <div class="cake_info2">
                                原材料：${data[i+2].raw}
                            </div>
                            <div class="mask">
                                <a href="#" class="addCart" title="${index+2}">加入购物车</a>
                                <a href="#" class="pay" title="${index+2}">立即购买</a>
                            </div>
                        </div>
                    </dd>
                </dl>
            </li>
            </ul> `;
                }
           }
            //console.log(str)
            $("#main div.products").append(str);
            /*加入购物车 立即购买 */
            $("div.mask").on("click","a",function(e){
                e.preventDefault();
                var $tar=$(e.target);
                //保存pid的值
                var pid=$tar.attr("title");
                sessionStorage.setItem("pid",pid);
                console.log(pid,uid);
                if($tar.hasClass("addCart")){
 //获取pid,uid 发送ajax请求，将pid,uid传给服务器，向购物车添加一条数据，返回结果
                    $.ajax({
                        type:"GET",
                        url:"/addCart",
                        data:{pid:pid,uid:uid},
                        success:function(data){
                            $("div.box_info h2").html(data.msg);
                            $("#modal").show();
                            //console.log($("#modal"));
                        },
                        error:function(){
                            alert("网络有问题，请检查您的网络！")
                        }
                    })

                }else if($tar.hasClass("pay")){
                    //立即购买
                    location.href="detail.html";
                }
            });
            /*图片点击跳转*/
            $("a.image").on("click","img",function(e){
                e.preventDefault();
                var $tar=$(e.target);
                console.log($tar);
                var pid=$tar.attr("title");
                sessionStorage.setItem("pid",pid);
                location.href="detail.html";
            })
            /*模态框隐藏*/
            $("div.top").on("click" ,"#none",function(e){
                e.preventDefault();
                $("#modal").hide();
            });
            /*模态框的操作*/
            $("div.btn").on("click","button",function(e){
                var $tar=$(e.target);
                if($tar.hasClass("goOn")){
                    $("#modal").hide();
                }else{
                    location.href="shopping_cart.html";
                }
            });
        }

    });
}();
+function(){
    $("dd.opt").on("click","a",function(e){
        e.preventDefault();
        //console.log(1);
        //console.log($(e.target));
        //$(this).toggleClass("show").siblings().toggleClass("hide")
        if($(e.target).hasClass("window")){
        //    //console.log(2);
            $("div.products").show().next().hide();
        }else if($(e.target).hasClass("list")){
        //    //console.log(3);
            $("div.products").hide().next().show();
        }else{
            $("div.products").show().next().hide();
        }
    })
}();