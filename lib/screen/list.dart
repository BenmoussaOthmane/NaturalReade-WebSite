import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Liste extends StatefulWidget {
  @override
  _ListeState createState() => _ListeState();
}

class _ListeState extends State<Liste> {
  var jsonResponse;
  Future<String>_loadFromAsset() async {
  return await rootBundle.loadString("assets/datav.json");
}

Future parseJson() async {
    String jsonString = await _loadFromAsset();
    jsonResponse = jsonDecode(jsonString);
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(top:50.0,left: 50,right: 50.0),
        child:FutureBuilder(
          future: DefaultAssetBundle.of(context).loadString("assets/datav.json"),
          builder: (context,snapshot){
            var mydata = json.decode(snapshot.data.toString());
            if(!snapshot.hasData){
              return Center(
                child: Text(
                  'Loiding'
                ),
              );
            }
                return GridView.builder(
                  gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 250,crossAxisSpacing: 2.0,mainAxisSpacing: 2.0,childAspectRatio: 2.0),
                  itemBuilder: (context,index){
                    return Container(
                      child: Column(
                        children: [
                          Expanded(
                            flex: 2,
                            child: Container(
                              color: Colors.red,
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    mydata[index]['title'],
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold
                                    )
                                  ),
                                  Text(
                                    mydata[index]['title'],
                                    style: TextStyle(
                                      color: Colors.grey
                                    ),
                                  ),
                                  Text(
                                    mydata[index]['title'],
                                    style: TextStyle(
                                      color: Colors.amber
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    );
                  },
                  itemCount:mydata.length,
                );
          },
        )
      ),
      
    );
  }
}