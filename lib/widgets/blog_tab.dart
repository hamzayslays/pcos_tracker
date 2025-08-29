import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../view_model/explore_view_model.dart';
import '../widgets/blogs_card.dart';

class BlogsSection extends StatelessWidget {
  const BlogsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final exploreViewModel = Provider.of<ExploreViewModel>(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 12.h, bottom: 12.h),
          child: Text(
            'Newest Blogs',
            style: GoogleFonts.montserrat(
              color: const Color(0xff2F4F4F),
              fontWeight: FontWeight.w700,
              fontSize: 22.sp,
            ),
          ),
        ),
        SizedBox(
          height: 298.h,
          width: double.infinity,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: exploreViewModel.blogItems.length,
            itemBuilder: (context, index) {
              final item = exploreViewModel.blogItems[index];
              return BlogsCard(item: item);
            },
          ),
        ),
      ],
    );
  }
}
