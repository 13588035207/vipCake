/**
 * Created by Administrator on 2017/8/2.
 */
$("#btn_log").click(function(){
    var u=$("#uname").val();
    var p=$("#upwd").val();
    $.ajax({
        type:"POST",
        url:"/log.do",
        data:{uname:u,upwd:p},
        success:function(data){
            if(data.code>0){
                sessionStorage.setItem("uid",data.uid);
                $("#log").html(data.uname);
                var timer=setTimeout(function(){
                    location.href="index.html";
                    $("#log").html(sessionStorage.getItem("uid"));
                },1000)
            }else{
                $("#msg").html(data.msg);
            }
        }
    });
})