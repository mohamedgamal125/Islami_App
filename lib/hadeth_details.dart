import 'package:flutter/material.dart';
import 'package:islami_app/Model/hadeth_model.dart';

import 'Theming/MyThemeData.dart';

class HadethDetails extends StatelessWidget {
  const HadethDetails({Key? key}) : super(key: key);

  static const String routeName="hadethDetails";

  @override
  Widget build(BuildContext context) {
    var args=ModalRoute.of(context)?.settings.arguments as HadethModel;
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage("Assets/images/bg3.png",),
            fit:BoxFit.fill
        ),
      ),
      child: Scaffold(

        appBar: AppBar(
          title: Text(
            args.title,
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
              child:(args.content.length==0)?Center(child: (CircularProgressIndicator())):
              ListView.separated(
                separatorBuilder: (context,index)=>Divider(
                  indent: 40,endIndent: 40,
                  color: MyThemeData.primaryColor,
                  thickness: 1,
                ),

                itemBuilder: (context,index){

                  return Center(
                      child: Text(
                        args.content [index],
                        style: Theme.of(context).textTheme.bodySmall,
                        textAlign: TextAlign.center,
                      )
                  );
                },
                itemCount: args.content.length,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
