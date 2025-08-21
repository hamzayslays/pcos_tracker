import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pcos_tracker/resources/styles/app_colors.dart';
import '../../utils/routes/route_names.dart';
import '../../widgets/custom_field.dart';
import '../../widgets/login_buttons.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 58.h, left: 65.w, right: 65.w),
              child: Image.asset('assets/logo_light.png'),
            ),

            Card(
              color: AppColors.backgroundColor,
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
                    child: Text(
                      'Sign Up',
                      style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.bold,
                        fontSize: 22.sp,
                      ),
                      textAlign: TextAlign.start,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 24.h, left: 16.w),
                    child: Text(
                      'Full Name',
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
                      bottom: 8.h,
                    ),
                    child: CustomField(
                      hintText: 'Name',
                      prefixIcon: Icons.email_outlined,
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.only(left: 16.w),
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
                      bottom: 8.h,
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
                    padding: EdgeInsets.only(left: 16.w, right: 16.w, top: 8.h, bottom: 8.h),
                    child: CustomField(
                      hintText: '********',
                      prefixIcon: Icons.lock_open_outlined,
                      suffixIcon: Icons.visibility_off_outlined,
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.only(left: 16.w),
                    child: Text(
                      'Confirm Password',
                      style: GoogleFonts.montserrat(
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 16.w, right: 16.w, top: 8.h, bottom: 8.h),
                    child: CustomField(
                      hintText: '@passs12',
                      prefixIcon: Icons.lock_open_outlined,
                      suffixIcon: Icons.visibility_outlined,
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.only(
                      left: 16.w,
                      right: 16.w,
                      top: 20.h,
                    ),
                    child: LoginButtons(
                      buttonColor: Color(0xff8ABDE6),
                      text: 'Sign Up',
                      onPressed: () {
                        Navigator.pushNamed(context, RoutesName.signinScreen);
                      },
                      textColor: Colors.white,
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding: EdgeInsets.only(top: 28.h, bottom: 38.h),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'Already a member ? ',
                            style: GoogleFonts.montserrat(
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.pushNamed(
                                context,
                                RoutesName.signinScreen,
                              );
                            },
                            child: Text(
                              'Log in',
                              style: GoogleFonts.montserrat(
                                color: Color(0xff3875E9),
                                fontWeight: FontWeight.w400,
                              ),
                            ),
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
// Container(
// height: 200.h,
// child: DateOfBirth(
// initialDate: DateTime(2000, 1, 1),
// onDateChanged: (date) {
// setState(() {
// selectedDOB = date;
// });
// },
// ),
// ),
