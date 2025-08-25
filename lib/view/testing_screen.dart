import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.all(16.w),
        child: GridView.count(
          crossAxisCount: 2,
          mainAxisSpacing: 16.h,
          crossAxisSpacing: 16.w,
          children: [
            _buildCard(
              title: "Drink Water",
              progress: 0.25, // 2/8
              centerText: "2/8",
              buttonText: "Drink",
              color: Colors.blue,
              icon: Icons.local_drink,
            ),
            _buildCard(
              title: "Meditation",
              progress: 0.0,
              centerWidget: Image.asset("assets/avatar.png", height: 50.h),
              buttonText: "Begin",
              color: Colors.green,
            ),
            _buildInfoCard(
              title: "Sleep",
              value: "7h 31min",
              subtitle: "updated 6h ago",
              icon: Icons.nightlight_round,
              color: Colors.green,
            ),
            _buildInfoCard(
              title: "Steps",
              value: "10823",
              subtitle: "updated 30 mins ago",
              icon: Icons.directions_walk,
              color: Colors.brown,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCard({
    required String title,
    required double progress,
    String? centerText,
    Widget? centerWidget,
    required String buttonText,
    required Color color,
    IconData? icon,
  }) {
    return Container(
      height: 500,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.r),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade300,
            blurRadius: 8,
            offset: const Offset(2, 4),
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.all(12.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(title,
                style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87)),
            SizedBox(height: 10.h),
            Stack(
              alignment: Alignment.center,
              children: [
                SizedBox(
                  width: 80.w,
                  height: 80.w,
                  child: CircularProgressIndicator(
                    value: progress,
                    strokeWidth: 8.w,
                    backgroundColor: Colors.grey.shade200,
                    valueColor: AlwaysStoppedAnimation(color),
                  ),
                ),
                centerWidget ??
                    Text(centerText ?? "",
                        style: TextStyle(
                            fontSize: 16.sp, fontWeight: FontWeight.bold)),
              ],
            ),
            SizedBox(height: 12.h),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: color,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.r),
                ),
              ),
              child: Text(buttonText,
                  style: TextStyle(fontSize: 12.sp, color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoCard({
    required String title,
    required String value,
    required String subtitle,
    required IconData icon,
    required Color color,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.r),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade300,
            blurRadius: 8,
            offset: const Offset(2, 4),
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.all(16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 28.sp, color: color),
            SizedBox(height: 10.h),
            Text(value,
                style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.black)),
            SizedBox(height: 6.h),
            Text(subtitle,
                style: TextStyle(fontSize: 12.sp, color: Colors.grey)),
          ],
        ),
      ),
    );
  }
}
