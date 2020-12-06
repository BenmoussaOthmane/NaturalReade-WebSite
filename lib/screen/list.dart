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
                  gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 250),
                  itemBuilder: (context,index){
                    return Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Card(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(child:Container(
                              decoration: BoxDecoration(
                                color: Colors.grey[300].withOpacity(.5),
                                image: DecorationImage(
                                  image: NetworkImage(mydata[index]['photo']),
                                  //fit: BoxFit.cover,
                                )
                              ),
                            )),
                            Expanded(
                              child:Container(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        mydata[index]['title']
                                      ),
                                      Text(
                                        mydata[index]['description']
                                      ),
                                      Row(children: [
                                        Text(
                                          mydata[index]['note']
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Colors.amber,
                                        )
                                      ]
                                    ),
                                    Text(
                                     mydata[index]['price']+'\$'
                                    )
                                    
                                    ],
                                  ),  
                                )
                              ),
                          ],
                        ),
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