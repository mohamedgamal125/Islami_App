import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/Model/hadeth_model.dart';

import '../Theming/MyThemeData.dart';
import '../hadeth_details.dart';

class AhadethTab extends StatelessWidget {
  List<HadethModel>allAhadeth=[];

  @override
  Widget build(BuildContext context) {
    loadHadeth();
    return  Center(
      child: Column(

        children: [
          Image.asset("Assets/images/hadeth_bg.png",
              fit: BoxFit.fill,
          ),
          Divider(
            color: MyThemeData.primaryColor,
            thickness: 3,
          ),
          Text("Ahadeth",style: Theme.of(context).textTheme.bodyMedium!.copyWith(
              color: MyThemeData.blackColor
          ),),
          Divider(
            color: MyThemeData.primaryColor,
            thickness: 3,
          ),


          Expanded(
            child: ListView.separated(
                itemBuilder: (context,index){
                  return Center(
                      child: InkWell(
                        onTap: (){
                          Navigator.pushNamed(context, HadethDetails.routeName,
                          arguments: allAhadeth[index]
                          );
                        },
                        child: Text(
                            allAhadeth[index].title,
                            style: Theme.of(context).textTheme.bodySmall,
                        ),
                      )
                  );
                },
                separatorBuilder: (context,index){
                  return Divider(
                    color: MyThemeData.primaryColor,
                    thickness: 1,
                    endIndent: 50,
                    indent: 50,
                  );
                },
                itemCount: allAhadeth.length,
            ),
          )
        ],
      ),
    );
  }

  loadHadeth(){
    rootBundle.loadString("Assets/files/ahadeth.txt")
        .then((ahadeth){

         List<String>ahadethList= ahadeth.split("#");
         for(int i=0;i<ahadethList.length;i++)
           {
             String HadethOne=ahadethList[i];
             List<String>hadethOneLines=HadethOne.trim().split("\n");
             String title=hadethOneLines[0];
             hadethOneLines.removeAt(0);
             List<String> content=hadethOneLines;
             HadethModel hadethModel=HadethModel(title, content);
             print(hadethModel.title);
             allAhadeth.add(hadethModel);
           }
    }).catchError((e){
      print(e.toString());
    });

  }
}
