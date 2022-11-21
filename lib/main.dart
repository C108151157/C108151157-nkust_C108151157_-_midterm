import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';


final player=AudioPlayer();

void main() {
  runApp(MaterialApp(
    home: myApp(),
  ));
}

class myApp extends StatefulWidget {
  @override
  Screen0 createState() => Screen0();
}
class Screen0 extends State<myApp>{
  String imageLink='images/h1_1.png';
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(centerTitle: true,title: Text('C108151157 蕭惠蜜',style:TextStyle(fontWeight: FontWeight.w700,)),backgroundColor: Colors.pink[100]),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:<Widget>[
            Container(
              height:185,
              width: 200,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage('images/in1.gif'),
                                       fit:BoxFit.cover),
              ),
            ),
            SizedBox(height: 15,),
            ElevatedButton(
                onPressed:(){
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>MyApp()));
                },
                child: Text("了解更多",style: TextStyle(fontSize:20,), ),
                style:ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.pink.shade200),)
            ),
          ],
        ),
      ),
    );

  }
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  final tabs=[
    Center(child: screen1()),
    Center(child: screen2()),
    Center(child: screen3()),
    Center(child: screen4()),
  ];

  int _previousIndex=0;
  int _currentindex=0;


  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(centerTitle: true,title: Text('期中作業',style:TextStyle(fontWeight: FontWeight.w700,)),backgroundColor: Colors.pink[100]),
        body: tabs[_currentindex],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.pink[100],
          selectedItemColor: Colors.pink[500],
          selectedFontSize: 12.0,
          unselectedItemColor: Colors.pink[200],
          unselectedFontSize: 12.0,
          iconSize: 40.0,
          currentIndex: _currentindex,
          items: [
            BottomNavigationBarItem(icon: _currentindex==0? Image.asset("images/h1_2.png",width: 40, height: 40,):Image.asset("images/h1_1.png",width: 32, height: 32,),
              label: '介紹',),//account_circle_outlined
            BottomNavigationBarItem(icon: _currentindex==1? Image.asset("images/h2_2.png",width: 40, height: 40,):Image.asset("images/h2_1.png",width: 35, height: 35,),
              label: '經歷',),//account_balance_rounded
            BottomNavigationBarItem(icon: _currentindex==2? Image.asset("images/h3_2.png",width: 40, height: 40,):Image.asset("images/h3_1.png",width: 35, height: 35,),
              label: '計畫',),//access_time_sharp
            BottomNavigationBarItem(icon: _currentindex==3? Image.asset("images/h4_2.png",width: 40, height: 40,):Image.asset("images/h4_1.png",width: 35, height: 35,),
              label: '專案方向',),//account_balance_wallet_rounded
          ],
          onTap: (index) { setState(() {
            _previousIndex=_currentindex;
            _currentindex=index;
            if (index==0) {
              if (_previousIndex == _currentindex) player.resume();
              player.play(AssetSource("m1.mp3"));
            };
            if (index==1) {
              if (_previousIndex == _currentindex) player.resume();
              player.play(AssetSource("m2.mp3"));
            };
            if (index==2) {
              if (_previousIndex == _currentindex) player.resume();
              player.play(AssetSource("m3.mp3"));
            };
            if (index==3) {
              if (_previousIndex == _currentindex) player.resume();
              player.play(AssetSource("m4.mp3"));
            };
              {
              player.stop();
            }
          });
          },
        ),
      ),
    );
  }
}

class screen1 extends StatelessWidget {

  final String s1='我們家是民主式教養，有從事汽車板金烤漆的老闆爸爸，以及'
      '全力輔助爸爸工作的家庭主婦媽媽，還有跟著二伯父做木工裝潢的哥哥。爸爸、'
      '媽媽總是告訴我：「妳把自己的事情做好，照顧好自己，不要讓父母擔心這樣就好。\n」'
      '一直以來都很感謝他們不曾給我課業上的壓力，也給予我最好的資源，讓我可以豪無煩惱的讀書。'
      '\n生在這個家庭的我，感到非常的驕傲，我們一家四口感情很好，就像朋友一樣，但也不失應'
      '有的尊重\n。很喜歡跟家人分享在學校裡的大小事，他們不僅是一個很棒的聆聽者，同時也會給我'
      '許多想法及建議。';

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(

      child: Column(
        children:<Widget>[ //先放個標題
          SizedBox(height: 40,),

          CircleAvatar(
            radius:100,
            backgroundImage: AssetImage('images/m2.jpg'),

          ),
          Padding(padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
            child: Text("個人簡介",
                style: TextStyle(fontSize:40,
                  fontWeight:FontWeight.bold,color: Colors.pink[200],)),
          ),
          Container(
            width:350,
            padding: EdgeInsets.all(18),
            margin: EdgeInsets.fromLTRB(30, 0, 30, 20),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.lightBlue.shade300, width: 3),
              borderRadius: BorderRadius.circular(20),
              boxShadow: [ BoxShadow(color: Colors.lightBlue.shade100,
                  offset: Offset(6, 6)),
              ],),
            child:Text("姓名：蕭惠蜜\n綽號：蕭蜜、肉肉、泥泥\n出生：2001/02/16\n就讀：國立高雄科技大學\n　　　資訊工程系\n興趣：手作、攝影、唱歌",
              style: TextStyle(fontFamily: '華康',fontSize: 25,color: Colors.lightBlue.shade900),),
          ),
          //文字自傳部份
          Padding(padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
            child: Text("成長過程",
                style: TextStyle(fontSize:40,
                  fontWeight:FontWeight.bold,color: Colors.pink[200],)),
          ),
          Container(
            width:350,
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.fromLTRB(30, 0, 30, 50),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.purple.shade200, width: 3),
              borderRadius: BorderRadius.circular(20),
              boxShadow: [ BoxShadow(color: Colors.purple.shade100,
                  offset: Offset(6, 6)),
              ],),
            child:Text(s1,
              style: TextStyle(fontFamily: '華康',fontSize: 25,color: Colors.purple.shade600),),
          ),

          //放一張照片

          Container(
            width: 325,
            height: 210,
            decoration: BoxDecoration(
              border: Border.all(
                width: 4,
                color: Colors.brown.shade200,
                style: BorderStyle.solid,
              ),
              borderRadius: BorderRadius.circular(30),
              image: DecorationImage(
                image: AssetImage('images/f1.jpg'),
                fit: BoxFit.cover ,
              ),
              color: Colors.white,
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(20, 5, 20, 20),
            child: Text("全家福",
              style: TextStyle(fontFamily: '華康',fontSize:30,
                  fontWeight:FontWeight.bold,color: Colors.brown[300]
              ,)
            ),
          ),

          //一列放兩個圖
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 4,
                    color: Colors.brown.shade200,
                    style: BorderStyle.solid,
                  ),
                  borderRadius: BorderRadius.circular(30),
                  image: DecorationImage(
                    image: AssetImage('images/dog1.jpg'),
                    fit: BoxFit.cover ,
                  ),
                  color: Colors.white,
                ),
              ),
              Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 4,
                    color: Colors.brown.shade200,
                    style: BorderStyle.solid,
                  ),
                  borderRadius: BorderRadius.circular(30),
                  image: DecorationImage(
                    image: AssetImage('images/dog2.jpg'),
                    fit: BoxFit.cover ,
                  ),
                  color: Colors.white,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(20, 5, 20, 20),
                child: Text("黑糖 ",
                    style: TextStyle(fontFamily: '華康',fontSize:30,
                      fontWeight:FontWeight.bold,color: Colors.brown[300],)),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(20, 5, 20, 20),
                child: Text(" 吉吉",
                    style: TextStyle(fontFamily: '華康',fontSize:30,
                      fontWeight:FontWeight.bold,color: Colors.brown[300],)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class screen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(

      child:Column(

        children:[
          Row(
            children:[
              Container(
                width:60,
                height: 125,
                padding: EdgeInsets.fromLTRB(15, 10, 0, 0),
                margin: EdgeInsets.fromLTRB(20, 10, 0, 0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.amber.shade300, width: 3),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [ BoxShadow(color: Colors.amber.shade100,
                      offset: Offset(6, 6)),
                  ],
                ),
                child:
                Text('經\n歷',style: TextStyle(fontFamily: '華康',fontSize: 25,color: Colors.amber.shade900,height: 1.7),),              ),
              Container(
                height: 155,
                width: 250,
                padding: EdgeInsets.all(15),
                margin: EdgeInsets.fromLTRB(30, 35, 0, 0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.orange.shade200, width: 3),
                  borderRadius: BorderRadius.circular(25),
                  boxShadow: [ BoxShadow(color: Colors.orange.shade100,
                      offset: Offset(6, 6)),
                  ],
                ),
                child: ListView(
                  children: [
                    Text('大一：班代',style: TextStyle(fontFamily: '華康',fontSize: 23,color: Colors.orange.shade800,height: 1.3),),
                    Text('大二：系學會會長',style: TextStyle(fontFamily: '華康',fontSize: 23,color: Colors.orange.shade800,height: 1.3),),
                    Text('大三：副班代',style: TextStyle(fontFamily: '華康',fontSize: 23,color: Colors.orange.shade800,height: 1.3),),
                    Text('大四：副班代',style: TextStyle(fontFamily: '華康',fontSize: 23,color: Colors.orange.shade800,height: 1.3),),
                  ],
                ),
              ),
            ],
          ),
          Row(
            children:[
              Container(
                width:60,
                height: 125,
                padding: EdgeInsets.fromLTRB(15, 10, 0, 0),
                margin: EdgeInsets.fromLTRB(20, 20, 0, 0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.amber.shade300, width: 3),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [ BoxShadow(color: Colors.amber.shade100,
                      offset: Offset(6, 6)),
                  ],
                ),
                child:
                Text('專\n業\n證\n照',style: TextStyle(fontFamily: '華康',fontSize: 25,color: Colors.amber.shade900),),
              ),
              Container(
                height: 155,
                width: 250,
                padding: EdgeInsets.all(15),
                margin: EdgeInsets.fromLTRB(30, 50, 0, 0),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.orange.shade200, width: 3),
                  borderRadius: BorderRadius.circular(25),
                  boxShadow: [ BoxShadow(color: Colors.orange.shade100,
                      offset: Offset(6, 6)),
                  ],
                ),
                child: ListView(
                  children: [
                    Text('電腦軟體設計 丙 級',style: TextStyle(fontFamily: '華康',fontSize: 23,color: Colors.orange.shade800,height: 1.3),),
                    Text('電腦軟體應用 丙 級',style: TextStyle(fontFamily: '華康',fontSize: 23,color: Colors.orange.shade800,height: 1.3),),
                    Text('電腦硬體裝修 丙 級',style: TextStyle(fontFamily: '華康',fontSize: 23,color: Colors.orange.shade800,height: 1.3),),
                    Text('電腦硬體裝修 乙 級',style: TextStyle(fontFamily: '華康',fontSize: 23,color: Colors.orange.shade800,height: 1.3),),
                  ],
                ),
              ),
            ],
          ),
          Container(
            height:140,
            width: 178,
            margin: EdgeInsets.fromLTRB(200, 85, 0, 0),
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage('images/in2.gif'),
                  fit:BoxFit.cover),
            ),
          ),

        ],
      ),
    );
  }
}

class screen3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [//有多種排版方式, 此處以最直覺的方式將每一列放文字內容
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children:[
              Container(
                width: 100,
                height: 100,
                padding: EdgeInsets.fromLTRB(0, 35, 0, 35),
                margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                decoration: BoxDecoration(
                    color: Colors.redAccent.shade100,
                    shape: BoxShape.circle),
                child: Text("入學前", textAlign: TextAlign.center,style: TextStyle(fontFamily: '華康', fontWeight:FontWeight.bold,fontSize: 23,color: Colors.white,),),
              ),
              Positioned(
                child: Container(

                  height: 155,
                  width: 250,
                  padding: EdgeInsets.fromLTRB(10,15, 0, 10),
                  margin: EdgeInsets.fromLTRB(10, 0, 0, 10),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.teal.shade200, width: 3),
                    borderRadius: BorderRadius.circular(40),
                    boxShadow: [ BoxShadow(color: Colors.teal.shade100,
                        offset: Offset(6, 6)),
                    ],
                  ),
                  child: ListView(
                    children: [
                      //條列式參考
                      Text('1.精進英文能力',style: TextStyle(fontFamily: '華康',fontSize: 23,color: Colors.teal.shade700,height: 1.3),),
                      Text('2.了解大學課程',style: TextStyle(fontFamily: '華康',fontSize: 23,color: Colors.teal.shade700,height: 1.3),),
                      Text('3.參與志工活動',style: TextStyle(fontFamily: '華康',fontSize: 23,color: Colors.teal.shade700,height: 1.3),),
                      Text('4.養成運動習慣',style: TextStyle(fontFamily: '華康',fontSize: 23,color: Colors.teal.shade700,height: 1.3),),
                    ],
                  ),
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children:[
              Container(
                width: 100,
                height: 100,
                padding: EdgeInsets.fromLTRB(0, 25, 0, 25),
                margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                decoration: BoxDecoration(
                    color: Colors.redAccent.shade100,
                    shape: BoxShape.circle),
                child: Text("入學後\n畢業前", textAlign: TextAlign.center,style: TextStyle(fontFamily: '華康', fontWeight:FontWeight.bold,fontSize: 23,color: Colors.white,),),
              ),
              Positioned(
                child: Container(

                  height: 155,
                  width: 250,
                  padding: EdgeInsets.all(15),
                  margin: EdgeInsets.fromLTRB(10, 10, 0, 10),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.teal.shade200, width: 3),
                    borderRadius: BorderRadius.circular(40),
                    boxShadow: [ BoxShadow(color: Colors.teal.shade100,
                        offset: Offset(6, 6)),
                    ],
                  ),
                  child: ListView(
                    children: [
                      //條列式參考
                      Text('1.參與社團拓展人脈',style: TextStyle(fontFamily: '華康',fontSize: 23,color: Colors.teal.shade700,height: 1.3,),),
                      Text('2.通過英檢初、中級',style: TextStyle(fontFamily: '華康',fontSize: 23,color: Colors.teal.shade700,height: 1.3,),),
                      Text('3.持續參與志工活動',style: TextStyle(fontFamily: '華康',fontSize: 23,color: Colors.teal.shade700,height: 1.3,),),
                      Text('4.考取更多相關證照',style: TextStyle(fontFamily: '華康',fontSize: 23,color: Colors.teal.shade700,height: 1.3,),),
                    ],
                  ),
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children:[
              Container(
                width: 100,
                height: 100,
                padding: EdgeInsets.fromLTRB(0, 35, 0, 35),
                margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                decoration: BoxDecoration(
                    color: Colors.redAccent.shade100,
                    shape: BoxShape.circle),
                child: Text("畢業後", textAlign: TextAlign.center,style: TextStyle(fontFamily: '華康', fontWeight:FontWeight.bold,fontSize: 23,color: Colors.white,),),
              ),
              Positioned(
                child: Container(

                  height: 155,
                  width: 250,
                  padding: EdgeInsets.all(15),
                  margin: EdgeInsets.fromLTRB(10, 10, 0, 0),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.teal.shade200, width: 3),
                    borderRadius: BorderRadius.circular(40),
                    boxShadow: [ BoxShadow(color: Colors.teal.shade100,
                        offset: Offset(6, 6)),
                    ],
                  ),
                  child: ListView(
                    children: [
                      //條列式參考
                      Text('1.持續加強專業知識',style: TextStyle(fontFamily: '華康',fontSize: 23,color: Colors.teal.shade700,height: 1.3,),),
                      Text('2.用英文與他人對話',style: TextStyle(fontFamily: '華康',fontSize: 23,color: Colors.teal.shade700,height: 1.3,),),
                      Text('3.進入職場發揮所學',style: TextStyle(fontFamily: '華康',fontSize: 23,color: Colors.teal.shade700,height: 1.3,),),
                      Text('4.保持體態',style: TextStyle(fontFamily: '華康',fontSize: 23,color: Colors.teal.shade700,height: 1.3,),),
                    ],
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
class screen4 extends StatelessWidget {
  //
  final String s4='          功能\n'
      '----------------------\n'
      '1.新增/刪除產品種類\n2.產品規格選擇\n'
      '3.新增/取消訂單\n4.訂單日期\n'
      '5.單筆訂單總額\n6.所有訂單總額\n'
      '7.個別產品總額\n8.訂單提醒';
  final String s5='          說明\n'
      '----------------------\n'
      '發現爸爸媽媽在賣芭樂、辣椒的時候，'
      '都將訂單寫在家裡廚房的小白板上，雖'
      '然他們只是賣興趣的量都不多，但還是'
      '希望可以製作出一個程式來記錄客人的'
      '訂單，並且計算每月賺了多少元，或是'
      '總共賣了多少元等等...。';

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(

      child:Column(
        children:[
          Padding(padding: EdgeInsets.fromLTRB(20, 30, 20, 0),
            child: Text("【訂單APP】",
                style: TextStyle(fontFamily: '華康',fontSize:40,
                  fontWeight:FontWeight.bold,color: Colors.lightGreen[900],)),
          ),
          Container(
            width:350,
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.fromLTRB(30, 20, 30, 10),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.lightGreen.shade400, width: 3),
              borderRadius: BorderRadius.circular(8),
              boxShadow: [ BoxShadow(color: Colors.lightGreen.shade100,
                  offset: Offset(6, 6)),
              ],),
            child:
            Text(s4,
              style: TextStyle(fontFamily: '華康',fontSize: 25,color: Colors.lightGreen.shade900),
            ),
           ),
          Container(
            width:350,
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.fromLTRB(30, 20, 30, 50),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.lightGreen.shade400, width: 3),
              borderRadius: BorderRadius.circular(8),
              boxShadow: [ BoxShadow(color: Colors.lightGreen.shade100,
                  offset: Offset(6, 6)),
              ],),
            child:
              Text(s5,
              style: TextStyle(fontFamily: '華康',fontSize: 25,color: Colors.lightGreen.shade900),
              ),
          ),

        ],
      ),
    );
  }
}
