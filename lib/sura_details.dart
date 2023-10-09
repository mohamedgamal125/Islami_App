import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/Model/sura_model.dart';
import 'package:islami_app/Theming/MyThemeData.dart';

class SuraDetailsScreen extends StatefulWidget {
  static const String routeName="suraDetails";

  @override
  State<SuraDetailsScreen> createState() => _SuraDetailsScreenState();
}

class _SuraDetailsScreenState extends State<SuraDetailsScreen> {
  List<String>verses=[];
  @override
  Widget build(BuildContext context) {
    var args=ModalRoute.of(context)?.settings.arguments as SuraModel;
    if(verses.isEmpty) {
      loadFile(args.index);
    }

    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage("Assets/images/bg3.png",),
            fit:BoxFit.fill
        ),
      ),
      child: Scaffold(

        appBar: AppBar(
          title: Text(
            args.name,
            style: Theme.of(context).textTheme.bodyLarge ,
          ),
        ),

        body: Padding(
          padding: const EdgeInsets.all(12),
          child: Card(
            elevation: 20,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18),
              side: BorderSide(
                color: MyThemeData.primaryColor
              )
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child:(verses.length==0)?Center(child: (CircularProgressIndicator())
              ):
              ListView.separated(
                separatorBuilder: (context,index)=>Divider(
                  indent: 40,endIndent: 40,
                  color: MyThemeData.primaryColor,
                  thickness: 1,
                ),

                itemBuilder: (context,index){

                return Center(
                    child: Text(
                        verses[index],
                        style: Theme.of(context).textTheme.bodySmall,
                      textAlign: TextAlign.center,
                    )
                );
              },
                itemCount: verses.length,
              ),
            ),
          ),
        ),
      ),
    );


  }

  loadFile (int index)async {
     String file =await  rootBundle.loadString("Assets/files/${index+1}.txt");
     List<String>lines=file.split("\n");
     verses=lines;
     Timer(Duration(seconds: 1), () {
       setState(() {
       });
     });

  }
}
