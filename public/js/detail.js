/**
 * Created by Administrator on 2017/8/10.
 */
/*购物车详情页的操作*/
+function(){
    var pid=sessionStorage.getItem("pid");
    var uid=sessionStorage.getItem("uid");
    console.log(pid,uid);
    //发送ajax请求 拼接字符串
    $.ajax({
        type:"GET",
        url:"/detail",
        data:{pid:pid},
        success:function(data){
            var str="";
            //console.log(data);
            str+=` <div class="navigator">
            <a href="index.html">首页></a>
            <a href="product.html">蛋糕名录></a>
            <a href="#">${data.name}</a>
        </div>
        <div class="box_content">
            <!-- 左边-->
            <div class="pro_detail lf">
                <!-- 上-->
                <div><img src=${data.pic}_l.jpg alt=""/></div>
                <!-- 下-->
                <div>
                    <a href="#"><img src=${data.pic}_sm1.jpg alt=""/></a>
                    <a href="#"><img src=${data.pic}_sm2.jpg alt=""/></a>
                    <a href="#"></a>
                </div>
            </div>
            <!--右边-->
            <div class="pro_buy rt">
              <h2>${data.name}</h2>
                <p class="price">价格：￥${data.price}</p>
                <!--<div class="weight">-->
                    <!--<a href="#" class="selected">一磅 约13*13cm</a>-->
                    <!--<a href="#">二磅 约17*17cm</a>-->
                    <!--<a href="#">三磅 约23*23cm</a>-->
                    <!--<a href="#">四磅 约30*30cm</a>-->
                <!--</div>-->
                <!--<div class="count">-->
                    <!--数量-->
                    <!--<a class="less">-</a>-->
                    <!--<input type="text" value="1" id="count"/>-->
                    <!--<a class="more">+</a>-->
                <!--</div>-->
                <div class="work">
                    <button class="addCart">加入购物车</button>
                    <button class="pay">立即购买</button>
                </div>
                <p class="desc">${data.description}</p>
            </div>
        </div>
        <div class="pro_info clear">
            <p>商品详情</p>
            <div class="pro_info_box">
                <ul>
                    <li>品牌：${data.brand}</li>
                    <li>口味：${data.taste}</li>
                    <li>适合节日：${data.festival}</li>
                    <li>蛋糕分类：${data.type}</li>
                    <li>甜度：${data.sweet}</li>
                    <li>适合人群：${data.people}</li>
                    <li>保鲜条件：${data.fresh}</li>
                </ul>
                <div class="material">
                    <p>优质原材料</p>
                    <p>${data.material}</p>
                </div>
                <div class="common_info">
                    <h4>常规小知识()</h4>
                    <p>1、免费送货上门，送货范围可在网站底页“配送说明”栏目下查询所在城市的配送区域； <br>2、蛋糕收到后如不立即食用请及时冷藏，（收货后2-3小时内食用最佳）。<br>3、如对上述食材有过敏经历者，请选择其它款蛋糕。 <br>4、蛋糕规格及免费配送餐具参考&nbsp;： <br>1.0磅：　约12&nbsp;X&nbsp;12（cm）&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;适合3-4人食用　　　　　免费配送5套餐具 <br>2.0磅：　约16&nbsp;X&nbsp;16（cm）&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;适合7-8人食用　　　　　免费配送10套餐具 <br>3.0磅：　约22&nbsp;X&nbsp;22（cm）&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;适合11-12人食用　　　　免费配送15套餐具 <br>5.0磅：　约28&nbsp;X&nbsp;28&nbsp;（cm）&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;适合15-20人食用　　　　免费配送20套餐具 <br><br>***订购5磅及5磅以上规格的蛋糕，请提前24小时订购，并电话与客服人员联系和确认，订购电话：400-&nbsp;616-&nbsp;2121
                    </p>
                </div>
                <div class="img">
                    <img src="img/index/detail01.gif" alt=""/>
                    <img src="img/index/detail02.gif" alt=""/>
                </div>
            </div>

        </div>`
            $("div.box").append(str);
        },
        error:function(){
            alert("网络有问题，请检查您的网络！")
        }
    })
    $("div.box").on("click","button",function(e){
        var $tar=$(e.target);
        var btn=$tar.html();
       var uid= sessionStorage.getItem("uid");
       var pid=sessionStorage.getItem("pid");
        console.log(uid,pid);
        if(btn==="加入购物车"){
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
            $("#modal").show();
        }else if(btn==="立即购买"){
            location.href="shopping_cart.html"
        }
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

}();








