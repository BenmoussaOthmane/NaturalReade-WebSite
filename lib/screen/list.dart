import 'dart:convert';

import 'package:flutter/material.dart';

class Liste extends StatefulWidget {
  @override
  _ListeState createState() => _ListeState();
}

class _ListeState extends State<Liste> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:FutureBuilder(
          future: DefaultAssetBundle.of(context).loadString("assets/datav.json"),
          builder: (context,snapshot){
            var mydata = json.decode(snapshot.data.toString());
            return ListView.builder(
              itemBuilder: (BuildContext contex,int index){
                return Text(
                  mydata[index]["name"],
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