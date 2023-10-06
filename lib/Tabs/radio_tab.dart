import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RadioTab extends StatelessWidget {
  const RadioTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Center(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 80,bottom: 16),
            child: Image.asset("Assets/images/Radio.png",fit: BoxFit.fill,),


          ),

          Text("اذاعة القران الكريم",
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(onPressed: (){}
                  , icon: Icon(CupertinoIcons.play)
              )
            ],
          ),
        ],

      ),
    );
  }
}


