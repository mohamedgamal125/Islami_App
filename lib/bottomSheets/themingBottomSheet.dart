import 'package:flutter/material.dart';
import 'package:islami_app/Theming/MyThemeData.dart';
import 'package:islami_app/providers/myProvider.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ThemeingBottomSheet extends StatelessWidget {
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

              provider.changeTheme(ThemeMode.light);
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Light",
                  style: Theme.of(context).textTheme.bodySmall
                ),
                provider.modeApp == ThemeMode.light
                    ? Icon(Icons.done, color:  Theme.of(context).colorScheme.secondary)
                    : SizedBox.shrink()
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: () {
              provider.changeTheme(ThemeMode.dark);
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                 "Dark",
                  style: Theme.of(context).textTheme.bodySmall
                ),
                provider.modeApp==ThemeMode.light
                    ? SizedBox.shrink()
                    : Icon(Icons.done, color: Theme.of(context).colorScheme.secondary)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
