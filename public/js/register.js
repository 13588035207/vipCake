/**
 * Created by Administrator on 2017/8/2.
 */
//注册
+function(){
    var verifyCode = new GVerify("v_container");
    //点击注册按钮，注册账号
    $(".btn_reg").click(function(){
        //验证用户名
        var regName=/^[a-z0-9]{6,12}$/i;
        if(!regName.test($("#uname").val())){
            $("#uname").next().next().addClass("glyphicon-remove").removeClass("glyphicon-ok");
            return;
        }else{
            $("#uname").next().next().addClass("glyphicon-ok").removeClass("glyphicon-remove");
        }
        //验证密码
        var regPwd=/^[a-z0-9]{6,12}$/i;
        if(!regPwd.test($("#upwd").val())){
            $("#upwd").next().addClass("glyphicon-remove").removeClass("glyphicon-ok");
            return;
        }else{
            $("#upwd").next().addClass("glyphicon-ok").removeClass("glyphicon-remove");
        }
        //重复验证密码
        if($("#upwd_repeat").val()!==$("#upwd").val()){
            $("#upwd").next().addClass("glyphicon-remove").removeClass("glyphicon-ok");
            return;
        }else {
            $("#upwd").next().addClass("glyphicon-ok").removeClass("glyphicon-remove");
        }
        //验证码确认
        var res=verifyCode.validate($("#code_input").val());
        if(!res){
            $("#code_input").next().next().addClass("glyphicon-remove").removeClass("glyphicon-ok");
            return;
        }else{
            $("#code_input").next().next().addClass("glyphicon-ok").removeClass("glyphicon-remove");
        }
        //以上验证都通过以后，发送ajax请求向数据库的添加一条数据
        var u=$("#uname").val();
        var p=$("#upwd").val();
        $.ajax({
            type:"POST",
            url:"/reg.do",
            data:{uname:u,upwd:p},
            success:function(data){
                console.log(1);
                if(data.code>0){
                    $("#msg").html(data.msg);
                    var timer=setTimeout(function(){location.href="login.html";},1000);
                }
            }
        });
    });
    $("#uname").blur(function(){
        var u=$("#uname").val();
        $.ajax({
            type:"GET",
            url:"/existName",
            data:{uname:u},
            success:function(data){
                console.log(data);
                if(data.code>0){
                    $("#tipMsg").html("");
                }else{
                    $("#tipMsg").html(data.msg);
                }
            }
        })
    });
}();