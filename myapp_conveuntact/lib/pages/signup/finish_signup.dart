import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/pages/login/login_screen.dart';
import 'package:myapp/pages/signup/unitcode.dart';

const unitcode = '211022';
const primaryColor = Color(0xFFACBDF4);
void main() => runApp(const FinishSignup());

/// This is the main application widget.
class FinishSignup extends StatelessWidget {
  const FinishSignup({Key? key}) : super(key: key);

  //static const String _title = 'Test TextButton';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFFACBDF4),
        primaryColor: primaryColor,
      ),
      //title: _title,
      home: Scaffold(
        // appBar: AppBar(
        //   backgroundColor: primaryColor,
        //   title: Text(''),
        //   automaticallyImplyLeading: true,
        //   leading: IconButton(
        //     icon: Icon(Icons.arrow_back_ios_new),
        //     onPressed: () {
        //       Get.back();
        //     },
        //   ),
        // ),
        body: const MyStatelessWidget(),
      ),
    );
  }
}

/// This is the stateless widget that the main application instantiates.
class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text('ConveUntact',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 50,
                  color: Colors.white)),
          SizedBox(height: 120),
          Text('환영합니다!',
              style: TextStyle(
                  //fontWeight: FontWeight.bold,
                  fontSize: 70,
                  color: Colors.white)),
          SizedBox(height: 30),
          Text('회원가입이 성공적으로 완료되었습니다. \n부대코드는 ${unitcode} 입니다.',
              style: TextStyle(
                  // fontWeight: FontWeight.,
                  fontSize: 25,
                  color: Colors.white)),
          // TextButton(
          //   style: TextButton.styleFrom(
          //     textStyle: const TextStyle(fontSize: 20),
          //   ),
          //   onPressed: null,
          //   child: const Text('사용자'),
          // ),
          //const SizedBox(height: 60),
          // TextButton(
          //   style: TextButton.styleFrom(
          //     textStyle: const TextStyle(fontSize: 60),
          //   ),
          //   onPressed: () {},
          //   child: const Text('관리자'),
          // ),
          SizedBox(height: 250),
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Stack(
              children: <Widget>[
                Positioned.fill(
                  child: Container(
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: <Color>[
                          Color(0xFFFFFFFF),
                          Color(0xFFFFFFFF),
                          Color(0xFFFFFFFF),
                        ],
                      ),
                    ),
                  ),
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.all(20.0),
                    primary: Colors.black,
                    textStyle: const TextStyle(fontSize: 60),
                  ),
                  onPressed: () {
                    Get.to(Loginpage());
                  },
                  child: const Text('시작하기'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
