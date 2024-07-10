
import 'package:flutter/cupertino.dart';
import 'package:hiremi_version_two/Utils/AppSizes.dart';
import 'package:hiremi_version_two/Utils/colors.dart';


class OutlinedContainer extends StatelessWidget {
  const OutlinedContainer({Key? key, 
     required this.child, required this.title,
    this.showEdit = true,
  }) : super(key: key);

  final Widget child;
  final String title;
  final bool showEdit;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding:  EdgeInsets.all(Sizes.responsiveDefaultSpace(context)),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(Sizes.radiusSm),
          border: Border.all(width: 0.5,color: AppColors.secondaryText)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
               Text(title,style:const TextStyle(fontSize: 16.0,fontWeight: FontWeight.w500,color: AppColors.black,)),
              if(showEdit)
              Image.asset('images/icons/img_3.png',height: 16,width: 16,),
            ],
          ),
           SizedBox(height: Sizes.responsiveMd(context)),
          child
        ],
      )
    );
  }
}