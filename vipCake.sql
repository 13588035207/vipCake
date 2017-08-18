DROP DATABASE IF EXISTS vipCake;
CREATE DATABASE vipCake CHARSET UTF8;
USE vipCake;
#用户表：编号 用户名 密码   vip_log
CREATE TABLE vip_user(
uid INT PRIMARY KEY AUTO_INCREMENT,
uname VARCHAR(100),
upwd VARCHAR(32)
);
#产品表：产品编号  产品图片 产品名称 产品类别 价格 甜度 保鲜条件 原材料 产品描述   vip_pro
CREATE TABLE vip_pro(
pid INT PRIMARY KEY AUTO_INCREMENT,
ppic VARCHAR(100),
pname VARCHAR(200),
ptype VARCHAR(200),
price DECIMAL(10,2),
sweet VARCHAR(50),
fresh VARCHAR(200),
raw VARCHAR(200),
description VARCHAR(700)
);
SET NAMES GBK;
INSERT INTO vip_pro VALUES(null,'img/index/product_01.jpg','15.黑森林<b>Black Forest</b>','水果蛋糕 巧克力蛋糕 乳脂蛋糕','168.00元 / 1.0磅','★★★☆☆☆','0－4℃保藏12小时，10℃最佳食用','巧克力(比利時)、乳脂奶油(新西兰)、黑车厘子(美国)、樱桃白兰地(荷兰)、砂糖(韩国)','入口即溶的纯巧克力，让你分享那丰收的喜悦 <span class="rt">168.00元 / 1.0磅</span><br>Share the joy and happiness with the pure indulgence of chocolate, melting in your mouth every single bite.');

INSERT INTO vip_pro VALUES(null,'img/index/product_02.jpg','30.心愿<b>My wish cake</b>','水果蛋糕 乳脂蛋糕','188.00元 / 1.0磅','★★★☆☆☆','0－4℃保藏12小时，5℃最佳食用','奶油(新西兰）、奶酪（法国）、车厘子（美国 ）、芒果（澳洲）、红心火龙果、薄荷叶','表面“Best Wish”文字可定制</b><span class="rt">188.00元 / 1.0磅</span><br>褪去浮华、真诚而自然<br>或许是我们一直期待的节日模样<br>偶尔制造点惊喜<br>如这三层绵软的巧克力蛋糕<br>中间堆砌的智利车厘子、澳洲芒果、草莓<br>满满地甜蜜与幸福<br>生日，就是陪伴与欢聚的感动<br>Best wishes for you！<br><br>* 水果受季节影响，种类有变化，但总克重不变。 当季搭配为黑加仑、芒果、红心火龙果。');

INSERT INTO vip_pro VALUES(null,'img/index/product_03.jpg','36.芒果拿破仑<b>Mango Napoleon</b>','水果蛋糕 乳脂蛋糕 ','188.00元 / 1.0磅','★★★☆☆☆','0－4℃保藏4小时，5℃最佳食用','奶油（新西兰）、黄油（法国）、卡仕达酱（马达加斯加）、蓝莓（智利）、蓝莓酱（智利）..','一咬下去，薄如蝉翼的酥皮便应声裂开，<span class="rt">188.00元 / 1.0磅</span><br>每吃一口，都像敲响一个音符。<br>看得到的大片的芒果，<br>放下矜持，善待自己，心花绽放。');

INSERT INTO vip_pro VALUES(null,'img/index/product_04.jpg','46.红丝绒<b>Red velvet</b>','乳脂蛋糕 芝士蛋糕','228.00元 / 1.5磅','★★★☆☆☆','0－4℃保藏12小时，5℃最佳食用','新西兰乳脂奶油、法国可可粉、美国蔓越莓、新西兰奶油奶酪','如玫瑰般高贵的颜色，如丝绒般的柔软口感， <span class="rt">228.00元 / 1.5磅</span><br>正如它那美妙的名字——红丝绒，<br>让人回味无穷、遐想连篇。<br>微醇的可可芬芳与奶油的丝滑倾尽缠绵，<br>犹如爱情的滋味。<br>而当你看到它时，无论是外表和内在，都会给你惊喜。');

INSERT INTO vip_pro VALUES(null,'img/index/product_05.jpg','04.黑白慕斯　<b>Dark and White Chocolate Mousse Cake</b>','慕斯蛋糕 巧克力蛋糕 ','168.00元 / 1.0磅','★★★☆☆☆','0－4℃保藏12小时，5℃最佳食用','白巧克力(比利时)、乳脂奶油(新西兰)、黑巧克力(比利時)、可可粉(法国)、君度酒(法国)','淡苦的可可粉和香滑的甜白巧克力慕斯，<span class="rt">168.00元 / 1.0磅</span><br>独特的黄金配比筑就了让你回味无穷的美味。。。<br>Dark coco harmonised with sweet smooth white chocolate mousse, the unique balance will keep the taste last long.');

INSERT INTO vip_pro VALUES(null,'img/index/product_06.jpg','02.百利甜情人　Baileys Lover','水果蛋糕 巧克力蛋糕 乳脂蛋糕','168.00元 / 1.0磅','★★★☆☆☆','0－4℃保藏12小时，10℃最佳食用','巧克力(比利時)、乳脂奶油(新西兰)、黑车厘子(美国)、樱桃白兰地(荷兰)、砂糖(韩国)','新西兰纯乳脂奶油中溶入独特玫瑰浆，诠释那甜蜜之爱<span class="rt">168.00元 / 1.0磅</span><br> New Zealand butter cream melt with distinctive rose syrup, this is how love should be interpreted.<br>蛋糕内水果夹心受季节影响，种类有变化，但总克重不变。 当季为黄桃夹心。');

INSERT INTO vip_pro VALUES(null,'img/index/product_07.jpg','03.朗姆<b>Rum Cheese Cake</b>','水乳脂蛋糕 芝士蛋糕','168.00元 / 1.0磅','★★☆☆☆☆','0－4℃保藏12小时，5℃最佳食用','乳脂奶油(新西兰)、芝士(新西兰)、朗姆酒、柠檬(美国)、砂糖(韩国)',' 纯正的牙买加朗姆酒，<span class="rt">168.00元 / 1.0磅</span><br>溶进那来自新西兰乳脂奶油制成的白玫瑰，让那份纯洁的爱更加醇厚而悠长 <br>White roses made from the New Zealand cream cheese flavoured with authentic Jamaican rum,  this is the way the noble love is deepened and lasting.');

INSERT INTO vip_pro VALUES(null,'img/index/product_08.jpg','20.提拉米苏　<b>Tiramisu</b>','慕斯蛋糕','199.00元 / 1.0磅','★★★☆☆☆','0－4℃保藏4小时，5℃最佳食用','Mascarpone、奶酪(新西兰)、咖啡酒(墨西哥)、咖啡(肯尼亚)、可可粉(法国)',' <b style="color:red;">提前24小时订购</b>  <span class="rt">199.00元 / 1.0磅</span> <br>芝士的香滑、咖啡的苦涩，成就意式甜点的象征！<br>Silky cheese, bitter coffee and the sharp rum signify the triumph of Italian dessert.');
INSERT INTO vip_pro VALUES(null,'img/index/product_09.jpg','05.栗蓉醇香<b>Chestnut Cream</b>','乳脂蛋糕','168.00元 / 1.0磅','★★★☆☆☆','保鲜条件：0－4℃保藏12小时15℃最佳食用','板栗(中国)、乳脂奶油(新西兰)、黄油(比利时)、砂糖(韩国)','纯手工打磨的新鲜栗子浆，<br/> <span class="rt">168.00元 / 1.0磅</span>特有的坚果清香和恰到好处的淡奶油，让我们回忆。。。。<br>Hand made fresh chestnut puree , the distinctive nutty flavour,and the subtle cream taste,let us remember the experience.');

INSERT INTO vip_pro VALUES(null,'img/index/product_10.jpg','27.榴·芒<b>DURIAN &amp; MANGO</b>','慕斯蛋糕 水果蛋糕','99.00元 / 1磅','★★★☆☆☆','0－4℃3小时内食用口味最佳，5℃最佳食用','榴莲（泰国）、芒果（澳洲及台湾）、巧克力（比利时）、新西兰奶油、砂糖(韩国)','<b style="color:red">提前24小时订购</b> <span class="rt">199.00元 / 1磅</span>  <br>没有哪种爱憎像这样强烈，令你窒息，或令你狂喜。唯品客从不会与季节失约！<br>No one has such strong, smother you, or your ecstasy. Season and never stood up for VipCake!');

INSERT INTO vip_pro VALUES(null,'img/index/product_11.jpg','21.澳洲芒果<b>Mango Mousse</b>','慕斯蛋糕 水果蛋糕','188.00元 / 1.0磅','★★★☆☆☆','0－4℃保藏4小时，5℃最佳食用','芒果（澳洲、中国台湾）、乳脂奶油（新西兰）、白巧克力（比利时）','<b style="color:red;">1磅、2磅提前5小时预订；3磅及以上请提前24小时预订。</b>  <span  class="rt">188.00元 / 1.0磅</span> <br>芒果的香甜溶入新西兰乳脂奶油，香醇与爽滑让味蕾得到充分的享受<br> Sweet mango melt into New Zealand cream , the mellow and smoothness your palate will thoroughly enjoy.');

INSERT INTO vip_pro VALUES(null,'img/index/product_12.jpg','08.蓝莓香脆　<b>Blueberry Chips</b>','水果蛋糕 乳脂蛋糕 芝士蛋糕','188.00元 / 1.0磅','★★☆☆☆☆','0－4℃保藏12小时，5℃最佳食用','蓝莓鲜果、北美蓝莓果自制的蓝莓酱、乳脂奶油(法国)、芝士(新西兰)','精选新鲜的蓝莓的清爽，与法式薄脆片，<br/> <span class="rt">188.00元 / 1.0磅</span>内层轻乳芝士的松软，层层美味，出乎意料！<br> It’s time for a Blueberries　harvest season, Premium fresh blueberry jam atop a joyous mountain of creamy cheesecake, your worries popping like podgy blueberries in your mouth.');

INSERT INTO vip_pro VALUES(null,'img/index/product_13.jpg','28.福果　<b>FUGUO</b>','水果蛋糕 乳脂蛋糕 ','188.00元 / 1.0磅','★★★☆☆☆','2－4℃3小时内食用口味最佳，5℃最佳食用','奶油(新西兰）、奶酪（法国）、蔓越橘干（美国 ）、覆盆子 （法国）、芒果（澳洲）、车..',' 福气满满，果然不同<br>  <span class="rt">188.00元 / 1.0磅</span>Blessing full, and indeed as expected<br><br>* 水果受季节影响，种类有变化，但总克重不变。 当季搭配为火龙果、澳洲芒果、绿果。');

INSERT INTO vip_pro VALUES(null,'img/index/product_14.jpg','16.福瑞<b>Fresh Fruit</b>','水果蛋糕 乳脂蛋糕 ','168.00元 / 1.0磅','★★★☆☆☆','0－4℃保藏4小时，15℃最佳食用','乳脂奶油（新西兰）、白巧克力（比利时）、有机草莓、樱桃（美国)、黄桃（南非）、绿猕..','有机的新鲜水果镶嵌在淡淡椰香 <span class="cack_infor">168.00元 / 1.0磅</span> <br/>的巧克力中央，香甜阵阵拂过。。。。<br>Organic fresh fruit, delicate coconut flavoured chocolate,you will not miss this sweet aroma.<br><br>* 水果受季节影响，种类有变化，但总克重不变。 当季搭配为黑加仑、芒果、绿果、金果。');

INSERT INTO vip_pro VALUES(null,'img/index/product_15.jpg','23.榛子巧克力　<b>Hazelnut Affair</b>','巧克力蛋糕 乳脂蛋糕 坚果蛋糕','168.00元 / 1.0磅','★★★☆☆☆','0－4℃保藏24小时，5℃最佳食用','榛子(美国/土耳其)、黑巧克力(比利時)、乳脂奶油(新西兰)、砂糖(韩国)','精挑细选的土耳其榛子手工磨碎，<span class="rt">168.00元 / 1.0磅</span><br>极品的比利时巧克力,执着那份精致！<br>Hand grounded exclusive Turkish');

INSERT INTO vip_pro VALUES(null,'img/index/product_16.jpg','18.黑格　<b>Haig</b>','慕斯蛋糕 巧克力蛋糕','168.00元 / 1.0磅','★★★☆☆☆','0－4℃保藏12小时，10℃最佳食用','黑巧克力(比利時)、乳脂奶油(新西兰)、白兰地(法国)','感受顶级黑巧克力，献给最尊贵的品尝家。。<span class="rt">168.00元 / 1.0磅</span><br>Experience the superme dark chocolate, the cake exclusively for the most critical food critic.');

INSERT INTO vip_pro VALUES(null,'img/index/product_17.jpg','07.卡布奇诺　<b>Cappuccino Cake</b>','乳脂蛋糕 ','168.00元 / 1.0磅','★★★☆☆☆','0－4℃保藏12小时，5℃最佳食用','乳脂奶油(新西兰)、咖啡粉(哥伦比亚)、咖啡豆(肯尼亚)、咖啡酒(墨西哥)、芝士(新西兰)、..','谁能说咖啡不能爱上奶油，天生的一对？ <span class="cack_infor">168.00元 / 1.0磅</span><br> Who says that coffee does not go with cream?Are not they the perfect match? ');

INSERT INTO vip_pro VALUES(null,'img/index/product_18.jpg','19.杏仁淡奶　<b>Almond Cream</b>','乳脂蛋糕 ','168.00元 / 1.0磅','★★★☆☆☆','0－4℃保藏12小时，15℃最佳食用','杏仁(美国)、乳脂奶油(新西兰)、黄油(比利时)、砂糖(韩国)','烘烤出的杏仁片， <span  class="rt">168.00元 / 1.0磅</span><br/>混合新西兰乳脂奶油的香，如此美味怎么抵挡诱惑？<br>Roasted almond slices dally with pure New Zealand cream, like an awkward philosophical question followed by a sensual Eureka moment. How can I do？');

INSERT INTO vip_pro VALUES(null,'img/index/product_19.jpg','26.抹茶雪域<b>Maccha snows</b>','慕斯蛋糕','168.00元 / 1.0磅','★★★☆☆☆','2－4℃3小时内食用口味最佳，5℃最佳食用','抹茶粉（日本）、巧克力（比利时与瑞士的妙搭）、香草（马达加斯加）、乳脂奶油（新西兰..','享受自然的茶意翠语，<span class="rt">168.00元 / 1.0磅</span><br/>品尝抹茶的精细，出乎意料，是清凉的触感。<br>Enjoy the natural meaning of green tea, taste tea fine, exceeding one is expectations, is cool to the touch.');

INSERT INTO vip_pro VALUES(null,'img/index/product_20.jpg','06.可瑞斯<b>Crisp</b>',' 芝士蛋糕','168.00元 / 1.0磅','★★★☆☆☆','0－4℃保藏12小时，10℃最佳食用','芝士(新西兰)、乳脂奶油(新西兰)、黄油(新西兰)、白核桃(云南)','口感细腻滑爽， <span class="rt">168.00元 / 1.0磅</span><br/>芝士口味香浓诱人，谁能动我的奶酪？<br>Silky and delicate, mellow and seductive, who dare to move my cheesecake?');

INSERT INTO vip_pro VALUES(null,'img/index/product_21.jpg','24.芝士斯诺<b>Cheese Snow Cake</b>','乳脂蛋糕 芝士蛋糕 ','168.00元 / 1.0磅','★★★☆☆☆','0－4℃保藏12小时，10℃最佳食用','乳脂奶油(新西兰)、芝士(新西兰)、黄油(新西兰)、白巧克力(比利时)','清心的新西兰奶油芝士，<span  class="rt">168.00元 / 1.0磅</span><br/>醇厚的滋味，入口即化的比利时白巧力，如一缕轻轻的阳光，悄悄抹去心头的烦闷。一块蛋糕，与喜爱的那个人分享，一切都是那样的美好！ The pure New Zealand cream cheese, mellow taste, Belgian White Chocolate, such as a ray of light of the sun, quietly wiped my heart boredom. A piece of cake, to share with the people love, everything is so beautiful');

INSERT INTO vip_pro VALUES(null,'img/index/product_22.jpg','10.榴莲暗香　<b>Durian</b>','水果蛋糕 巧克力蛋糕 乳脂蛋糕','168.00元 / 1.0磅','★★★☆☆☆','0－4℃保藏12小时，10℃最佳食用','白巧克力（比利时）、榴莲（泰国金枕头）、乳脂奶油（新西兰）',' 巧克力包裹着榴莲浆，<span class="rt">168.00元 / 1.0磅</span><br/>甜蜜又自然的美味！<br>Chocolate wrapped with durian puree flavoured coconut--it is sweet, natural and delicious.');

INSERT INTO vip_pro VALUES(null,'img/index/product_23.jpg','01.核桃雪域　<b>Hickory Snow</b>','乳脂蛋糕 坚果蛋糕','168.00元 / 1.0磅','★★★☆☆☆','0－4℃保藏12小时，10℃最佳食用','乳脂奶油(新西兰)、白核桃(云南)、黄油(比利时)、砂糖(韩国)','精选云南白核桃经特别烤制，<span class="rt">168.00元 / 1.0磅</span><br/>满洒在新西兰纯乳脂奶油中<br>享受自然的礼物！<br>English cream cheese topped with exclusively selected and roasted white walnut from Yunnan, let us enjoy the gift from nature.');

INSERT INTO vip_pro VALUES(null,'img/index/product_24.jpg','14.布朗尼　<b>Brownie Cake</b>','巧克力蛋糕 乳脂蛋糕 坚果蛋糕 ','168.00元 / 1.0磅','★★★★★☆','0－4℃保藏12小时，10℃最佳食用','黑巧克力(比利時)、朗姆酒(牙买加)、乳脂奶油(新西兰)、开心果(美国)、榛子(美国)、腰果..',' 坚果小粒加上浓香的可可，<span class="rt">168.00元 / 1.0磅</span><br/>味蕾寻觅到香脆与厚重<br>Crushed nuts and rich coco, you will mostly enjoy the cripiness and richness.');

INSERT INTO vip_pro VALUES(null,'img/index/product_25.jpg','12.松子仁　<b>Pine Nut Cake</b>',' 乳脂蛋糕 坚果蛋糕','168.00元 / 1.0磅','★★★☆☆☆','0－4℃保藏12小时，10℃最佳食用','松子(俄罗斯)、乳脂奶油(新西兰)、可可粉(法国)、砂糖(韩国)','香脆的松仁与甜滑细腻的奶油， <span class="rt">168.00元 / 1.0磅</span><br/>洒上淡苦的可可粉，形成甜苦交融的独特口感。。。<br>Crunchy pinenut and sweet silky cream, topped with dark coco powder--the unique bitter sweet taste you are looking forward to.');

INSERT INTO vip_pro VALUES(null,'img/index/product_26.jpg','11.心语　<b>Heart Talk</b>','巧克力蛋糕 乳脂蛋糕 ','168.00元 / 1.0磅','★★★☆☆☆','0－4℃保藏12小时，10℃最佳食用','白巧克力(比利时)、乳脂奶油(新西兰)、椰蓉(菲律宾)、黄油(新西兰)','淡香的椰蓉托起白巧克力片， <span class="rt">168.00元 / 1.0磅</span><br/>至真至纯，美味不容错过！<br>Delicate coconut flakes with white chocolate slices, you should not miss this pure indulgence.');

INSERT INTO vip_pro VALUES(null,'img/index/product_27.jpg','31.卡布奇诺（无糖）　<b>Cappuccino Cake</b>','无糖蛋糕 ','168.00元 / 1.0磅','★★★☆☆☆','0－4℃保藏12小时，10℃最佳食用','乳脂奶油(新西兰)、咖啡粉(哥伦比亚)、咖啡豆(肯尼亚)、咖啡酒(墨西哥)、芝士(新西兰)、..','<b style="color:red;">5磅及以上蛋糕需提前24小时订购</b>  <span class="rt">168.00元 / 1.0磅</span> <br>谁能说咖啡不能爱上奶油，天生的一对？<br> Who says that coffee does not go with cream?Are not they the perfect match?');

INSERT INTO vip_pro VALUES(null,'img/index/product_28.jpg','32.松子仁（无糖）　<b>Pine Nut Cake</b>','无糖蛋糕','168.00元 / 1.0磅','★★★☆☆☆','0－4℃保藏12小时，10℃最佳食用','松子(俄罗斯)、乳脂奶油(新西兰)、可可粉(法国)、木糖醇','5磅及以上蛋糕需提前24小时订购</b> <span class="rt">168.00元 / 1.0磅</span> <br>香脆的松仁与甜滑细腻的奶油，洒上淡苦的可可粉，形成甜苦交融的独特口感。。。<br>Crunchy pinenut and sweet silky cream, topped with dark coco powder--the unique bitter sweet taste you are looking forward to.<br>');

INSERT INTO vip_pro VALUES(null,'img/index/product_29.jpg','37.童趣　<b>Childhood</b>','水果蛋糕 乳脂蛋糕','168.00元 / 1.0磅','★★★☆☆☆','0－4℃保藏12小时，10℃最佳食用','奶油(新西兰）、砂糖(韩国)、芒果（澳洲及台湾）、巧克力脆豆（比利时）、棉花糖、黄油..','童年的时光一纵即逝， <span class="rt">168.00元 / 1.0磅</span><br/>和宝贝一起开启创意之旅，跨越彩虹吧<br><br>* 水果受季节影响，种类有变化，但总克重不变。 当季搭配水果为芒果');

INSERT INTO vip_pro VALUES(null,'img/index/product_30.jpg','60.Miss喵　<b>Miss Miao</b>',' 慕斯蛋糕 水果蛋糕 巧克力蛋糕 ','168.00元 / 1.0磅','★★★☆☆☆','0－4℃保藏12小时，10℃最佳食用','奶油(新西兰）、砂糖(韩国)、芒果（澳洲及台湾）、巧克力（比利时）','<b style="color:red;">本款为儿童节限定款，即日起接受订购，6.1开始发货</b><span class="rt">228.00元 / 1.5磅</span>  <br>冰激凌口感搭配清爽芒果冻，过一个可爱的粉色儿童节。<br>魔法一施，Miss喵便化作舌尖的精灵，跳跃在每个小朋友的梦中。');

INSERT INTO vip_pro VALUES(null,'img/index/product_31.jpg','61.童真　<b>Childlike</b>','水果蛋糕 巧克力蛋糕','168.00元 / 1.0磅','★★★☆☆☆','0－4℃保藏12小时，10℃最佳食用','奶油(新西兰）、砂糖(韩国)、芒果（澳洲及台湾）、巧克力（比利时）、巧克力豆','<b style="color:red">本款为儿童节限定款，即日起接受订购，6.1开始发货</b> <span class="rt">228.00元 / 1.5磅</span> <br>比利时黑巧克力与奶油慕斯的经典组合，搭配澳洲芒果夹心，口感醇厚而不甜腻，上层彩色巧克力豆更是童真可爱~');

INSERT INTO vip_pro VALUES(null,'img/index/product_32.jpg','59.甜蜜年轮　Baumkuchen','水果蛋糕 巧克力蛋糕 乳脂蛋糕','168.00元 / 1.0磅','★★★☆☆☆','0－4℃保藏12小时，10℃最佳食用','巧克力(比利時)、乳脂奶油(新西兰)、黑车厘子(美国)、樱桃白兰地(荷兰)、砂糖(韩国)','<b style="color:red;">此款需提前24小时订购</b>  <span class="rt">268.00元 / 1.5磅</span> <br>覆盆子果酱与戚风坯完美结合唤醒内心最柔软的记忆，重温旧时温情时刻，抚摸甜蜜年轮。<br>Raspberry jam and the perfect combination of chiffon cake wake up the heart of the most soft memories, relive the warmth moments.');

INSERT INTO vip_pro VALUES(null,'img/index/product_33.jpg','09.莓之恋　Love of Strawberry','水果蛋糕 巧克力蛋糕 乳脂蛋糕','168.00元 / 1.0磅','★★★☆☆☆','0－4℃保藏12小时，10℃最佳食用','巧克力(比利時)、乳脂奶油(新西兰)、黑车厘子(美国)、樱桃白兰地(荷兰)、砂糖(韩国)','可口的草莓和奶香浓郁的新西兰奶油结合，让你无法停口！ <span class="rt">188.00元 / 1.0磅</span><br>when you are encountering the marriage of fresh strawberry and creamy New Zealand butter, you simply can not stop .');

INSERT INTO vip_pro VALUES(null,'img/index/product_34.jpg','44.草莓轻芝士　<b>Strawberry Cheesecake</b>','水果蛋糕 乳脂蛋糕 芝士蛋糕','168.00元 / 1.0磅','★★★☆☆☆','0－4℃保藏12小时，10℃最佳食用','新鲜有机草莓、乳脂奶油(新西兰)、芝士(新西兰)、黄油(新西兰)、坚果酥底、砂糖(韩国)','芝士雪域之上的大片草莓， <span class="rt">188.00元 / 1.0磅</span><br/>如同阿尔卑斯山下鲜花绽放，一面酸甜跳跃，一面醇香敦厚，层次分明有融为一体，一品难忘的滋味就该是如此吧 <br>Large strawberry on the cheese snow, like the flowers blooming side of Alps, sweety and sour taste integrated with mellow cheeses, you deserve the unforgettable taste……');
#购物车表：编号  产品编号 用户编号 产品图片 产品价格 产品数量  vip_cart
CREATE TABLE vip_cart(
cid INT PRIMARY KEY AUTO_INCREMENT,
pid INT,
uid INT,
count INT
);
#轮播表 编号 图片 类别 vip_carousal
CREATE TABLE vip_carousal(
aid INT PRIMARY KEY AUTO_INCREMENT,
apic VARCHAR(100),
atype VARCHAR(200)
);
INSERT INTO vip_carousal VALUES(null,'img/index/slider_1.jpg','big');
INSERT INTO vip_carousal VALUES(null,'img/index/slider_2.jpg','big');
INSERT INTO vip_carousal VALUES(null,'img/index/slider_3.jpg','big');
INSERT INTO vip_carousal VALUES(null,'img/index/slider_4.jpg','big');
INSERT INTO vip_carousal VALUES(null,'img/index/slider_5.jpg','big');
INSERT INTO vip_carousal VALUES(null,'img/index/pro_show01.jpg','show');
INSERT INTO vip_carousal VALUES(null,'img/index/pro_show02.jpg','show');
INSERT INTO vip_carousal VALUES(null,'img/index/pro_show03.jpg','show');
INSERT INTO vip_carousal VALUES(null,'img/index/pro_show04.jpg','show');
INSERT INTO vip_carousal VALUES(null,'img/index/pro_show05.jpg','show');
INSERT INTO vip_carousal VALUES(null,'img/index/pro_show06.jpg','show');
INSERT INTO vip_carousal VALUES(null,'img/index/pro_show07.jpg','show');
INSERT INTO vip_carousal VALUES(null,'img/index/pro_show08.jpg','show');
INSERT INTO vip_carousal VALUES(null,'img/index/pro_show01.jpg','show');
INSERT INTO vip_carousal VALUES(null,'img/index/pro_show02.jpg','show');
INSERT INTO vip_carousal VALUES(null,'img/index/pro_show03.jpg','show');
INSERT INTO vip_carousal VALUES(null,'img/index/pro_show04.jpg','show');
INSERT INTO vip_carousal VALUES(null,'img/index/pro_show05.jpg','show');
INSERT INTO vip_carousal VALUES(null,
'img/index/pro_show06.jpg','show');

INSERT INTO vip_carousal VALUES(null,'img/index/pro_show01.jpg','show');
INSERT INTO vip_carousal VALUES(null,
'img/index/cake_buy01.jpg','buy');
INSERT INTO vip_carousal VALUES(null,'img/index/cake_buy02.jpg','buy');
INSERT INTO vip_carousal VALUES(null,'img/index/cake_buy01.jpg','buy');
INSERT INTO vip_carousal VALUES(null,'img/index/pro_type01.jpg','type');
INSERT INTO vip_carousal VALUES(null,'img/index/pro_type02.jpg','type');
INSERT INTO vip_carousal VALUES(null,'img/index/pro_type03.jpg','type');
INSERT INTO vip_carousal VALUES(null,'img/index/pro_type04.jpg','type');
INSERT INTO vip_carousal VALUES(null,'img/index/pro_type05.jpg','type');
INSERT INTO vip_carousal VALUES(null,'img/index/pro_type06.jpg','type');
#新闻表：编号 标题 日期 内容 vip_news
CREATE TABLE vip_news(
nid INT PRIMARY KEY AUTO_INCREMENT,
title VARCHAR(200),
data VARCHAR(50),
content VARCHAR(500)
);
SET NAMES GBK;
INSERT INTO vip_news VALUES(null,'<span class="glyphicon glyphicon-expand"></span>六一儿童节 丨 再不陪陪我，我就长大啦','2016-07-24','童年，就是奶奶亲手编的蒲扇躺在院子里乘凉的竹床上看天上的星星眨眼睛井水里浸泡的西瓜小店一毛钱的冰棍追赶嬉戏的小伙伴打着手电筒找小沟里泥鳅的大哥哥们满村飞舞发光的萤火虫以及空气中弥漫sixgod的好闻味道……倏忽之间，童年稍纵即逝..');

INSERT INTO vip_news VALUES(null,'<span class="glyphicon glyphicon-expand"></span>不是最好的都不敢给你','2016-06-24','底部有福利，懒人往下拉↓↓↓作为一个唯品客的铁粉你一定知道“蛋糕中的LV”这个称呼这个只通过粉丝口碑相传的蛋糕品牌却开启了安徽蛋糕进入天然奶油的品质时代，成为高品质蛋糕的领导者！最近想跟你说句不好意思，因为“她”希望你更懂“..');

INSERT INTO vip_news VALUES(null,'<span class="glyphicon glyphicon-expand"></span>520丨我买来哄你开心啊','2016-05-24','每一次你花的钱，都是为你和她想要的生活投票，你愿意为那些美好和浪漫付费，你们便值得那些美好和浪漫。母亲节，小唯在网上下单，送了妈妈一捧玫瑰和咱们唯品客家的蛋糕。我妈收到花后，幸福地发了朋友圈：这是我今生收到的第一束鲜花——..');

INSERT INTO vip_news VALUES(null,'<span class="glyphicon glyphicon-expand"></span>直到我成为了你，我才真的懂了你！','2016-04-24','出生时，我已经在母亲怀里舒服的睡过43200分钟母亲便再也没有了安静的睡眠。5岁时，我已经吃过母亲做的5745顿饭母亲都只是一个人饭后默默在厨房洗碗。10岁时，我已经被母亲的自行车载着去学校780次母亲的手渐渐因车把愈发粗糙。20岁时我已..');

INSERT INTO vip_news VALUES(null,'<span class="glyphicon glyphicon-expand"></span>【合肥亲子嘉年华】唯品客诚邀您参赛','2016-04-14','此次户外游戏活动由【合肥行者俱乐部】提供支持与指导，奖品除了有唯品客蛋糕代金卡，还有凤凰网和1+1贷等团体提供的丰富奖品唯品客蛋糕将招募20组亲子家庭免费参加合肥欢乐亲子嘉年华报名的亲们请备注好您的姓名、联系方式参与家庭总人数..');

INSERT INTO vip_news VALUES(null,'<span class="glyphicon glyphicon-expand"></span>【招募进行中】唯品客邀您与明星豪车一起送蛋糕哟！','2016-03-03','');

INSERT INTO vip_news VALUES(null,'<span class="glyphicon glyphicon-expand"></span>免费吃蛋糕，3月唯品客蛋糕女神撒娇节','2016-03-01','');

INSERT INTO vip_news VALUES(null,'<span class="glyphicon glyphicon-expand"></span>【唯品客】为宝能城业主庆生','2016-02-24','');

INSERT INTO vip_news VALUES(null,'<span class="glyphicon glyphicon-expand"></span>唯品客蛋糕与微爱剧组顾长卫、陈赫等主创人员一起为万达庆生','2011-12-24','12月23日下午4点，&#8205;“”“”“”“微爱剧组的主创人员顾长卫、陈赫等演员，在包河万达影城举办粉丝见面会，作为合肥高端蛋糕第一品牌的唯品客，再一次与各位明星共享幸福时光！陈赫本人比照片还要帅哎，小伙伴们有木有同感咧..');

#大众点评表 编号 用户编号 图片 内容 vip_comment
CREATE TABLE vip_comment(
comid INT PRIMARY KEY AUTO_INCREMENT,
uid INT,
compic VARCHAR(100),
content VARCHAR(500)
);
SET NAMES GBK;
INSERT INTO vip_comment VALUES(null,1,'img/index/cake_info01.jpg','<a href="#">中消协发布消费警示：人造奶油（植脂奶油）严..</a><br>中消协6月24号在“我的餐桌我做主，知情才能保安全”为主题的食品安全新闻发布会..');
INSERT INTO vip_comment VALUES(null,1,'img/index/cake_info02.jpg','<a href="#">转载：唯品客蛋糕—-简约而精致</a><br>每年过生日都要吃蛋糕，挑蛋糕是件让人头疼的事。合肥市场上这些蛋糕，看不腻吃都..');
INSERT INTO vip_comment VALUES(null,1,'img/index/cake_info01.jpg','<a href="#">中消协发布消费警示：人造奶油（植脂奶油）严..</a><br>中消协6月24号在“我的餐桌我做主，知情才能保安全”为主题的食品安全新闻发布会..');
INSERT INTO vip_comment VALUES(null,1,'img/index/cake_info02.jpg','<a href="#">转载：唯品客蛋糕—-简约而精致</a><br>每年过生日都要吃蛋糕，挑蛋糕是件让人头疼的事。合肥市场上这些蛋糕，看不腻吃都..');
#蛋糕资讯表 编号 图片 内容 vip_cakeInfo
CREATE TABLE vip_cakeInfo(
fid INT PRIMARY KEY AUTO_INCREMENT,
fpic VARCHAR(100),
fcontent VARCHAR(500)
);
SET NAMES GBK;
INSERT INTO vip_cakeInfo VALUES(null,'img/index/cake_info01.jpg','<a href="#">中消协发布消费警示：人造奶油（植脂奶油）严..</a><br>中消协6月24号在“我的餐桌我做主，知情才能保安全”为主题的食品安全新闻发布会..');
INSERT INTO vip_cakeInfo VALUES(null,'img/index/cake_info02.jpg','<a href="#">转载：唯品客蛋糕—-简约而精致</a><br>每年过生日都要吃蛋糕，挑蛋糕是件让人头疼的事。合肥市场上这些蛋糕，看不腻吃都..');
CREATE TABLE vip_apply(
id INT PRIMARY KEY AUTO_INCREMENT,
company VARCHAR(200),
address VARCHAR(200),
com_count INT,
department VARCHAR(200),
place VARCHAR(200),
take_count INT,
name VARCHAR(50),
tel VARCHAR(50),
phone VARCHAR(50)
);
CREATE TABLE vip_pic(
id INT PRIMARY KEY AUTO_INCREMENT,
pic VARCHAR(200),
content VARCHAR(800)
);
INSERT INTO vip_pic VALUES(null,'img/index/promotions_01.jpg','<h1>企业免费试吃活动</h1><h4>欧洲纯正乳脂奶油，甄选世界顶级食材</h4><p class="first">因为工作的忙碌，我们没有大把的事件享受闲庭信步的悠然<br>此时足够致命的下午茶就散发出巨大的魔力，<br/>不仅为忙碌繁重的工作带来一丝放松的惬意，更为生活增添了色彩。<br/>VipCake唯品客蛋糕招募免费试吃客，你公司的福利负责人知道吗？<br/>快快告诉他，为大家申请免费福利啦！</p> <p>申报活动条件 <br/>1 您的公司确定从未试吃过VipCake唯品客举办的任何试吃活动吗 <br/>2 您的公司确定本次试吃的人数在12人以上吗 <br/>3 您的公司确定可以提供试吃场所如茶水间，会议室或者休息室等多人共聚场所吗<br/>4 您的公司确定可以协助VipCake唯品客品牌专员准确完成品尝信息表吗<br/>5 您可以接受申请试吃的的时间是在网上申请提交后的3-6个工作日吗</p><p>如果这一切您都可以确定，那么恭喜您！您可以申请参加公司的免费试吃活动啦。<br/>您将有机会获得VipCake唯品客免费提供的浪漫上午茶or下午茶</p><p>如您的申请被我公司随机获取，我公司工作人员将将第一时间与您电话进行相关信息确认，谢谢！</p>');
INSERT INTO vip_pic VALUES(null,'img/index/promotions_02.jpg','');
INSERT INTO vip_pic VALUES(null,'img/index/promotions_03.jpg','');
INSERT INTO vip_pic VALUES(null,'img/index/vip_see_01.jpg','<p>见证成长，你我同行</P><P>WITNESS, YOU AND ME TOGETHER</p>');
INSERT INTO vip_pic VALUES(null,'img/index/vip_see_02.jpg','<p>见证成长，你我同行</P><P>WITNESS, YOU AND ME TOGETHER</p>');

CREATE TABLE vip_park(
id INT PRIMARY KEY AUTO_INCREMENT,
pic VARCHAR(200),
title VARCHAR(200),
date VARCHAR(50),
content VARCHAR(500)
);
INSERT INTO vip_park VALUES(null,'img/index/vip01.jpg','<span class="glyphicon glyphicon-expand"></span><a href="#">中消协发布消费警示：人造奶油（植脂奶油）严重危害健康</a>','2017-06-27','<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;中消协6月24号在“我的餐桌我做主，知情才能保安全”为主题的食品安全新闻发布会上，重申人造奶油（植脂奶油）蛋糕长期食用对身体伤害极大，会诱发肿瘤、乳腺癌、2型糖尿病、哮喘等疾病，孕妇食用会引发胎儿健康发育等一系列问题。');
INSERT INTO vip_park VALUES(null,'','<span class="glyphicon glyphicon-expand"></span><a href="#">中消协发布消费警示：人造奶油（植脂奶油）严重危害健康</a>','2013-06-27','<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;戚风坯蛋糕制作方法：一、工器具和原料的准备：烘焙工具：刮刀2把、粉筛、电动打蛋器、电子称、8寸活底蛋糕模、锡纸、脱模刀、分蛋器烘焙原料：鸡蛋5个、牛奶60克、色拉油60克、砂糖80克（蛋黄用30，蛋清用50）香草精数滴、低筋粉..');
INSERT INTO vip_park VALUES(null,'','<span class="glyphicon glyphicon-expand"></span><a href="#">中消协发布消费警示：人造奶油（植脂奶油）严重危害健康</a>','2013-08-27','<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;慕斯的英文是mousse，是一种奶冻式的甜点，可以直接吃或做蛋糕夹层。慕斯是从法语音译过来，最早出现在美食之都法国巴黎，蛋糕冷冻后食用其味无穷，成为蛋糕中的极品，一般在0-5度进行保存。她的出现符合了人们追求精致时尚，崇尚自然健康.');
INSERT INTO vip_park VALUES(null,'','<span class="glyphicon glyphicon-expand"></span><a href="#">中消协发布消费警示：人造奶油（植脂奶油）严重危害健康</a>','2013-05-27','<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;中古时期的欧洲人相信，生日是灵魂最容易被恶魔入侵的日子，所以在生日当天，亲人朋友都要齐聚身边给予祝福，并且送蛋糕以带来好运驱逐恶魔。因为制作蛋糕的原材料稀缺和珍贵，最初是只有王室和主教才有资格拥有的！人们相信蛋糕可以给自己..');
INSERT INTO vip_park VALUES(null,'','<span class="glyphicon glyphicon-expand"></span><a href="#">中消协发布消费警示：人造奶油（植脂奶油）严重危害健康</a>','2013-04-27','<br>慕斯的英文是mousse，是一种奶冻式的甜点，可以直接吃或做蛋糕夹层。慕斯是从法语音译过来，最早出现在美食之都法国巴黎，蛋糕冷冻后食用其味无穷，成为蛋糕中的极品，一般在0-5度进行保存。她的出现符合了人们追求精致时尚，崇尚自然健康.');
INSERT INTO vip_park VALUES(null,'','<span class="glyphicon glyphicon-expand"></span><a href="#">中消协发布消费警示：人造奶油（植脂奶油）严重危害健康</a>','2014-06-27','<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;如单纯光从字面上来说，大部分人可能会选择植物性奶油，而且国内曾有蛋糕商宣传“植脂淡奶油”无胆固醇作卖点，这实际上是对消费者的完全误导！你可以想象到，人工做出的接近奶油味道的替代品会一定要加入不同的食品添加剂。而植物淡奶油的...');
INSERT INTO vip_park VALUES(null,'','<span class="glyphicon glyphicon-expand"></span><a href="#">中消协发布消费警示：人造奶油（植脂奶油）严重危害健康</a>','2013-08-27','<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1）慕斯蛋糕2）乳脂奶油蛋糕3）巧克力蛋糕4）芝士蛋糕5）无糖蛋糕');
INSERT INTO vip_park VALUES(null,'','<span class="glyphicon glyphicon-expand"></span><a href="#">中消协发布消费警示：人造奶油（植脂奶油）严重危害健康</a>','2013-06-27','<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;慕斯的英文是mousse，是一种奶冻式的甜点，可以直接吃或做蛋糕夹层。慕斯是从法语音译过来，最早出现在美食之都法国巴黎，蛋糕冷冻后食用其味无穷，成为蛋糕中的极品，一般在0-5度进行保存。她的出现符合了人们追求精致时尚，崇尚自然健康.');
CREATE TABLE vip_detail(
did INT PRIMARY KEY AUTO_INCREMENT,
pid INT,
pic VARCHAR(50),
name VARCHAR(50),
type VARCHAR(50),
price DECIMAL(10,2),
sweet VARCHAR(50),
fresh VARCHAR(100),
material VARCHAR(200),
description VARCHAR(700),
count INT,
brand VARCHAR(50),
taste VARCHAR(50),
festival VARCHAR(50),
people VARCHAR(50)
);
SET NAMES GBK;
INSERT INTO vip_detail VALUES(null,1,'img/index/product_01','15.黑森林<b>Black Forest</b>','水果蛋糕 巧克力蛋糕 乳脂蛋糕',168.00,'★★★☆☆☆','0－4℃保藏12小时，10℃最佳食用','巧克力(比利時)、乳脂奶油(新西兰)、黑车厘子(美国)、樱桃白兰地(荷兰)、砂糖(韩国)','入口即溶的纯巧克力，让你分享那丰收的喜悦&nbsp;Share the joy and happiness with the pure indulgence of chocolate, melting in your mouth every single bite.',0,'唯品客vipCake','水果味','所有节日','所有人群');

INSERT INTO vip_detail VALUES(null,2,'img/index/product_02','30.心愿<b>My wish cake</b>','水果蛋糕 乳脂蛋糕',188.00,'★★★☆☆☆','0－4℃保藏12小时，5℃最佳食用','奶油(新西兰）、奶酪（法国）、车厘子（美国 ）、芒果（澳洲）、红心火龙果、薄荷叶','表面“Best Wish”文字可定制。褪去浮华、真诚而自然，或许是我们一直期待的节日模样，偶尔制造点惊喜，如这三层绵软的巧克力蛋糕，中间堆砌的智利车厘子、澳洲芒果、草莓，满满地甜蜜与幸福，生日，就是陪伴与欢聚的感动。Best wishes for you',0,'唯品客vipCake','水果味','所有节日','所有人群');

INSERT INTO vip_detail VALUES(null,3,'img/index/product_03','36.芒果拿破仑<b>Mango Napoleon</b>','水果蛋糕 乳脂蛋糕 ',188.00,'★★★☆☆☆','0－4℃保藏4小时，5℃最佳食用','奶油（新西兰）、黄油（法国）、卡仕达酱（马达加斯加）、蓝莓（智利）、蓝莓酱（智利）..','一咬下去，薄如蝉翼的酥皮便应声裂开，每吃一口，都像敲响一个音符。看得到的大片的芒果，放下矜持，善待自己，心花绽放。',0,'唯品客vipCake','水果味','所有节日','所有人群');

INSERT INTO vip_detail VALUES(null,4,'img/index/product_04','46.红丝绒<b>Red velvet</b>','乳脂蛋糕 芝士蛋糕',228.00,'★★★☆☆☆','0－4℃保藏12小时，5℃最佳食用','新西兰乳脂奶油、法国可可粉、美国蔓越莓、新西兰奶油奶酪','如玫瑰般高贵的颜色，如丝绒般的柔软口感，正如它那美妙的名字——红丝绒，让人回味无穷、遐想连篇。微醇的可可芬芳与奶油的丝滑倾尽缠绵，犹如爱情的滋味。而当你看到它时，无论是外表和内在，都会给你惊喜。',0,'唯品客vipCake','芝士味','情人节','情侣');

INSERT INTO vip_detail VALUES(null,5,'img/index/product_05','04.黑白慕斯　<b>Dark and White</b>','慕斯蛋糕 巧克力蛋糕 ',168.00 ,'★★★☆☆☆','0－4℃保藏12小时，5℃最佳食用','白巧克力(比利时)、乳脂奶油(新西兰)、黑巧克力(比利時)、可可粉(法国)、君度酒(法国)','淡苦的可可粉和香滑的甜白巧克力慕斯，独特的黄金配比筑就了让你回味无穷的美味。。。Dark coco harmonised with sweet smooth white chocolate mousse, the unique balance will keep the taste last long.',0,'唯品客vipCake','巧克力味','所有节日','所有人群');

INSERT INTO vip_detail VALUES(null,6,'img/index/product_06','02.百利甜情人　Baileys Lover','水果蛋糕 巧克力蛋糕 乳脂蛋糕',168.00,'★★★☆☆☆','0－4℃保藏12小时，10℃最佳食用','巧克力(比利時)、乳脂奶油(新西兰)、黑车厘子(美国)、樱桃白兰地(荷兰)、砂糖(韩国)','新西兰纯乳脂奶油中溶入独特玫瑰浆，诠释那甜蜜之爱！New Zealand butter cream melt with distinctive rose syrup, this is how love should be interpreted.',0,'唯品客vipCake','水果味','所有节日','所有人群');

INSERT INTO vip_detail VALUES(null,7,'img/index/product_07','03.朗姆<b>Rum Cheese Cake</b>','水乳脂蛋糕 芝士蛋糕',168.00 ,'★★☆☆☆☆','0－4℃保藏12小时，5℃最佳食用','乳脂奶油(新西兰)、芝士(新西兰)、朗姆酒、柠檬(美国)、砂糖(韩国)',' 纯正的牙买加朗姆酒，溶进那来自新西兰乳脂奶油制成的白玫瑰，让那份纯洁的爱更加醇厚而悠长！White roses made from the New Zealand cream cheese flavoured with authentic Jamaican rum,  this is the way the noble love is deepened and lasting.',0,'唯品客vipCake','芝士味','所有节日','所有人群');

INSERT INTO vip_detail VALUES(null,8,'img/index/product_08','20.提拉米苏　<b>Tiramisu</b>','慕斯蛋糕',199.00,'★★★☆☆☆','0－4℃保藏4小时，5℃最佳食用','Mascarpone、奶酪(新西兰)、咖啡酒(墨西哥)、咖啡(肯尼亚)、可可粉(法国)','芝士的香滑、咖啡的苦涩，成就意式甜点的象征！Silky cheese, bitter coffee and the sharp rum signify the triumph of Italian dessert.',0,'唯品客vipCake','芝士味','所有节日','所有人群');

INSERT INTO vip_detail VALUES(null,9,'img/index/product_09','05.栗蓉醇香<b>Chestnut Cream</b>','乳脂蛋糕',168.00,'★★★☆☆☆','保鲜条件：0－4℃保藏12小时15℃最佳食用','板栗(中国)、乳脂奶油(新西兰)、黄油(比利时)、砂糖(韩国)','纯手工打磨的新鲜栗子浆，特有的坚果清香和恰到好处的淡奶油，让我们回忆。。。。Hand made fresh chestnut puree , the distinctive nutty flavour,and the subtle cream taste,let us remember the experience.',0,'唯品客vipCake','坚果味','所有节日','所有人群');

INSERT INTO vip_detail VALUES(null,10,'img/index/product_10','27.榴·芒<b>DURIAN &amp; MANGO</b>','慕斯蛋糕 水果蛋糕',99.00,'★★★☆☆☆','0－4℃3小时内食用口味最佳，5℃最佳食用','榴莲（泰国）、芒果（澳洲及台湾）、巧克力（比利时）、新西兰奶油、砂糖(韩国)','没有哪种爱憎像这样强烈，令你窒息，或令你狂喜。唯品客从不会与季节失约！<br>No one has such strong, smother you, or your ecstasy. Season and never stood up for VipCake!',0,'唯品客vipCake','水果味','情人节','情侣');

INSERT INTO vip_detail VALUES(null,11,'img/index/product_11','21.澳洲芒果<b>Mango Mousse</b>','慕斯蛋糕 水果蛋糕',188.00,'★★★☆☆☆','0－4℃保藏4小时，5℃最佳食用','芒果（澳洲、中国台湾）、乳脂奶油（新西兰）、白巧克力（比利时）','芒果的香甜溶入新西兰乳脂奶油，香醇与爽滑让味蕾得到充分的享受！ Sweet mango melt into New Zealand cream , the mellow and smoothness your palate will thoroughly enjoy.',0,'唯品客vipCake','水果味','所有节日','所有人群');

INSERT INTO vip_detail VALUES(null,12,'img/index/product_12','08.蓝莓香脆　<b>Blueberry Chips</b>','水果蛋糕 乳脂蛋糕 芝士蛋糕',188.00,'★★☆☆☆☆','0－4℃保藏12小时，5℃最佳食用','蓝莓鲜果、北美蓝莓果自制的蓝莓酱、乳脂奶油(法国)、芝士(新西兰)','精选新鲜的蓝莓的清爽，与法式薄脆片，内层轻乳芝士的松软，层层美味，出乎意料！ It’s time for a Blueberries　harvest season, Premium fresh blueberry jam atop a joyous mountain of creamy cheesecake, your worries popping like podgy blueberries in your mouth.',0,'唯品客vipCake','水果味','所有节日','所有人群');

INSERT INTO vip_detail VALUES(null,13,'img/index/product_13','28.福果　<b>FUGUO</b>','水果蛋糕 乳脂蛋糕 ',188.00,'★★★☆☆☆','2－4℃3小时内食用口味最佳，5℃最佳食用','奶油(新西兰）、奶酪（法国）、蔓越橘干（美国 ）、覆盆子 （法国）、芒果（澳洲）、车..',' 福气满满，果然不同！Blessing full, and indeed as expected',0,'唯品客vipCake','水果味','所有节日','所有人群');

INSERT INTO vip_detail VALUES(null,14,'img/index/product_14','16.福瑞<b>Fresh Fruit</b>','水果蛋糕 乳脂蛋糕 ',168.00,'★★★☆☆☆','0－4℃保藏4小时，15℃最佳食用','乳脂奶油（新西兰）、白巧克力（比利时）、有机草莓、樱桃（美国)、黄桃（南非）、绿猕..','有机的新鲜水果镶嵌在淡淡椰香，的巧克力中央，香甜阵阵拂过。。。。Organic fresh fruit, delicate coconut flavoured chocolate,you will not miss this sweet aroma.',0,'唯品客vipCake','水果味','所有节日','所有人群');

INSERT INTO vip_detail VALUES(null,15,'img/index/product_15','23.榛子巧克力　<b>Hazelnut Affair</b>','巧克力蛋糕 乳脂蛋糕 坚果蛋糕',168.00,'★★★☆☆☆','0－4℃保藏24小时，5℃最佳食用','榛子(美国/土耳其)、黑巧克力(比利時)、乳脂奶油(新西兰)、砂糖(韩国)','精挑细选的土耳其榛子手工磨碎，极品的比利时巧克力,执着那份精致！Hand grounded exclusive Turkish',0,'唯品客vipCake','巧克力·坚果味','所有节日','所有人群');

INSERT INTO vip_detail VALUES(null,16,'img/index/product_16','18.黑格　<b>Haig</b>','慕斯蛋糕 巧克力蛋糕',168.00,'★★★☆☆☆','0－4℃保藏12小时，10℃最佳食用','黑巧克力(比利時)、乳脂奶油(新西兰)、白兰地(法国)','感受顶级黑巧克力，献给最尊贵的品尝家。。Experience the superme dark chocolate, the cake exclusively for the most critical food critic.',0,'唯品客vipCake','巧克力味','所有节日','所有人群');

INSERT INTO vip_detail VALUES(null,17,'img/index/product_17','07.卡布奇诺　<b>Cappuccino Cake</b>','乳脂蛋糕 ',168.00,'★★★☆☆☆','0－4℃保藏12小时，5℃最佳食用','乳脂奶油(新西兰)、咖啡粉(哥伦比亚)、咖啡豆(肯尼亚)、咖啡酒(墨西哥)、芝士(新西兰)、..','谁能说咖啡不能爱上奶油，天生的一对？Who says that coffee does not go with cream?Are not they the perfect match? ',0,'唯品客vipCake','奶油味','情人节','情侣');

INSERT INTO vip_detail VALUES(null,18,'img/index/product_18','19.杏仁淡奶　<b>Almond Cream</b>','乳脂蛋糕 ',168.00,'★★★☆☆☆','0－4℃保藏12小时，15℃最佳食用','杏仁(美国)、乳脂奶油(新西兰)、黄油(比利时)、砂糖(韩国)','烘烤出的杏仁片， 混合新西兰乳脂奶油的香，如此美味怎么抵挡诱惑？Roasted almond slices dally with pure New Zealand cream, like an awkward philosophical question followed by a sensual Eureka moment. How can I do？',0,'唯品客vipCake','奶油味','所有节日','所有人群');

INSERT INTO vip_detail VALUES(null,19,'img/index/product_19','26.抹茶雪域<b>Maccha snows</b>','慕斯蛋糕',168.00,'★★★☆☆☆','2－4℃3小时内食用口味最佳，5℃最佳食用','抹茶粉（日本）、巧克力（比利时与瑞士的妙搭）、香草（马达加斯加）、乳脂奶油（新西兰..','享受自然的茶意翠语，品尝抹茶的精细，出乎意料，是清凉的触感。Enjoy the natural meaning of green tea, taste tea fine, exceeding one is expectations, is cool to the touch.',0,'唯品客vipCake','抹茶味','所有节日','所有人群');

INSERT INTO vip_detail VALUES(null,20,'img/index/product_20','06.可瑞斯<b>Crisp</b>',' 芝士蛋糕',168.00,'★★★☆☆☆','0－4℃保藏12小时，10℃最佳食用','芝士(新西兰)、乳脂奶油(新西兰)、黄油(新西兰)、白核桃(云南)','口感细腻滑爽，芝士口味香浓诱人，谁能动我的奶酪？Silky and delicate, mellow and seductive, who dare to move my cheesecake?',0,'唯品客vipCake','奶油味','所有节日','所有人群');

INSERT INTO vip_detail VALUES(null,21,'img/index/product_21','24.芝士斯诺<b>Cheese Snow Cake</b>','乳脂蛋糕 芝士蛋糕 ',168.00,'★★★☆☆☆','0－4℃保藏12小时，10℃最佳食用','乳脂奶油(新西兰)、芝士(新西兰)、黄油(新西兰)、白巧克力(比利时)','清心的新西兰奶油芝士，醇厚的滋味，入口即化的比利时白巧力，如一缕轻轻的阳光，悄悄抹去心头的烦闷。一块蛋糕，与喜爱的那个人分享，一切都是那样的美好！ The pure New Zealand cream cheese, mellow taste, Belgian White Chocolate, such as a ray of light of the sun, quietly wiped my heart boredom. A piece of cake, to share with the people love, everything is so beautiful',0,'唯品客vipCake','芝士味','所有节日','所有人群');

INSERT INTO vip_detail VALUES(null,22,'img/index/product_22','10.榴莲暗香　<b>Durian</b>','水果蛋糕 巧克力蛋糕 乳脂蛋糕',168.00,'★★★☆☆☆','0－4℃保藏12小时，10℃最佳食用','白巧克力（比利时）、榴莲（泰国金枕头）、乳脂奶油（新西兰）',' 巧克力包裹着榴莲浆，甜蜜又自然的美味！Chocolate wrapped with durian puree flavoured coconut--it is sweet, natural and delicious.',0,'唯品客vipCake','水果味','所有节日','所有人群');

INSERT INTO vip_detail VALUES(null,23,'img/index/product_23','01.核桃雪域　<b>Hickory Snow</b>','乳脂蛋糕 坚果蛋糕',168.00,'★★★☆☆☆','0－4℃保藏12小时，10℃最佳食用','乳脂奶油(新西兰)、白核桃(云南)、黄油(比利时)、砂糖(韩国)','精选云南白核桃经特别烤制，满洒在新西兰纯乳脂奶油中享受自然的礼物！English cream cheese topped with exclusively selected and roasted white walnut from Yunnan, let us enjoy the gift from nature.',0,'唯品客vipCake','坚果味','所有节日','所有人群');

INSERT INTO vip_detail VALUES(null,24,'img/index/product_24','14.布朗尼　<b>Brownie Cake</b>','巧克力蛋糕 乳脂蛋糕 坚果蛋糕 ',168.00,'★★★★★☆','0－4℃保藏12小时，10℃最佳食用','黑巧克力(比利時)、朗姆酒(牙买加)、乳脂奶油(新西兰)、开心果(美国)、榛子(美国)、腰果..',' 坚果小粒加上浓香的可可，味蕾寻觅到香脆与厚重！Crushed nuts and rich coco, you will mostly enjoy the cripiness and richness.',0,'唯品客vipCake','坚果味','所有节日','所有人群');

INSERT INTO vip_detail VALUES(null,25,'img/index/product_25','12.松子仁　<b>Pine Nut Cake</b>',' 乳脂蛋糕 坚果蛋糕',168.00,'★★★☆☆☆','0－4℃保藏12小时，10℃最佳食用','松子(俄罗斯)、乳脂奶油(新西兰)、可可粉(法国)、砂糖(韩国)','香脆的松仁与甜滑细腻的奶油，洒上淡苦的可可粉，形成甜苦交融的独特口感。。。Crunchy pinenut and sweet silky cream, topped with dark coco powder--the unique bitter sweet taste you are looking forward to.',1,'唯品客vipCake','坚果味','所有节日','所有人群');

INSERT INTO vip_detail VALUES(null,26,'img/index/product_26','11.心语　<b>Heart Talk</b>','巧克力蛋糕 乳脂蛋糕 ',168.00,'★★★☆☆☆','0－4℃保藏12小时，10℃最佳食用','白巧克力(比利时)、乳脂奶油(新西兰)、椰蓉(菲律宾)、黄油(新西兰)','淡香的椰蓉托起白巧克力片，至真至纯，美味不容错过！Delicate coconut flakes with white chocolate slices, you should not miss this pure indulgence.',0,'唯品客vipCake','巧克力味','所有节日','所有人群');

INSERT INTO vip_detail VALUES(null,27,'img/index/product_27','31.卡布奇诺（无糖）　<b>Cappuccino Cake</b>','无糖蛋糕 ',168.00,'★★★☆☆☆','0－4℃保藏12小时，10℃最佳食用','乳脂奶油(新西兰)、咖啡粉(哥伦比亚)、咖啡豆(肯尼亚)、咖啡酒(墨西哥)、芝士(新西兰)、..','谁能说咖啡不能爱上奶油，天生的一对？ Who says that coffee does not go with cream?Are not they the perfect match?',0,'唯品客vipCake','奶油味','所有节日','所有人群');

INSERT INTO vip_detail VALUES(null,28,'img/index/product_28','32.松子仁（无糖）　<b>Pine Nut Cake</b>','无糖蛋糕',168.00,'★★★☆☆☆','0－4℃保藏12小时，10℃最佳食用','松子(俄罗斯)、乳脂奶油(新西兰)、可可粉(法国)、木糖醇','香脆的松仁与甜滑细腻的奶油，洒上淡苦的可可粉，形成甜苦交融的独特口感。。。Crunchy pinenut and sweet silky cream, topped with dark coco powder--the unique bitter sweet taste you are looking forward to.',0,'唯品客vipCake','奶油味','所有节日','所有人群');

INSERT INTO vip_detail VALUES(null,29,'img/index/product_29','37.童趣　<b>Childhood</b>','水果蛋糕 乳脂蛋糕',168.00,'★★★☆☆☆','0－4℃保藏12小时，10℃最佳食用','奶油(新西兰）、砂糖(韩国)、芒果（澳洲及台湾）、巧克力脆豆（比利时）、棉花糖、黄油..','童年的时光一纵即逝，和宝贝一起开启创意之旅，跨越彩虹吧',0,'唯品客vipCake','水果味','儿童节','儿童');

INSERT INTO vip_detail VALUES(null,30,'img/index/product_30','60.Miss喵　<b>Miss Miao</b>',' 慕斯蛋糕 水果蛋糕 巧克力蛋糕 ',168.00,'★★★☆☆☆','0－4℃保藏12小时，10℃最佳食用','奶油(新西兰）、砂糖(韩国)、芒果（澳洲及台湾）、巧克力（比利时）','冰激凌口感搭配清爽芒果冻，过一个可爱的粉色儿童节。魔法一施，Miss喵便化作舌尖的精灵，跳跃在每个小朋友的梦中。',0,'唯品客vipCake','水果味','儿童节','儿童');

INSERT INTO vip_detail VALUES(null,31,'img/index/product_31','61.童真　<b>Childlike</b>','水果蛋糕 巧克力蛋糕',168.00,'★★★☆☆☆','0－4℃保藏12小时，10℃最佳食用','奶油(新西兰）、砂糖(韩国)、芒果（澳洲及台湾）、巧克力（比利时）、巧克力豆','比利时黑巧克力与奶油慕斯的经典组合，搭配澳洲芒果夹心，口感醇厚而不甜腻，上层彩色巧克力豆更是童真可爱~',0,'唯品客vipCake','水果味','儿童节','儿童');

INSERT INTO vip_detail VALUES(null,32,'img/index/product_32','59.甜蜜年轮　Baumkuchen','水果蛋糕 巧克力蛋糕 乳脂蛋糕',168.00,'★★★☆☆☆','0－4℃保藏12小时，10℃最佳食用','巧克力(比利時)、乳脂奶油(新西兰)、黑车厘子(美国)、樱桃白兰地(荷兰)、砂糖(韩国)','覆盆子果酱与戚风坯完美结合唤醒内心最柔软的记忆，重温旧时温情时刻，抚摸甜蜜年轮。Raspberry jam and the perfect combination of chiffon cake wake up the heart of the most soft memories, relive the warmth moments.',0,'唯品客vipCake','水果味','所有节日','所有人群');

INSERT INTO vip_detail VALUES(null,33,'img/index/product_33','09.莓之恋　Love of Strawberry','水果蛋糕 巧克力蛋糕 乳脂蛋糕',168.00,'★★★☆☆☆','0－4℃保藏12小时，10℃最佳食用','巧克力(比利時)、乳脂奶油(新西兰)、黑车厘子(美国)、樱桃白兰地(荷兰)、砂糖(韩国)','可口的草莓和奶香浓郁的新西兰奶油结合，让你无法停口！When you are encountering the marriage of fresh strawberry and creamy New Zealand butter, you simply can not stop .',0,'唯品客vipCake','水果味','所有节日','所有人群');

INSERT INTO vip_detail VALUES(null,34,'img/index/product_34','44.草莓轻芝士　<b>Strawberry Cheesecake</b>','水果蛋糕 乳脂蛋糕 芝士蛋糕',168.00,'★★★☆☆☆','0－4℃保藏12小时，10℃最佳食用','新鲜有机草莓、乳脂奶油(新西兰)、芝士(新西兰)、黄油(新西兰)、坚果酥底、砂糖(韩国)','芝士雪域之上的大片草莓，如同阿尔卑斯山下鲜花绽放，一面酸甜跳跃，一面醇香敦厚，层次分明有融为一体，一品难忘的滋味就该是如此吧 Large strawberry on the cheese snow, like the flowers blooming side of Alps, sweety and sour taste integrated with mellow cheeses, you deserve the unforgettable taste……',0,'唯品客vipCake','水果味','所有节日','所有人群');
