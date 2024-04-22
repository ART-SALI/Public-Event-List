import 'package:flutter/material.dart';
import 'package:public_event_list/core/style/text_styles.dart';
import 'package:public_event_list/core/widgets/app_bars/base_app_bar.dart';
import 'package:public_event_list/core/util/pixel_sizer.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class MainScreenAppBar extends StatelessWidget implements PreferredSizeWidget{
  const MainScreenAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BaseAppBar(
      backgroundColor: Colors.green,
      rightWidget: const Icon(Icons.search),
      leftWidget: Text('PEL', style: const Font().s22.white,),
    );
  }

  @override
  Size get preferredSize => Size(100.w, 50.ph);
}