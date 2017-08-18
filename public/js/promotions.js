/**
 * Created by Administrator on 2017/8/1.
 */
+function(){
    $.ajax({
        type:"GET",
        url:"/promotion",
        success:function(data){
            console.log(1);
            var str="";
            str+=`<dl>
            <dt><img src=${data[0].pic} alt=""/></dt>
            <dd>
               ${data[0].content}
            </dd>
        </dl>
        <dl>
            <dt>
                <table>
                    <tr>
                        <th>请正确填写以下信息：</th>
                    </tr>
                    <tr>
                        <td>您的公司全称：</td>
                        <td><input type="text"/></td>
                    </tr>
                    <tr>
                        <td> 您的公司地址：</td>
                        <td><input type="text"/></td>
                    </tr>
                    <tr>
                        <td> 公司人数：</td>
                        <td><input type="number" style="width:50px;" min="0"/>人</td>
                    </tr>
                    <tr>
                        <td>申请品尝的部门：</td>
                        <td><input type="text"/></td>
                    </tr>
                    <tr>
                        <td>品尝地点：</td>
                        <td><input type="text"/></td>
                    </tr>
                    <tr>
                        <td> 参与活动的人数：</td>
                        <td><input type="number"  style="width:50px;" min="0"/>人</td>
                    </tr>
                    <tr>
                        <td> 活动时间：</td>
                        <td><input type="date"/></td>
                    </tr>
                    <tr>
                        <td>您的姓名：</td>
                        <td><input type="text"/></td>
                    </tr>
                    <tr>
                        <td> 您的办公电话：</td>
                        <td><input type="text"/></td>
                    </tr>
                    <tr>
                        <td> 您的手机号码：</td>
                        <td><input type="text"/></td>
                    </tr>
                    <tr>
                        <td>  验证码：</td>
                        <td><input type="text"  style="width:50px;"/></td>
                    </tr>
                    <tr>
                        <td colspan="2">  <button>提交申请</button></td>
                    </tr>
                 </table>
            </dt>
            <dd class="info"><img src=${data[1].pic} alt=""/></dd>
        </dl>
        <img src=${data[2].pic} alt=""/>`;
            $("#main>div.first").append(str);
        },
        error:function(){alert("网络问题！")}
    });
}();