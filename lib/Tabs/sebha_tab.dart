import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SebhaTab extends StatefulWidget {
  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  int val = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 60.0, bottom: 16),
            child: Image.asset(
              "Assets/images/body of seb7a.png",
              fit: BoxFit.fill,
            ),
          ),
          Text(
            AppLocalizations.of(context)!.num,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          Container(
            width: 69,
            height: 69,
            decoration: BoxDecoration(
                color: Color(0xffB7935F),
                borderRadius: BorderRadius.circular(18)),
            child: Center(
              child: Text(
                "$val",
                style: TextStyle(color: Colors.black, fontSize: 25),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xffB7935F),
                ),
                onPressed: () {
                  if (val < 33) {
                    val++;
                  } else
                    val = 0;
                  setState(() {});
                },
                child: Text(
                  AppLocalizations.of(context)!.tasbeh,
                  style: Theme.of(context).textTheme.bodyMedium,
                )),
          )
        ],
      ),
    );
  }
}
