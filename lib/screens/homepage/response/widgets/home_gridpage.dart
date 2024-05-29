import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:internship_question/main.dart';
import '../../../login/widget/login_button.dart';
import '../../../login/widget/login_text.dart';

class HomeGridPage extends StatelessWidget {
  const HomeGridPage({
    super.key,

  });


  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.only(top: 10),
      width: width * 0.43,
      height: height*0.70,
      color: Colors.blue.shade50,
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            height: height * 0.18,
            width: width * 0.42,
            decoration: BoxDecoration(
              color: Color(0xFF277F81),
              borderRadius: BorderRadius.circular(5),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MyLoginText(
                  text: "Emergency Kit",
                  fontSize: 36,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
                SizedBox(
                  height: height * 0.015,
                ),
                Container(
                  height: height * 0.072,
                  width: width * 0.34,
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        MyLoginText(
                          text:
                          "We know migraines at school can be a real bummer, but you're a superhero for handling them like a champ!",
                          fontSize: 14,
                          textAlign: TextAlign.center,
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                        ),
                        SizedBox(
                          height: height * 0.015,
                        ),
                        MyLoginText(
                          text:
                          "Your emergency kit is here to save the day and make you feel better.",
                          fontSize: 14,
                          textAlign: TextAlign.center,
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: height * 0.01,
          ),
          SizedBox(
            height: height * 0.4,
            child: Obx(
              () {
                return  GridView.builder(
                  itemCount: dataList.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 2,
                  ),
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        child: Container(
                          padding: EdgeInsets.only(
                            top: height * 0.02,
                            bottom: height * 0.022,
                            left: width * 0.018,
                            right: width * 0.016,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Image.asset("assets/home.png",height: 30,width: 30,),
                                    SizedBox(
                                      width: width * 0.015,
                                    ),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        MyLoginText(
                                          text: dataList[index].name ?? "null",
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                        ),
                                        SizedBox(
                                          height: height * 0.01,
                                        ),
                                        MyLoginText(
                                          text: dataList[index].contact ?? "null",
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: height * 0.01,
                                ),
                                Container(
                                  child: MyLoginText(
                                    text: dataList[index].details ?? "null",
                                    fontSize: 10,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          ),
          SizedBox(
            height: height * 0.01,
          ),
          LoginButton(
            text: "Add Emergency Contact",
            color: Colors.blue.shade200,
            width: width * 0.15,
            fontSize: 16,
            fontWeight: FontWeight.w500,
            onTap: () {
              indexChange.value = 1;
            },
          ),
        ],
      ),
    );
  }
}
