import 'package:flutter/material.dart';
import 'package:grouped_checkbox/grouped_checkbox.dart';
import 'dart:core';
class Filter extends StatefulWidget {
  @override
  _FilterState createState() => _FilterState();
}

class _FilterState extends State<Filter> {
  List<String> allItemList = [
    'Single Family -\nDetached',
    'Loft Style' ,
    'Moduler/Pre-Feb',
    'Mfg/Mobile Housing',
    'Gemini/Twin Home' ,
    'Apartment Style/Flat',
    'Townhouse',
    'Patio Home',
  ];
  List<String> Eventtype = [
  'SHOW ALL Open Houses',
  'SHOW ONLY PRE-MLS/Coming Soon',
  'Active Listing-No Open Houses',
  ];
  static List<String> checkedItemList = [''];
  static List<String> checkedItemLists = ['SHOW ALL Open Houses'];
  List<String> selectedItemList = checkedItemList;
  List<String> selectedItemLists = checkedItemLists ;
  
  static final List<String> items = <String>[
    'Rooms',
    'Hall',
    'BathRoom'
  ];
  String value = items.first;
  Widget _buildDropDown()=>DropdownButtonHideUnderline(child: DropdownButton<String>(
    value: value,
    items: items.map((item) => DropdownMenuItem<String>(
        child:Text(item,style: TextStyle(fontWeight: FontWeight.bold),),
      value: item,
    )).toList(),
    onChanged: (value)=>setState(() {
      this.value = value.toString();
    }),
  ));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(241, 242, 244, 1),
      body: ListView(
        primary: false,
        padding: EdgeInsets.only(left: 25.0, right: 20.0),
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 25.0,left: 10,right: 10),
            child: TextField(
                onChanged: (text){
                  text = text.toLowerCase();
                  setState(() {

                  });
                },
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(0),
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  hintText: "Search",
                  suffixIcon: InkWell(
                    child: Icon(
                      Icons.search,
                    ),
                  ),
                )
            ),
          ),
          SizedBox(height: 10,),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(bottom: 10.0,left: 10),
              child: InkWell(
                onTap: () {},
                child: Text('Price',style: TextStyle(fontWeight: FontWeight.bold),),
              ),
            ),
          ),
          Row(
            children: [
              Expanded(
                flex: 1,
                child: Padding(
                  padding: EdgeInsets.only(left: 10.0, right: 5.0),
                  child: TextField(
                      onChanged: (text){
                        text = text.toLowerCase();
                        setState(() {

                        });
                      },
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          borderSide: BorderSide.none,
                        ),
                        filled: true,
                        fillColor: Colors.white,
                        hintText: "Minimum",
                      )
                  ),
                ),
              ),
              SizedBox(width: 10,),
              Expanded(
                flex: 1,
                child: Padding(
                  padding: EdgeInsets.only(left: 10.0, right: 5.0),
                  child: TextField(
                      onChanged: (text){
                        text = text.toLowerCase();
                        setState(() {

                        });
                      },
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          borderSide: BorderSide.none,
                        ),
                        filled: true,
                        fillColor: Colors.white,
                        hintText: "Maximum",
                      )
                  ),
                ),
              ),
            ],
          ),
         SizedBox(height: 20,),
         Align(
           alignment: Alignment.topLeft,
           child: Padding(
             padding: EdgeInsets.only(bottom: 10.0,left: 10),
             child: InkWell(
               onTap: () {},
               child: Text('Home Type',style: TextStyle(fontWeight: FontWeight.bold),),
             ),
           ),
         ),

         Container(
           child: GroupedCheckbox(
               itemList: allItemList,
               checkedItemList: checkedItemList,
               onChanged: (itemList) {
                 setState(() {
                   selectedItemList = itemList;
                   print('SELECTED ITEM LIST $itemList');
                 });
               },
               orientation: CheckboxOrientation.VERTICAL,
               checkColor: Colors.white,
               activeColor: Color.fromRGBO(16, 184, 167, 1)
           ),
         ),
         SizedBox(height: 20,),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(bottom: 10.0,left: 10),
              child: InkWell(
                onTap: () {},
                child: Text('Event Type',style: TextStyle(fontWeight: FontWeight.bold),),
              ),
            ),
          ),
          Container(
            child: GroupedCheckbox(
                itemList: Eventtype,
                checkedItemList: checkedItemLists,
                onChanged: (itemList) {
                  setState(() {
                    selectedItemLists = itemList;
                    print('SELECTED ITEM LIST $itemList');
                  });
                },
                orientation: CheckboxOrientation.VERTICAL,
                checkColor: Colors.white,
                activeColor: Color.fromRGBO(16, 184, 167, 1)
            ),
          ),
         SizedBox(height: 20,),
          Row(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.only(bottom: 10.0,left: 10),
                  child: InkWell(
                    onTap: () {},
                    child: Text('Bedrooms',style: TextStyle(fontWeight: FontWeight.bold),),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.only(bottom: 10.0,left: 100),
                  child: InkWell(
                    onTap: () {},
                    child: Text('Bathrooms',style: TextStyle(fontWeight: FontWeight.bold),),
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                flex: 1,
                child: Padding(
                  padding: EdgeInsets.only(left: 10.0, right: 5.0),
                  child: _buildDropDown(),
                  /*child: TextField(
                      onChanged: (text){
                        text = text.toLowerCase();
                        setState(() {

                        });
                      },
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          borderSide: BorderSide.none,
                        ),
                        filled: true,
                        fillColor: Colors.white,
                        hintText: "Minimum",
                      )
                  ),*/
                ),
              ),
              SizedBox(width: 10,),
              Expanded(
                flex: 1,
                child: Padding(
                  padding: EdgeInsets.only(left: 10.0, right: 5.0),
                  child: TextField(
                      onChanged: (text){
                        text = text.toLowerCase();
                        setState(() {

                        });
                      },
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          borderSide: BorderSide.none,
                        ),
                        filled: true,
                        fillColor: Colors.white,
                        hintText: "Maximum",
                      )
                  ),
                ),
              ),
            ],
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(bottom: 10.0,left: 10),
              child: InkWell(
                onTap: () {},
                child: Text('Sq.ft',style: TextStyle(fontWeight: FontWeight.bold),),
              ),
            ),
          ),
          Row(
            children: [
              Expanded(
                flex: 1,
                child: Padding(
                  padding: EdgeInsets.only(left: 10.0, right: 5.0),
                  child: TextField(
                      onChanged: (text){
                        text = text.toLowerCase();
                        setState(() {

                        });
                      },
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          borderSide: BorderSide.none,
                        ),
                        filled: true,
                        fillColor: Colors.white,
                        hintText: "Minimum",
                      )
                  ),
                ),
              ),
              SizedBox(width: 10,),
              Expanded(
                flex: 1,
                child: Padding(
                  padding: EdgeInsets.only(left: 10.0, right: 5.0),
                  child: TextField(
                      onChanged: (text){
                        text = text.toLowerCase();
                        setState(() {

                        });
                      },
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          borderSide: BorderSide.none,
                        ),
                        filled: true,
                        fillColor: Colors.white,
                        hintText: "Maximum",
                      )
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 10,),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(bottom: 10.0,left: 10),
              child: InkWell(
                onTap: () {},
                child: Text('Save this search',style: TextStyle(fontWeight: FontWeight.bold),),
              ),
            ),
          ),

          Align(
            alignment: Alignment.bottomLeft,
            child: FloatingActionButton(
              backgroundColor: Color.fromRGBO(16, 184, 167, 1),
              foregroundColor: Colors.white,
              onPressed: (){},
              child: Icon(Icons.help,color: Colors.white,),
            ),
          )

        ],
      ),
    );
  }
}
