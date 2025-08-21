import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pcos_tracker/widgets/custom_field.dart';
import 'package:pcos_tracker/widgets/login_buttons.dart';

class SigninScreen extends StatefulWidget {
  const SigninScreen({super.key});

  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFBFBFB),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 98.h, left: 65.w, right: 65.w),
              child: Image.asset('assets/logo_light.png'),
            ),
        
            Card(
              color: Color(0xffFBFBFB),
              margin: EdgeInsets.all(16),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.r),
              ),
              elevation: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 16.w, top: 32.h),
                    child: Text('Login' , style: GoogleFonts.montserrat(fontWeight: FontWeight.bold, fontSize: 22.sp),textAlign: TextAlign.start,),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 24.h, left: 16.w),
                    child: Text(
                      'Email',
                      style: GoogleFonts.montserrat(
                        fontSize: 13.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 16.w,
                      right: 16.w,
                      top: 8.h,
                      bottom: 16.h,
                    ),
                    child: CustomField(
                      hintText: 'name@example.com',
                      prefixIcon: Icons.email_outlined,
                    ),
                  ),
        
                  Padding(
                    padding: EdgeInsets.only(left: 16.w),
                    child: Text(
                      'Password',
                      style: GoogleFonts.montserrat(
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 16.w, right: 16.w, top: 8.h),
                    child: CustomField(
                      hintText: '********',
                      prefixIcon: Icons.lock_open_outlined,
                      suffixIcon: Icons.visibility_off_outlined,
                    ),
                  ),
        
                  Padding(
                    padding:  EdgeInsets.only(left: 16.w, right: 16.w, top: 20.h),
                    child: LoginButtons(
                      buttonColor: Color(0xff8ABDE6),
                      text: 'Log in',
                      onPressed: (){},
                      textColor: Colors.white,
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding:  EdgeInsets.only(top: 28.h, bottom: 38.h),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text('Not a memeber yet? ', style: GoogleFonts.montserrat(fontWeight: FontWeight.w300)),
                          Text('Sign up', style: GoogleFonts.montserrat(color: Color(0xff3875E9),fontWeight: FontWeight.w400 ),
                          ),

                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
