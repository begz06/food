import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:foodui/assets/app_icons.dart';
import 'package:foodui/assets/colors.dart';


class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  TextEditingController userEmailController = TextEditingController();
  TextEditingController userPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Login Account',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 6,
            ),
            const Text(
              'Please login with registered account',
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Color(0xffA7AEC1)),
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              'Email or Phone Number',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              height: 6,
            ),
            SizedBox(
              height: 52,
              child: TextField(
                controller: userEmailController,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  fillColor: const Color(0xffF9F9F9),
                  filled: true,
                  hintText: 'Enter your email or phone number',
                  prefixIcon: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SvgPicture.asset(
                      AppIcons.sms,
                    ),
                  ),
                  hintStyle: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color(0xffA7AEC1)),
                  prefixStyle: const TextStyle(color: Colors.black, fontSize: 17),
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
            ),
            //
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Password',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              height: 6,
            ),
            SizedBox(
              height: 52,
              child: TextField(
                controller: userPasswordController,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  fillColor: const Color(0xffF9F9F9),
                  filled: true,
                  hintText: 'Create your password',
                  prefixIcon: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SvgPicture.asset(
                      AppIcons.lock,
                    ),
                  ),
                  suffixIcon: SvgPicture.asset(AppIcons.aye),
                  hintStyle: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color(0xffA7AEC1)),
                  prefixStyle: const TextStyle(color: Colors.black, fontSize: 17),
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                  onTap: (){},
                  child: Text('Forgot Password?',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: primaryColor),),
                ),

              ],
            
            ),
            const SizedBox(height: 26,),
            const SizedBox(
                height: 40,
              ),
              GestureDetector(
                onTap: () {
                  print('bosildi');
                  Navigator.pushNamed(context, 'tabbar');
                },
                child: Container(
                  alignment: Alignment.center,
                  height: 56,
                  decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: const Text(
                    'Sign in',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              const Center(
                child: Text(
                  'Or using other method',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color(0xffA7AEC1)),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              ////google
              Container(
                height: 56,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade300),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      AppIcons.google,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text(
                      'Sign Up with Google',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 6,
              ),
              Container(
                height: 56,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade300),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      AppIcons.facebook,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text(
                      'Sign Up with Google',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
          ],
        ),
      )),
    );
  }
}
