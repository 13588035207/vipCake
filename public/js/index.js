/*导航激活*/
+function(){
    $("ul.navLists>li:first-child").addClass("active");
    $("ul.navLists>li:first-child a").addClass("active");
}();
+function(){
 /*1 轮播*/
   $.ajax({
       type:"GET",
       url:"/slider",
       success:function(data){
           console.log(data);
           //准备工作
           var $ulImg=$("#img_ul");
           //console.log($ulImg);
           var $ulIndex=$("#img_index");
           //console.log($ulIndex);
           //凡是从页面上获得的都是字符串
           var LIWIDTH=parseFloat($("#slider").css("width"));
           //console.log(LIWIDTH);
           var str="";
           var strIndex="";
           var moved=0;
           //拼接字符串
           for(var i=0;i<data.length;i++){
               var o=data[i];
               console.log(o);
               str+=`<li><a href="#"><img src=${o.apic} alt="出错"/></a></li>`;
               strIndex+=`<li><a href="#">${o.aid}</a></li>`;
           }
           str+=`<li><a href="#"><img src=${data[0].apic} alt="出错"/></a></li>`;
           //console.log(str);
           $ulImg.append(str);
           $ulImg.css("width",((data.length+2)*LIWIDTH));
           $ulIndex.append(strIndex).children().first().addClass("active");
           $("#img_ul img").css("width",LIWIDTH);
           //console.log($("#img_ul img").width);
           $(" #img_index li:first-child a").addClass("active");
           //先让动起来
           function play(){
               timer=setInterval(function(){
                   moved++;
                   //console.log(moved);
                   $ulImg.animate({
                       left:-(moved*LIWIDTH)
                   },500,function(){
                       if(moved==5){
                           moved=0;
                           $ulImg.css("left",0);
                       }
                       $("#img_index li:nth-child("+(moved+1)+") a").addClass("active").parent().siblings().children().removeClass("active");
                   })
               },2000);

           }
           play();
           //悬浮停止定时器，移出继续
           $("#slider").hover(
               function(){
                   clearInterval(timer);
                   timer=null;
               },
               function(){
                   play();
               }
           )
           //点击事件
           $ulIndex.on("click","li>a",function(e){
               var $tar=$(e.target);
               var moved=parseInt($tar.html()-1);
               //console.log(moved)
               $ulImg.stop(true).animate({
                   left:-moved*LIWIDTH
               },500,function(){
                   $tar.addClass("active");
                   $tar.parent().siblings().children().removeClass("active");
               })
           })

},
       error:function(){
           alert("网络问题！");
       }
   });
}();




/* 2 蛋糕类别*/
+function() {
    $.ajax({
        type: "GET",
        url: "/type",
        success: function (data) {
            var pro_type = "";
            for (var i = 0; i < data.length; i++) {
                var o = data[i];
                pro_type += `<li><a href="#"><img src=${o.apic} alt="出错"/></a></li>`
            }
            $("#pro_type").append(pro_type);
        },
        error: function () {
            alert("网络问题！")
        }
    })
}();

+function(){
    $.ajax({
        type:"GET",
        url:"/show",
        success:function(data){
             var pro_show="";
            for(var i=0;i<data.length;i++){
                var o=data[i];
                pro_show+=`<li><a href="#"><img src=${o.apic} alt="出错"/></a></li>`;
            }
            pro_show+=`<li><a href="#"><img src=${data[0].apic} alt="出错"/></a></li>`;
            $("#pro_show>ul").append(pro_show);
        },
        error:function(){alert("网络问题！")}
    });
    //动起来
    function show(){
        var moved=0;
        var LIWIDTH=252;
        var timer=setInterval(function (){
            moved++;
            //????????
            $("#pro_show>ul").animate({
                left:-moved*LIWIDTH
            },500,function(){
                if(moved>7){
                    moved=0;
                    $("#pro_show>ul").css("left",0);
                }
            })
        },1000)
        ////悬浮
        //$("#show").hover(
        //    function(){
        //        clearInterval(timer);
        //        timer=null;
        //    },
        //    function(){
        //        var timer=setInterval(show,1000);
        //    }
        //)
    }
    show();

    //单击按钮
    //$("#show").on("click","a",function(e){
    //    var $tar=$("e.target");
    //    var val=$tar.attr("id");
    //    var pl=$tar.siblings().child().left;
    //    if(val==="previous"){
    //        pl-=252;
    //    }else if(val==="next"){
    //        pl+=252;
    //    }
    //});
}();

+function(){
    $.ajax({
        type:"GET",
        url:"/info",
        success:function(data){
          var str="";
            for(var i=0;i<data.length;i++){
                var o=data[i];
                str+=` <dl>
                        <dt><a href="#"><img src=${o.fpic} alt=""/></a></dt>
                        <dd>${o.fcontent}</dd>
                      </dl> `;
            }
            $("#relative div.info_item").append(str);
        }
    });
}();

+function(){
    $.ajax({
        type:"GET",
        url:"/comment",
        success:function(data){
            var str="";
            var len=data.length;
            var DLHEIGHT=74;
            for(var i=0;i<len;i++){
                var o=data[i];
                str+=` <dl>
                        <dt><a href="#"><img src=${o.compic} alt=""/></a></dt>
                        <dd>${o.content}</dd>
                      </dl> `;
            }
            $("#relative div.comment_item").append(str);
            /*轮播*/
            function comment(){
                var moved=0;
                var timer=setInterval(function (){
                    moved++;
                    $("#relative div.comment_item")
                        .animate(
                        {top:-moved*DLHEIGHT},500,function(){
                            if(moved>1){
                                moved=0;
                                $("#relative div.comment_item").css("top",0);
                            }
                        })
                },1500);

            }
            comment();
        }
    })
}();

    +function(){
        /*1 轮播*/
        $.ajax({
            type:"GET",
            url:"/buy",
            success:function(data) {
                console.log(data);
                //准备工作
                var $ulImg = $("#relative ul.pic");
                //console.log($ulImg);
                var $ulIndex = $("#relative ul.index");
                //console.log($ulIndex);
                var str = "";
                var strIndex = "";
                var moved = 0;
                //拼接字符串
                for (var i = 0; i < data.length; i++) {
                    var o = data[i];
                    //console.log(o);
                    str += `<li><a href="#"><img src=${o.apic} alt="出错"/></a></li>`;
                    //strIndex += `<li><a href="#"></a></li>`;
                }
                //console.log(str);
                $ulImg.append(str);
                $ulIndex.append(strIndex);
                var PICHEIGHT=147;
                function buy(){
                    var moved=0;
                    var timer=setInterval(function(){
                        moved++;
                        $("ul.pic").animate({top:-moved*PICHEIGHT},500,function(){
                            if(moved>1){
                                moved=0;
                                $("ul.pic").css("top",0);
                            }
                        });
                    },2000);
                }
                buy();
            }
            });
}();
