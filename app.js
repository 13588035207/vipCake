/**
 * Created by Administrator on 2017/7/18.
 */
//加载相关模块
const qs=require("querystring");
const mysql=require("mysql");
const http=require("http");
const express=require("express");
//创建一个连接池
var pool=mysql.createPool({
    host:"127.0.0.1",
    user:"root",
    password:"",
    database:"vipCake",
    port:3306,
    connectionLimit:25
});
//创建服务器
var app=express();
var server=http.createServer(app);
//绑定监听端口
server.listen(8082);
//加载静态文件
app.use(express.static("public"));
//app.get("/",function(req,res){
//  res.redirect("index.html");
//});
app.get("/slider",function(req,res){
    pool.getConnection(function(err,conn){
        if(err) throw err;
        var sql="SELECT * FROM vip_carousal WHERE atype='big'";
        conn.query(sql,function(err,result){
            if (err) throw err;
            //console.log(result);
            res.json(result);
            conn.release();
        });
        })
});
app.get("/type",function(req,res){
    pool.getConnection(function(err,conn){
        if(err)throw err;
        var sql="SELECT * FROM vip_carousal WHERE atype='type'";
        conn.query(sql,function(err,result){
            if(err)throw err;
            res.json(result);
            conn.release();
        });
    });
});
app.get("/show",function(req,res){
    pool.getConnection(function(err,conn){
        if(err)throw err;
        var sql="SELECT * FROM vip_carousal WHERE atype='show'";
        conn.query(sql,function(err,result){
            if(err)throw err;
            res.json(result);
            conn.release();
        });
    });
});
app.get("/info",function(req,res){
    pool.getConnection(function(err,conn){
        if(err)throw err;
        var sql="SELECT * FROM vip_cakeInfo";
        conn.query(sql,function(err,result){
            if(err)throw err;
            res.json(result);
            conn.release();
        });
    });
});
app.get("/comment",function(req,res){
    pool.getConnection(function(err,conn){
        if(err)throw err;
        var sql="SELECT * FROM vip_comment";
        conn.query(sql,function(err,result){
            if(err)throw err;
            res.json(result);
            conn.release();
        });
    });
});
app.get("/buy",function(req,res){
    pool.getConnection(function(err,conn){
        if(err)throw err;
        var sql="SELECT * FROM vip_carousal WHERE atype='buy'";
        conn.query(sql,function(err,result){
            if(err)throw err;
            res.json(result);
            conn.release();
        });
    });
});
app.get("/pro_other",function(req,res){
    pool.getConnection(function(err,conn){
        if(err)throw err;
        var sql="SELECT pid,ppic,pname,description FROM vip_pro";
        conn.query(sql,function(err,result){
            if(err)throw err;
            //console.log(result);
            res.json(result);
            conn.release();
        });
    });
});
app.get("/pro",function(req,res){
    pool.getConnection(function(err,conn){
        if(err)throw err;
        var sql="SELECT pid,ppic,pname,ptype,price,sweet,fresh,raw FROM vip_pro";
        conn.query(sql,function(err,result){
            if(err)throw err;
            //console.log(result);
            res.json(result);
            conn.release();
        });
    });
});

app.get("/promotion",function(req,res){
    pool.getConnection(function(err,conn){
        if(err)throw err;
        var sql="SELECT * FROM vip_pic WHERE id<=3";
        conn.query(sql,function(err,result){
            if(err) throw err;
            //console.log(result);
            res.json(result);
            conn.release();
        });
    });
});
app.get("/vip_see",function(req,res){
    pool.getConnection(function(err,conn){
        if(err)throw err;
        var sql="SELECT * FROM vip_pic WHERE id>3";
        conn.query(sql,function(err,result){
            if(err) throw err;
            //console.log(result);
            res.json(result);
            conn.release();
        });
    });
});
app.get("/news",function(req,res){
    pool.getConnection(function(err,conn){
        if(err)throw err;
        var sql="SELECT * FROM vip_news ORDER BY data DESC";
        conn.query(sql,function(err,result){
            if(err) throw err;
            //console.log(result);
            res.json(result);
            conn.release();
        });
    });
});
app.get("/park",function(req,res){
    pool.getConnection(function(err,conn){
        if(err)throw err;
        var sql="SELECT * FROM vip_park ORDER BY date DESC";
        conn.query(sql,function(err,result){
            if(err) throw err;
            //console.log(result);
            res.json(result);
            conn.release();
        });
    });
});
//用户注册
app.post("/reg.do",function(req,res){
    console.log(1);
    req.on("data",function(data){
        var str=data.toString();
        var obj=qs.parse(str);
        var u=obj.uname;
        var p=obj.upwd;
        pool.getConnection(function(err,conn){
            if(err)throw err;
            var sql="INSERT INTO vip_user VALUES(null,?,?)";
            conn.query(sql,[u,p],function(err,result){
                if(err)throw err;
                console.log(result);
                if(result.affectedRows>0){
                    res.json({code:1,msg:"注册成功"});
                }else{
                    res.json({code:-1,msg:"注册失败"});
                    conn.release();
                }
            })
        })
    })
});
//验证用户名是否存在
app.get("/existName",function(req,res){
    var u=req.query.uname;
    pool.getConnection(function(err,conn){
        if(err)throw err;
        var sql="SELECT * FROM vip_user WHERE uname=?";
        conn.query(sql,[u],function(err,result){
            if(err)throw err;
            if(result.length>0){
                res.json({code:-1,msg:"用户名已被使用，请重新输入"});
            }else{
                res.json({code:1,msg:"用户名可用"});
                conn.release();
            }
        })
    })
});
//用户登录
app.post("/log.do",function(req,res){
    req.on("data",function(data){
        var str=data.toString();
        var obj=qs.parse(str);
        var u=obj.uname;
        var p=obj.upwd;
        pool.getConnection(function(err,conn){
            if(err) throw err;
            var sql="SELECT * FROM vip_user WHERE uname=? AND upwd=?";
            conn.query(sql,[u,p],function(err,result){
                if(err) throw err;
                if(result.length>0){
                    res.json({code:1,msg:"欢迎回来",uid:result[0].uid,uname:result[0].uname})
                }else{
                    res.json({code:-1,msg:"用户名或密码有误"});
                }
            })
        })
    })
});
/*添加购物车*/
app.get("/addCart",function(req,res){
    var pid=req.query.pid;
    var uid=req.query.uid;
    //console.log(pid,uid);
    pool.getConnection(function(err,conn){
        if(err)throw err;
        var sql="SELECT * FROM vip_cart WHERE uid=? AND pid=?";
        conn.query(sql,[uid,pid],function(err,result){
            if(err) throw err;
            //如果有，则更新,没有则添加
            if(result.length>=1){
                var sql="UPDATE vip_cart SET count=count+1 WHERE uid=? AND pid=?";
                conn.query(sql,[uid,pid],function(err,result){
                    if(err) throw err;
                    res.json({msg:"添加购物车成功！"})
                })
            }else if(result.length<1){
                var sql="INSERT INTO vip_cart VALUES(null,?,?,?)";
                conn.query(sql,[pid,uid,1],function(err,result){
                    if(err) throw err;
                    res.json({msg:"添加购物车成功！"})
                })
            }
            conn.release();
        })
    })
})
/*跳转到详情页*/
app.get("/detail",function(req,res){
//    获取id
    var pid=req.query.pid;
    pool.getConnection(function(err,conn){
        if(err) throw err;
        var sql="SELECT * FROM vip_detail WHERE pid=?";
        conn.query(sql,[pid],function(err,result){
            if(err) throw err;
            //console.log(result);
            res.json(result[0]);
            conn.release();
        })
    })
})
/*购物车列表*/
app.get("/shopping_cart",function(req,res){
    //获取uid 查询数据
    var uid=req.query.uid;
    pool.getConnection(function(err,conn){
        if(err) throw err;
        var sql="SELECT d.pic,d.name,d.price,c.count,c.cid FROM vip_detail d,vip_cart c,vip_user u WHERE c.pid=d.pid AND u.uid=c.uid=? AND c.count>0";
        conn.query(sql,[uid],function(err,result){
            if(err)throw err;
            //console.log(result);
            res.json(result);
            conn.release();
        })
    })
})
/*删除购物车的商品*/
app.get("/del_cart",function(req,res){
    //获取CID
    var cid=req.query.cid;
    //操作数据库
    pool.getConnection(function(err,conn){
        if(err) throw err;
        var sql="DELETE FROM vip_cart WHERE cid=?";
        conn.query(sql,[cid],function(err,result){
            if(err) throw err;
           //console.log(result);
            if(result.affectedRows>0){
                res.json({code:1,msg:"删除成功！"})
            }else{
                res.json({code:-1,msg:"删除失败！"})
            }
            conn.release();
        })
    })
});

/*购物车商品+操作*/
app.get("/up",function(req,res){
    var cid=req.query.cid;
    pool.getConnection(function(err,conn){
        if(err) throw err;
        var sql="UPDATE vip_cart SET count=count+1 WHERE cid=?";
        conn.query(sql,[cid],function(err,result){
            if(err) throw err;
            //console.log(result);
            if(result.affectedRows>0){
                res.json({code:1,msg:"更新成功！"});
            }else{
                res.json({code:-1,msg:"更新失败！"});
            }
            conn.release();
        })
    })
});
/*购物车商品-操作*/
app.get("/down",function(req,res){
    var cid=req.query.cid;
    pool.getConnection(function(err,conn){
        if(err) throw err;
        var sql="UPDATE vip_cart SET count=count-1 WHERE cid=? AND count>0";
        conn.query(sql,[cid],function(err,result){
            if(err) throw err;
            //console.log(result);
            if(result.affectedRows>0){
                res.json({code:1,msg:"更新成功！"});
            }else{
                res.json({code:-1,msg:"更新失败！"});
            }
            conn.release();
        })
    })
})