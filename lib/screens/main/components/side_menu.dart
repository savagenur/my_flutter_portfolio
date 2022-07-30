import 'package:flutter/material.dart';
import 'package:flutter_profile/constants.dart';
import 'package:flutter_profile/screens/main/components/area_info_text.dart';
import 'package:flutter_profile/screens/main/components/coding.dart';
import 'package:flutter_profile/screens/main/components/knowledge.dart';
import 'package:flutter_profile/screens/main/components/my_info.dart';
import 'package:flutter_profile/screens/main/components/skills.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/link.dart';
import 'package:url_launcher/url_launcher.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  void launchWhatsApp({required number, required message}) async {
    String url = "whatsapp://send?phone=$number&text=$message";
    await canLaunchUrl(Uri.parse(url))
        ? launchUrl(
            Uri.parse(url),
          )
        : print("Can't open whatsapp");
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            MyInfo(),
            Expanded(
              child: SingleChildScrollView(
                primary: false,
                padding: EdgeInsets.all(defaultPadding),
                child: Column(
                  children: [
                    AreaInfoText(
                      title: "Country",
                      text: "Kyrgyzstan",
                    ),
                    AreaInfoText(
                      title: "City",
                      text: "Bishkek",
                    ),
                    AreaInfoText(
                      title: "Age",
                      text: "25",
                    ),
                    Skills(),
                    SizedBox(
                      height: defaultPadding,
                    ),
                    Coding(),
                    Knowledge(),
                    Divider(),
                    SizedBox(
                      height: defaultPadding / 2,
                    ),
                    // TextButton(
                    //   onPressed: () {},
                    //   child: FittedBox(
                    //     child: Row(
                    //       children: [
                    //         Text(
                    //           "DOWNLOAD CV",
                    //           style: TextStyle(
                    //               color: Theme.of(context)
                    //                   .textTheme
                    //                   .bodyText1!
                    //                   .color),
                    //         ),
                    //         SizedBox(
                    //           width: defaultPadding / 2,
                    //         ),
                    //         SvgPicture.asset("assets/icons/download.svg"),
                    //       ],
                    //     ),
                    //   ),
                    // ),
                    Container(
                      margin: EdgeInsets.only(top: defaultPadding),
                      color: Color(0xFF24242E),
                      child: Row(
                        children: [
                          Spacer(),
                          Link(
                              target: LinkTarget.blank,
                              uri: Uri.parse(
                                  "https://www.linkedin.com/in/savagenur/"),
                              builder: (context, followLink) => IconButton(
                                    splashRadius: 25,
                                    splashColor: Color(0xFF24242E),
                                    onPressed: followLink,
                                    icon: SvgPicture.asset(
                                        "assets/icons/linkedin.svg"),
                                  )),
                          IconButton(
                            splashRadius: 25,
                            splashColor: Color(0xFF24242E),
                            onPressed: () async {
                              final toEmail = 'savagenurkg@gmail.com';
                              final subject = 'About Job';
                              final message = 'Hello Nurbolot! ';
                              final url =
                                  'mailto:$toEmail?subject=${Uri.encodeFull(subject)}&body=${Uri.encodeFull(message)}';

                              if (await canLaunchUrl(Uri.parse(url))) {
                                await launchUrl(
                                  Uri.parse(url),
                                );
                              }
                            
                            },
                            icon: SvgPicture.asset(
                              "assets/icons/gmail.svg",
                              color:
                                  Theme.of(context).textTheme.bodyText1!.color,
                                  width: MediaQuery.of(context).size.width / 16
                            ),
                          ),
                          IconButton(
                            splashRadius: 25,
                            splashColor: Color(0xFF24242E),
                            onPressed: () async {
                              String url = "https://github.com/savagenur";
                              if (await canLaunchUrl(Uri.parse(url))) {
                                await launchUrl(
                                  Uri.parse(url),
                                );
                              } 
                            },
                            icon: SvgPicture.asset("assets/icons/github.svg"),
                          ),
                          IconButton(
                            splashRadius: 25,
                            splashColor: Color(0xFF24242E),
                            onPressed: () {
                              launchWhatsApp(
                                  number: "+996990666991", message: "Hello Nurbolot! ");
                            },
                            icon: SvgPicture.asset(
                              "assets/icons/w.svg",
                              color:
                                  Theme.of(context).textTheme.bodyText1!.color,
                              width: MediaQuery.of(context).size.width / 19,
                            ),
                          ),
                          Spacer()
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
