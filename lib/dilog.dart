import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:rikaa/feature/core/color_manger.dart';
import 'package:rikaa/feature/view/widget/widget_button_custom.dart';

class DilogScreen extends StatelessWidget {
  const DilogScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 320,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 8,
          ),
          SvgPicture.asset('assets/svg/icon_dilog.svg'),
          const SizedBox(
            height: 20,
          ),
          Text(
            'Successful!',
            style: Theme.of(context).textTheme.headline6?.copyWith(
                color: ColorManger.colorBlack,
                fontFamily: 'Mont-Bold',
                fontSize: 24),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            'You have successfully your\nshopping cart list!',
            style: Theme.of(context).textTheme.headline2?.copyWith(
                color: ColorManger.colorBlack2,
                fontFamily: 'Mont-Regular',
                fontSize: 16),
            maxLines: 2,
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 30,
          ),
          TextButton(
              onPressed: () => Navigator.pop(context, 'Cancel'),
              child: Padding(
                padding: const EdgeInsets.only(right: 70, left: 70),
                child: WidgetButtonCustom(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    textBody: 'Checkout',
                    colorsBorderSide: ColorManger.colorBlack,
                    color: ColorManger.colorBlack,
                    backgroundColor: ColorManger.colorBlack),
              )),
          const SizedBox(
            height: 8,
          ),
        ],
      ),
    );
  }
}
