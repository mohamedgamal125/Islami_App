import 'package:flutter/material.dart';
import 'package:islami_app/Theming/MyThemeData.dart';
import 'package:islami_app/providers/myProvider.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class LanguageBottomSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    return Container(
      padding: EdgeInsets.all(12),
      height: MediaQuery.of(context).size.height * .3,
      child: Column(
        children: [
          InkWell(
            onTap: () {
              provider.changeLanguage("en");
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  AppLocalizations.of(context)!.english,
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        color: provider.languageCode == "en"
                            ? MyThemeData.primaryColor
                            : Colors.black,
                      ),
                ),
                provider.languageCode == "en"
                    ? Icon(Icons.done, color: MyThemeData.primaryColor)
                    : SizedBox.shrink()
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: () {
              provider.changeLanguage('ar');
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  AppLocalizations.of(context)!.arabic,
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        color: provider.languageCode == "ar"
                            ? MyThemeData.primaryColor
                            : Colors.black,
                      ),
                ),
                provider.languageCode == 'en'
                    ? SizedBox.shrink()
                    : Icon(Icons.done, color: MyThemeData.primaryColor)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
