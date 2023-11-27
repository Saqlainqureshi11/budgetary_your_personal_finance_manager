import 'package:budgetary_your_personal_finance_manager/signin.dart';
import 'package:flutter/material.dart';

class signupScreen extends StatefulWidget {
  const signupScreen({super.key});

  @override
  State<signupScreen> createState() => _signupScreenState();
}

class _signupScreenState extends State<signupScreen> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
              onTap: () {},
              child: Container(
                height: height * 0.05,
                width: width * 0.09,
                child: Center(
                  child: Icon(
                    Icons.keyboard_arrow_left_rounded,
                    color: Colors.white,
                    size: 35,
                  ),
                ),
                decoration: BoxDecoration(
                    color: Colors.teal, borderRadius: BorderRadius.circular(8)),
              ),
            ),
            SizedBox(
              height: height * 0.1,
            ),
            Text(
              'CREATE AN ACCOUNT ON\nBUDGETARY',
              style: Theme.of(context).textTheme.displayLarge,
            ),
            SizedBox(
              height: height * 0.01,
            ),
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.person),
                contentPadding: EdgeInsets.symmetric(horizontal: 20),
                hintText: 'Usrename or Email',
                labelText: 'Usrename or Email',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
            SizedBox(
              height: height * 0.03,
            ),
            TextFormField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock_outline),
                  contentPadding: EdgeInsets.symmetric(horizontal: 20),
                  hintText: 'Password',
                  labelText: 'Password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  suffixIcon: Icon(Icons.remove_red_eye_outlined)),
            ),
            SizedBox(
              height: height * 0.03,
            ),
            TextFormField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock_outline),
                  contentPadding: EdgeInsets.symmetric(horizontal: 20),
                  hintText: 'Confirm Password',
                  labelText: 'Confirm Password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  suffixIcon: Icon(Icons.remove_red_eye_outlined)),
            ),
            SizedBox(
              height: height * 0.03,
            ),
            Center(
              child: Container(
                width: width * 0.4,
                height: height * 0.06,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20))),
                    onPressed: () {},
                    child: Text(
                      "CREATE ACCOUNT",
                    )),
              ),
            ),
            SizedBox(
              height: height * 0.03,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: height * 0.002,
                  width: width * 0.2,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 255, 255, 255),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 1,
                          blurRadius: 5,
                          offset: Offset(0, 1),
                        )
                      ]),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text('Or Continue with'),
                ),
                Container(
                  height: height * 0.002,
                  width: width * 0.2,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 255, 255, 255),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 1,
                          blurRadius: 5,
                          offset: Offset(0, 1),
                        )
                      ]),
                ),
              ],
            ),
            SizedBox(
              height: height * 0.03,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: width * 0.05,
                ),
                ElevatedButton(onPressed: () {}, child: Icon(Icons.facebook)),
                SizedBox(
                  width: width * 0.05,
                ),
                ElevatedButton(onPressed: () {}, child: Icon(Icons.apple)),
                SizedBox(
                  width: width * 0.05,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Image.asset(
                    color: Colors.white,
                    'assets/images/googlelogo.png',
                    width: width * 0.04,
                    height: height * 0.04,
                  ),
                )
              ],
            ),
            SizedBox(
              height: height * 0.03,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('Already have an account?'),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SigninScreen(),
                        ));
                  },
                  child: Text(
                    ' Login here',
                    style: TextStyle(color: Colors.teal),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
