/**
 * Created by Administrator on 2017/8/10.
 */
/*购物车列表*/
+function(){
  var uid=sessionStorage.getItem("uid");
    //console.log(uid);
    $.ajax({
        type:"GET",
        url:"/shopping_cart",
        data:{uid:uid},
        success:function(data){
            //console.log(data);
            //拼接字符串
            var str="";
            str+=`<thead>
            <tr>
                <th> <input type="checkbox" id="selAll"/>
                    <label for="selAll">全选</label></th>
                <th>商品</th>
                <th>单价（元）</th>
                <th>数量</th>
                <th>小计</th>
                <th>操作</th>
            </tr>
            </thead>
            <tbody>`;
            for(var i=0;i<data.length;i++){
                var o=data[i];
                str+=`<tr">
                <td>
                    <input type="checkbox" name="pro"/>
                </td>
                <td style="width:400px;text-align:left; ">
                    <img src=${o.pic}.jpg alt="" style="width:50px;vertical-align: middle ;"/>
                    <a href="">${o.name}</a>
                </td>
                <td>${o.price}</td>
                <td class="option">
                    <button class="less">-</button>
                    <input type="text" value="${o.count}" style="width:20px;text-align: center"/>
                    <button class="more">+</button>
                </td>
                <td><span class="total">${o.price*o.count}</span></td>
                <td><a href="${o.cid}" class="glyphicon glyphicon-trash del" ></a></td>
            </tr>`;

            }
            str+="</tbody>";

            $("#cart").append(str);
        },
        error:function(){
            alert("您的网络有问题，请检查！");
        }
    })
}();
/*删除购物车的商品*/
+function(){
    $("#cart").on("click","a.del",function(e){
        e.preventDefault();
        var $tar=$(e.target);
        var cid=parseInt($tar.attr("href"));
        var tr=$tar.parent().parent();
        //console.log($tar,cid);
        var rs=window.confirm("您确定要删除该商品吗？");
        if(!rs){return;}
        else{
            $.ajax({
                type:"GET",
                url:"/del_cart",
                data:{cid:cid},
                success:function(data){
                    console.log(data);
                    if(data.code>0){
                        tr.remove();
                        //alert(data.msg);
                        /*当购物车的东西被删除时*/
                    }else if(data.code<0){
                        alert(data.msg);
                    }
                },
                error:function(){
                    alert("购物车删除失败，请检查您的网络！")
                }
            })
        }
    })
}();

/*购物车商品的+ -*/
+function(){
    //绑定单击函数
    $("#cart").on("click","button",function(e){
        //获取参数
        var $tar=$(e.target);
        var cid=$tar.parent().next().next().children().attr("href");
        var btn=$tar.html();
        //console.log(cid,$tar,btn);
        //发送请求
        if(btn==="+"){
            $.ajax({
                type:"GET",
                url:"/up",
                data:{cid:cid},
                success:function(data){
                    if(data.code>0){
                        var value=parseInt($tar.prev().val());
                        value+=1;
                        $tar.prev().val(value);
                        var price=parseInt($tar.parent().prev().html());
                        $tar.parent().next().children().html(price*value);
                        //alert(data.msg);
                    }else if(data.code<0){
                        alert(data.msg);
                    }
                },
                error:function(){
                    alert("操作失败，请检查您的网络！")
                }
            })
        }else if(btn==="-"){
            $.ajax({
                type:"GET",
                url:"/down",
                data:{cid:cid},
                success:function(data){
                    if(data.code>0){
                        var value=parseInt($tar.next().val());
                        value-=1;
                        $tar.next().val(value);
                        var price=parseInt($tar.parent().prev().html());
                        $tar.parent().next().children().html(price*value);
                        //alert(data.msg);
                        if($tar.next().val()==="0"){
                            $tar.parent().parent().remove();
                            //if($("#tbl:empty")){goShop();}
                        }
                    }else{
                        alert(data.msg);
                    }
                },
                error:function(){
                    alert("操作失败，请检查您的网络！")
                }
            })
        }
    })

}();
/*购物车商品的复选框的操作*/
+function(){
 /*全选的实现*/
    var total=0;
    $("#cart").on("click","#selAll",function(e){
        total=0;
        var $tar=$(e.target);
        //console.log(this,this.checked);
        if(this.checked){
            $("[name=pro]:checkbox").prop("checked",true);
        }else{
            $("[name=pro]:checkbox").prop("checked",false);
        }
        /*总计*/
        if($tar.prop("checked")){
            //console.log(1);
            //取出所有小计，求和
            var spans=$(".total");
            for(var i=0;i<spans.length;i++){
                var o=spans[i];
                var money=parseFloat($(o).html());
                total+=money;
            }
            $("#pay span").html(total);
            //sessionStorage.setItem("total",total);
            $("#cart").on("click","[name=pro]:checkbox",function(e){
                var $tar=$(e.target);
                //获取小计
                var money= parseFloat($tar.parent().next().next().next().next().children().html());
                //console.log(money);
                //获取个数
                //var count=parseInt($("[name=pro]:checkbox").length);
                //console.log(count);
                if($tar.prop("checked")){
                    console.log("开始total:"+total);
                    sessionStorage.setItem("total",total);
                    total=parseInt(sessionStorage.getItem("total"));
                    console.log(total);
                    console.log(money);
                    total+=money;
                    console.log("+");
                    console.log(total);
                    $("#pay span").html(total);
                }else if(!$tar.prop("checked")){
                    console.log(total);
                    sessionStorage.setItem("total",total);
                    total=parseInt(sessionStorage.getItem("price"));
                    console.log(total);
                    console.log(money);
                    total-=money;
                    console.log("-");
                    console.log(total);
                    $("#pay span").html(total);
                }
            })
        }else if(!$tar.prop("checked")){
            $("#pay span").html(0);
        }
    })
    /*反全选的实现*/
    $("#cart").on("click","[name=pro]:checkbox",function(e){
        var $tar=$(e.target);
        var inputs=$("[name=pro]:checkbox");
        var isChecked=true;
        inputs.each(function(){
            if(!this.checked){
                isChecked=false;
            }
        })
       $("#selAll").prop("checked",isChecked);
        //获取小计
        var money= parseFloat($tar.parent().next().next().next().next().children().html());
        //console.log(money);
        //获取个数
        //var count=parseInt($("[name=pro]:checkbox").length);
        //console.log(count);
        if($tar.prop("checked")){
            total+=money;
            $("#pay span").html(total);
        }else if(!$tar.prop("checked")){
                total-=money;
                $("#pay span").html(total);
            }
    })
}();
/*结算*/
+function(){
        $("#goPay").click(function(e){
            var isChecked=$("[name=pro]:checked");
            console.log(isChecked);
            if(isChecked.length){
                 var $tar=$(e.target);
                $("#modal").show();
                setTimeout(function(){
                    location.href="product.html";
                },1500)
            }else if(!isChecked.length){
                e.preventDefault();
            }

    })
}();