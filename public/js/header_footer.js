/**
 * Created by Administrator on 2017/7/21.
 */
//异步请求页头和页尾
$(function(){
    $.ajax({
        type:"GET",
        url:"/",
        success:function(data){
            var headers="";
            headers+=`<!-- 固定定位侧边栏-->
    <ul class="qq">
        <li><a href="#"><p><img src="images/side_icon1.png" alt=""/>QQ售后</p></a></li>
        <li><a href="#"><p><img src="images/side_icon1.png" alt=""/>QQ售前</p></a></li>
        <li><a href="#" id="toTop"><img src="images/side_icon2.png" alt=""/></a></li>
    </ul>
    <ul class="long mid" style="height:97px;">
                <!-- 左：头部logo-->
            <li class="logo"> <a href="index.html" class="lf"><img src="images/logo.gif" /></a></li>
                <!--中： 头部导航-->
            <li class="nav">
            <ul>
                <!-- 1 上边 城市选择-->
            <li class="city">
            <div><a href="" class="cities">合肥 <span class="caret"></span></a></div>
            <div class="drop-down1">
            请选择您要配送的城市：<br><br>
            <a href="#">合肥</a>
            <a href="#">芜湖</a>
            </div>
            </li>
                <!-- 2 下边 导航-->
            <li class="navList">
            <ul class="navLists lf">
            <li class="lf"><a href="index.html" ><span>Home Page</span>首页</a></li>
            <li class="lf"><a href="product.html"><span>Products</span>蛋糕名录</a></li>

            <li class="lf box-2">
            <a href="brand_story.html"><span>Brand Story</span>品牌故事</a>
            <div class="drop-down2">
            <ul class="story">
            <li><a href="brand_theory.html">品牌理念</a></li>
            <li><a href="brand_origin.html">品牌起源</a></li>
            <li><a href="brand_food.html">顶级食材</a></li>
            <li><a href="cake_travel.html">蛋糕之旅</a></li>
            </ul>
            </div>
            </li>
            <li class="lf box-3">
            <a href="vipcake_home.html"><span>Vipcake Home</span>唯品客家</a>
            <div class="drop-down3">
            <ul class="home">
            <li><a href="vipcake_home.html">vipCake 见证</a></li>
            <li><a href="brand_news.html">品牌新闻</a></li>
            <li><a href="vip_park.html">会员广场</a></li>
            </ul>
            </div>
            </li>
            </ul>
            </li>
            </ul>
            </li>
                <!-- 右：登陆注册等信息-->
            <li class="info">
            <ul>
                <!--上 -->
                <li class="nav_r" style="height:35px;line-height: 35px;">
                    <ul>
                        <li class="lf"><a href="login.html"id="log" style="overflow:hidden;">登录</a><b>|</b></li>
                        <li class="lf"><a href="register.html">注册</a><b>|</b></li>
                        <li class="lf"><a href="login.html">我的唯品客</a><b>|</b></li>
                        <li class="lf"><a href="shopping_cart.html"><span class="glyphicon glyphicon-shopping-cart"></span>0件</a></li>
                    </ul>
                </li>
                <!-- 中-->
                <li class="tel clear" ><img src="images/tel.gif" alt=""/></li>
                <!-- 下-->
                <li class="car">
                    <span class="glyphicon glyphicon-volume-up f18"></span><a href="#">送货上门合肥市区内免费</a>
                </li>
            </ul>
        </li>
    </ul>`;
            $("#header").html(headers);
            var foot="";
            foot+=`<div id="container">
        <ul class="lf">
            <li><span class="glyphicon glyphicon-shopping-cart f25"></span></li>
            <li><a href="#" class="active">订购指南</a></li>
            <li><a href="#">订购流程</a></li>
            <li><a href="#">会员问题</a></li>
            <li><a href="#">积分说明</a></li>
            <li><a href="#">常见问题</a></li>
        </ul>
        <ul class="lf">
            <li><span class="glyphicon glyphicon-usd f25"></span></li>
            <li><a href="#" class="active">支付方式</a></li>
            <li><a href="#">在线支付</a></li>
            <li><a href="#">会员资金转账</a></li>
            <li><a href="#">银行转账</a></li>
        </ul>
        <ul class="lf">
            <li><span class="glyphicon glyphicon-bed f25"></span></li>
            <li><a href="#" class="active">配送说明</a></li>
            <li><a href="#">配送方式</a></li>
            <li><a href="#">配送时间</a></li>
            <li><a href="#">配送范围</a></li>
        </ul>
        <ul class="lf">
            <li><span class="glyphicon glyphicon-question-sign f25"></span></li>
            <li><a href="#" class="active">售后服务</a></li>
            <li><a href="#">投诉建议</a></li>
            <li><a href="#">退款须知</a></li>
        </ul>
        <ul class="lf ulr">
            <li><span class="glyphicon glyphicon-headphones f25"></span></li>
            <li><a href="#" class="active">其他服务</a></li>
            <li><a href="#">免费试吃</a></li>
            <li><a href="#">发票开具</a></li>
            <li><a href="#">用卡须知</a></li>
            <li><a href="#">企业采购</a></li>
        </ul>
        <dl class="lf">
            <dt><img src="images/wx.gif" alt=""/></dt>
            <dd>微信登录</dd>
        </dl>
        <dl class="lf">
            <dt><img src="images/wb.gif" alt=""/></dt>
            <dd>微博登录</dd>
        </dl>
    </div>`
            $("#footer").html(foot);
            var copy="";
            copy+=`Copyright 2011 - 2017 vipcake99.com All Rights Reserved&nbsp;&nbsp; 沪ICP备12038156号-1`;
            $("#footer-text").html(copy);
        },
        error:function(){
            alert("头部尾部文件加载失败，请确保您的网络连接正常！")
        }
    });
    $("#toTop").click(function(){
        $(document.body).animate({
            scrollTop:0
        },1000);
    })
});
