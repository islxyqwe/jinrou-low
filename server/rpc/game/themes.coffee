﻿###
themes=
    danganronpa:
        name:String
        opening:String
        vote:String
        sunrise:String
        sunset:String
        icon:String(URL)
        background_color:"black"
        color:"rgb(255,0,166)"
        skins:
            (some id):
                avatar:String(URL)
                name:String
                prize:String
        skin_length:55
        lockable:false
        isAvailable:->
            date=new Date
            month=date.getMonth()
            d=date.getDate()
            if month==8 && 1<=d<=15 #9月1日~15日
                true
            else
                false
###

module.exports = 
    danganronpa:
        name:"弹丸论破"
        opening:"呜噗噗噗噗，我是校长黑白熊kuma"
        vote:"期待已久的学级裁判"
        sunrise:"那么今天也请各位打起精神加油吧"
        sunset:"你们这些家伙，互相残杀吧kuma"
        icon:"dgrp_icon.png"
        background_color:"black"
        color:"rgb(255,0,166)"
        skins:
            owari_akane:
                avatar:'http://i63.tinypic.com/e64rag.jpg'
                name:'终里赤音'
                prize:'超高校级的体操选手'
            asahina_aoi:
                avatar:'http://i63.tinypic.com/28lfjts.jpg'
                name:'朝日奈葵'
                prize:'超高校级的游泳选手'
            togami_byakuya:
                avatar:'http://i64.tinypic.com/2rcmiy8.jpg'
                name:'十神白夜'
                prize:'超高校级的贵公子'
            celestia_ludenberck:
                avatar:'http://i63.tinypic.com/ixusyd.jpg'
                name:'赛蕾丝媞亚·鲁丁贝鲁格'
                prize:'超高校级的赌徒'
            nanami_chiaki:
                avatar:'http://i67.tinypic.com/sc5dmr.jpg'
                name:'七海千秋'
                prize:'超高校级的游戏玩家'
            fujisaki_chihiro:
                avatar:'http://i66.tinypic.com/2qk1guv.jpg'
                name:'不二咲千寻'
                prize:'超高校级的程序员'
            yukizome_chisa:
                avatar:'http://i64.tinypic.com/rvk5r7.jpg'
                name:'雪染千纱'
                prize:'元·超高校级的家政妇'
            hagakure_yasuhiro:
                avatar:'http://i65.tinypic.com/63wza1.jpg'
                name:'叶隐康比吕'
                prize:'超高校级的占卜师'
            bandai_daisaku:
                avatar:'http://i66.tinypic.com/tag9l3.jpg'
                name:'万代大作'
                prize:'元·超高校级的农民'
            kuzuryu_fuyuhiko:
                avatar:'http://i63.tinypic.com/ifa6pz.jpg'
                name:'九头龙冬彦'
                prize:'超高校级的黑道'
            gureto_gozu:
                avatar:'http://i64.tinypic.com/24q6a86.jpg'
                name:'格雷特·戈兹'
                prize:'元·超高校级的摔跤手'
            tanaka_gundam:
                avatar:'http://i67.tinypic.com/svh2ww.jpg'
                name:'田中眼蛇梦'
                prize:'超高校级的饲育委员'
            hinata_hajime:
                avatar:'http://i66.tinypic.com/2v0jybs.jpg'
                name:'日向创'
                prize:'超高校级的？？？'
            yamada_hifumi:
                avatar:'http://i65.tinypic.com/30crlhv.jpg'
                name:'山田一二三'
                prize:'超高校级的同人作家'
            saionji_hiyoko:
                avatar:'http://i67.tinypic.com/2ly0c9t.jpg'
                name:'西园寺日寄子'
                prize:'超高校级的日本舞蹈家'
            mioda_ibuki:
                avatar:'http://i66.tinypic.com/2mg7c6v.jpg'
                name:'澪田唯吹'
                prize:'超高校级的轻音部'
            madarai_isshiki:
                avatar:'http://i67.tinypic.com/25fn0jo.jpg'
                name:'斑井一式'
                prize:'超高校级的保镖'
            kemuri_jataro:
                avatar:'http://i65.tinypic.com/34g1r7m.jpg'
                name:'烟蛇太郎'
                prize:'超小学级的美工时间'
            enoshima_junko:
                avatar:'http://i67.tinypic.com/wl3u3s.jpg'
                name:'江之岛盾子'
                prize:'超高校级的辣妹'
            sakakura_juzo:
                avatar:'http://i63.tinypic.com/30jsgwp.jpg'
                name:'逆藏十三'
                prize:'元·超高校级的拳击手'
            kamukura_izuru:
                avatar:'http://i66.tinypic.com/odbpj.jpg'
                name:'神座出流'
                prize:'超高校级的希望'
            soda_kazuichi:
                avatar:'http://i65.tinypic.com/2rght14.jpg'
                name:'左右田和一'
                prize:'超高校级的机械师'
            ishimaru_kiyotaka:
                avatar:'http://i64.tinypic.com/t9uxza.jpg'
                name:'石丸清多夏'
                prize:'超高校级的风纪委员'
            naegi_komaru:
                avatar:'http://i65.tinypic.com/hsnxis.jpg'
                name:'苗木困'
                prize:''
            utugi_kotoko:
                avatar:'http://i63.tinypic.com/24fidrq.jpg'
                name:'空木言子'
                prize:'超小学级的学艺时间'
            kirigiri_kyoko:
                avatar:'http://i66.tinypic.com/2r4l8xi.jpg'
                name:'雾切响子'
                prize:'超高校级的？？？'
            munakata_kyosuke:
                avatar:'http://i64.tinypic.com/5ues6c.jpg'
                name:'宗方京助'
                prize:'元·超高校级的学生会长'
            kuwata_leon:
                avatar:'http://i68.tinypic.com/adkn85.jpg'
                name:'桑田怜恩'
                prize:'超高校级的棒球选手'
            koizumi_mahiru:
                avatar:'http://i68.tinypic.com/1tahhy.jpg'
                name:'小泉真昼'
                prize:'超高校级的摄影师'
            naegi_makoto:
                avatar:'http://i68.tinypic.com/34spbhv.jpg'
                name:'苗木诚'
                prize:'超高校级的幸运'
            daimon_masaru:
                avatar:'http://i67.tinypic.com/1zqrbds.jpg'
                name:'大门大'
                prize:'超小学级的体育时间'
            gekkogahara_miaya:
                avatar:'http://i67.tinypic.com/24y9x5d.jpg'
                name:'月光原美彩'
                prize:'元·超高校级的治疗师'
            tsumiki_mikan:
                avatar:'http://i64.tinypic.com/2i1li06.jpg'
                name:'罪木蜜柑'
                prize:'超高校级的保健委员'
            monaka:
                avatar:'http://i68.tinypic.com/9ptgzs.jpg'
                name:'最中'
                prize:'超小学级的学活时间'
            owada_mondo:
                avatar:'http://i64.tinypic.com/hw0tae.jpg'
                name:'大和田纹土'
                prize:'超高校级的暴走族'
            ikusaba_mukuro:
                avatar:'http://i66.tinypic.com/2qiwpjd.jpg'
                name:'战刃骸'
                prize:'超高校级的军人'
            shingetsu_nagisa:
                avatar:'http://i66.tinypic.com/2afirnd.jpg'
                name:'新月渚'
                prize:'超小学级的社会时间'
            komaeda_nagito:
                avatar:'http://i68.tinypic.com/i1zm9s.jpg'
                name:'狛枝凪斗'
                prize:'超高校级的幸运'
            nidai_nekomaru:
                avatar:'http://i67.tinypic.com/2rep9fs.jpg'
                name:'弍大猫丸'
                prize:'超高校级的经理人'
            pekoyama_peko:
                avatar:'http://i67.tinypic.com/2ex0ho2.jpg'
                name:'边古山佩子'
                prize:'超高校级的剑道家'
            ando_ruruka:
                avatar:'http://i68.tinypic.com/qzpu6o.jpg'
                name:'安藤流流歌'
                prize:'元·超高校级的点心师'
            otonashi_ryoko:
                avatar:'http://i66.tinypic.com/c42vp.jpg'
                name:'音无凉子'
                prize:''
            otearai_ryota:
                avatar:'http://i67.tinypic.com/24zhbm9.jpg'
                name:'御手洗亮太'
                prize:'元·超高校级的动画师'
            unknown_person:
                avatar:'http://i67.tinypic.com/1y32hu.jpg'
                name:'???'
                prize:'超高校级的诈欺师'
            okami_sakura:
                avatar:'http://i66.tinypic.com/28r1lzo.jpg'
                name:'大神樱'
                prize:'超高校级的格斗家'
            maizono_sayaka:
                avatar:'http://i63.tinypic.com/dcu1qb.jpg'
                name:'舞园沙耶香'
                prize:'超高校级的偶像'
            kimura_seko:
                avatar:'http://i64.tinypic.com/15dw211.jpg'
                name:'忌村静子'
                prize:'元·超高校级的药剂师'
            genocider_sho:
                avatar:'http://i65.tinypic.com/3310dp3.jpg'
                name:'灭族者翔'
                prize:'超高校级的杀人鬼'
            sonia_nevermind:
                avatar:'http://i67.tinypic.com/znx3x1.jpg'
                name:'索尼娅·内瓦曼德'
                prize:'超高校级的王女'
            izayoi_sonosuke:
                avatar:'http://i68.tinypic.com/2872iwl.jpg'
                name:'十六夜惣之助'
                prize:'元·超高校级的铁匠'
            murasame_soshun:
                avatar:'http://i67.tinypic.com/2rmqbu9.jpg'
                name:'村雨早春'
                prize:'超高校级的学生会长'
            hanamura_teruteru:
                avatar:'http://i64.tinypic.com/110cdom.jpg'
                name:'花村辉辉'
                prize:'超高校级的厨师'
            fukawa_toko:
                avatar:'http://i65.tinypic.com/35a6n0n.jpg'
                name:'腐川冬子'
                prize:'超高校级的文学少女'
            matsuda_yasuke:
                avatar:'http://i64.tinypic.com/2usv8cy.jpg'
                name:'松田夜助'
                prize:'超高校级的神经学者'
            kamishiro_yuto:
                avatar:'http://i66.tinypic.com/2z7ljma.jpg'
                name:'神代优兔'
                prize:'超高校级的谍报员'
        skin_length:55
        lockable:false
        isAvailable:->
            date=new Date
            month=date.getMonth()
            d=date.getDate()
            if month==8 && 1<=d<=15 #9月1日~15日
                true
            else
                false