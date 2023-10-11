import 'package:flutter/material.dart';

class QuranDetailsView extends StatelessWidget {
  static const String routeName = "quran_details";

  const QuranDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    var mediaqury = MediaQuery.of(context).size;
    var theme = Theme.of(context);
    return Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/background_light.png"),
              fit: BoxFit.fill),
        ),
        child: Scaffold(
          appBar: AppBar(
            title: Text("اسلامى"),
          ),
          body: Container(
            margin: EdgeInsets.only(left: 30, right: 30, bottom: 60, top: 80),
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
            width: mediaqury.width,
            height: mediaqury.height,
            decoration: BoxDecoration(
              color: Color(0xffF8F8F8).withOpacity(.8),
              borderRadius: BorderRadius.circular(25),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("اسم السورة", style: theme.textTheme.bodyLarge),
                    SizedBox(width: 20),
                    Icon(Icons.play_circle, size: 32, color: Colors.black)
                  ],
                ),
                Divider(
                  color: theme.primaryColor,
                  indent: 50,
                  thickness: 1.2,
                  endIndent: 50,
                  height: 10,
                ),
                Text("الله اكبر ولله الحمد", style: theme.textTheme.bodySmall)
              ],
            ),
          ),
        ));
  }
}
