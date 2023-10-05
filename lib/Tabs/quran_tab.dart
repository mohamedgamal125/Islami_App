import 'package:flutter/material.dart';
import 'package:islami_app/Model/sura_model.dart';
import 'package:islami_app/Theming/MyThemeData.dart';
import 'package:islami_app/sura_details.dart';

class QuranTab extends StatelessWidget {

  List<String>suraName=["الفاتحه","البقرة","آل عمران","النساء","المائدة","الأنعام","الأعراف","الأنفال","التوبة","يونس","هود"
  ,"يوسف","الرعد","إبراهيم","الحجر","النحل","الإسراء","الكهف","مريم","طه","الأنبياء","الحج","المؤمنون"
  ,"النّور","الفرقان","الشعراء","النّمل","القصص","العنكبوت","الرّوم","لقمان","السجدة","الأحزاب","سبأ"
  ,"فاطر","يس","الصافات","ص","الزمر","غافر","فصّلت","الشورى","الزخرف","الدّخان","الجاثية","الأحقاف"
  ,"محمد","الفتح","الحجرات","ق","الذاريات","الطور","النجم","القمر","الرحمن","الواقعة","الحديد","المجادلة"
  ,"الحشر","الممتحنة","الصف","الجمعة","المنافقون","التغابن","الطلاق","التحريم","الملك","القلم","الحاقة","المعارج"
  ,"نوح","الجن","المزّمّل","المدّثر","القيامة","الإنسان","المرسلات","النبأ","النازعات","عبس","التكوير","الإنفطار"
  ,"المطفّفين","الإنشقاق","البروج","الطارق","الأعلى","الغاشية","الفجر","البلد","الشمس","الليل","الضحى","الشرح"
  ,"التين","العلق","القدر","البينة","الزلزلة","العاديات","القارعة","التكاثر","العصر",
  "الهمزة","الفيل","قريش","الماعون","الكوثر","الكافرون","النصر","المسد","الإخلاص","الفلق","الناس"];

  @override
  Widget build(BuildContext context) {
    return  Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset("Assets/images/head_quran_bg.png"),

          Divider(
            color: MyThemeData.primaryColor,
            thickness: 3,
          ),
          Text("Sura Name",style: Theme.of(context).textTheme.bodyMedium!.copyWith(
            color: MyThemeData.blackColor
          ),),
          Divider(
            color: MyThemeData.primaryColor,
            thickness: 3,
          ),


          Expanded(
            child: ListView.separated(separatorBuilder: (context,index)=>
              Divider(
                color: MyThemeData.primaryColor,
                thickness: 1,
                endIndent: 50,
                  indent: 50,
              )
              ,itemBuilder: (context,index){
              return InkWell(
                onTap: (){

                  Navigator.pushNamed(context, SuraDetailsScreen.routeName,
                  arguments: SuraModel(suraName[index], index)
                  );
                },
                child: Center(
                  child: Text(suraName[index],style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    color: MyThemeData.blackColor
                  ),),
                ),
              );
            },

            itemCount: suraName.length,


            ),
          )
        ],
      ),
    );
  }
}
