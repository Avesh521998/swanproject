import 'package:flutter/material.dart';
import 'package:swanproject/aim_appbar.dart';
import 'package:swanproject/filter.dart';


class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final Color ab = Color.fromRGBO(16, 184, 167, 1);
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  Widget button()=>
      Padding(
        padding: EdgeInsets.only(left: 20.0,top: 10),
        child: Align(
          alignment: Alignment.bottomLeft,
          child: FloatingActionButton(
            backgroundColor: Color.fromRGBO(16, 184, 167, 1),
            foregroundColor: Colors.white,
            onPressed: (){},
            child: Icon(Icons.help,color: Colors.white,),
          ),
        ),
      );
  /*Align(
    alignment: Alignment.bottomLeft,
    child: FloatingActionButton(
      backgroundColor: Color.fromRGBO(16, 184, 167, 1),
      foregroundColor: Colors.white,
      onPressed: (){},
      child: Icon(Icons.help,color: Colors.white,),
    ),
  );*/
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: aimAppBar(),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Padding(
                    padding: EdgeInsets.only(left: 10.0, right: 5.0),
                    child: TextField(
                        onChanged: (text){
                          text = text.toLowerCase();
                          setState(() {

                          });
                        },
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0),
                            borderSide: BorderSide.none,
                          ),

                          filled: true,
                          fillColor: Colors.white,
                          hintText: "Arizona",
                          suffixIcon: InkWell(
                            child: Icon(
                              Icons.search,
                            ),
                          ),
                        )
                    ),
                  ),
                ),
                SizedBox(width: 10,),
                Expanded(
                  flex: 2,
                  child: Padding(padding: EdgeInsets.only(right: 10),
                    child: InkWell(
                      onTap: () {},
                      child: FloatingActionButton.extended(
                        label: Text('Other Filter',style: TextStyle(color: Colors.white),),
                        backgroundColor: Color.fromRGBO(16, 184, 167, 1), onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Filter()),
                        );
                      },
                      ),
                    ),
                  ),
                  /*child: InkWell(
                  onTap: () {},
                  child: FloatingActionButton.extended(
                    label: Text('Other Filter',style: TextStyle(color: Colors.white),),
                    backgroundColor: Color.fromRGBO(16, 184, 167, 1), onPressed: () {  },
                  ),
                ),*/
                ),
                SizedBox(height: 10,),
              ],
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                          height: 550,
                          width: 350,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(0)
                          ),

                          child: ListView.builder(
                              padding: EdgeInsets.only(left: 15,right: 5,top: 5),
                              shrinkWrap: true,
                              // itemCount: _searchData.length,
                              itemBuilder: (context, i)
                              {
                                return InkWell(
                                  onTap: () {},
                                  child: Container(
                                    height: 150,
                                    margin: EdgeInsets.only(bottom: 15),
                                    decoration: BoxDecoration(
                                      image: new DecorationImage(
                                        image: new AssetImage("assets/bg.jpg"),
                                        fit: BoxFit.fill,
                                      ),
                                      borderRadius: BorderRadius.circular(0),
                                    ),
                                    child: Row(
                                      children: [
                                        Row(
                                          children: [
                                            Column(
                                              children: [
                                                Padding(padding: EdgeInsets.only(left: 242.0,top: 10),
                                                  child: Align(
                                                    alignment: Alignment.topRight,
                                                    child: FlatButton(
                                                      onPressed: (){},
                                                      child: Icon(Icons.favorite_border_outlined,color: Colors.white,size: 25,),
                                                    ),
                                                  ),
                                                ),

                                                Padding(padding: EdgeInsets.only(left: 242.0),
                                                  child: Align(
                                                    alignment: Alignment.topRight,
                                                    child: FlatButton(
                                                      onPressed: (){},
                                                      child: Icon(Icons.calendar_today,color: Colors.white,size: 30,),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              }
                          )
                      ),

                    ],
                  ),
                ),

              ],
            ),
            button(),
          ],
        ),
      ),
/*
      body: Column(
        children: [
          SizedBox(height: 10,),
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.white10,
                width: 5,
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 3,
                  child: Padding(
                    padding: EdgeInsets.only(left: 10.0, right: 5.0),
                    child: TextField(
                        onChanged: (text){
                          text = text.toLowerCase();
                          setState(() {
                            _searchData = searchData.
                            where((search) {
                              var searchTitle = search.specialist.toLowerCase();
                              return searchTitle.contains(text);
                            }).toList();
                            setState(() {
                              this._searchData = _searchData;
                            });
                          });
                        },
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0),
                            borderSide: BorderSide.none,
                          ),

                          filled: true,
                          fillColor: Colors.white,
                          hintText: "Arizona",
                          suffixIcon: InkWell(
                            child: Icon(
                              Icons.search,
                            ),
                          ),
                        )
                    ),
                  ),
                ),
                SizedBox(width: 10,),
                Expanded(
                  flex: 2,
                  child: Padding(padding: EdgeInsets.only(right: 10),
                    child: InkWell(
                      onTap: () {},
                      child: FloatingActionButton.extended(
                        label: Text('Other Filter',style: TextStyle(color: Colors.white),),
                        backgroundColor: Color.fromRGBO(16, 184, 167, 1), onPressed: () {  },
                      ),
                    ),
                  ),
                  */
/*child: InkWell(
                  onTap: () {},
                  child: FloatingActionButton.extended(
                    label: Text('Other Filter',style: TextStyle(color: Colors.white),),
                    backgroundColor: Color.fromRGBO(16, 184, 167, 1), onPressed: () {  },
                  ),
                ),*/
      /*

                ),
              ],
            ),
          ),
          SizedBox(height: 15,),
    SingleChildScrollView(
    child: Column(
      children: [

        Container(
            height: 500,
            width: 340,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(0)
            ),

            child: ListView.builder(
                padding: EdgeInsets.only(left: 5,right: 5,top: 5),
                shrinkWrap: true,
                // itemCount: _searchData.length,
                itemBuilder: (context, i)
                {
                  return InkWell(
                    onTap: () {},
                    child: Container(
                      height: 120,
                      margin: EdgeInsets.only(bottom: 15),
                      padding:
                      EdgeInsets.only(left: 24, top: 12, bottom: 12, right: 22),
                      decoration: BoxDecoration(
                        image: new DecorationImage(
                          image: new AssetImage("assets/bg.jpg"),
                          fit: BoxFit.fill,
                        ),
//    color: Colors.white,
                        borderRadius: BorderRadius.circular(0),
                        */
/* boxShadow: [
    BoxShadow(
        color: Colors.lightBlue.withOpacity(0.2),
        blurRadius: 25,
        spreadRadius: 0,
        offset: Offset(8.0,8.0),
        )
      ]*/
      /*

                      ),
                      child: Row(
                        children: [
                          Row(
                            children: [
                              Container(
                                height: 57,
                                width: 57,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.lightBlue,
                                    image: DecorationImage(image: AssetImage('assets/logo.png'))
                                ),
                              ),
                              SizedBox(width: 13,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [

                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                }
            )
        ),

      ],
    ),
    ),

        ],
      ),
*/

   /*   Align(
        alignment: Alignment.bottomCenter,
        child: Padding(
          padding: EdgeInsets.only(bottom: 10.0),
          child: InkWell(
            onTap: () {},
            child: FloatingActionButton.extended(
              label: Text('Show Map',style: TextStyle(color: Colors.white),),
              backgroundColor: Color.fromRGBO(16, 184, 167, 1), onPressed: () {  },
            ),
          ),
        ),
      ),*/
    );
  }
}
