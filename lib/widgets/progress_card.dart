import 'package:flutter/material.dart';
import 'package:notebook/utils/colours.dart';
import 'package:notebook/utils/constants.dart';
import 'package:notebook/utils/textstyles.dart';

class ProgressCard extends StatefulWidget {
  final int completedTasks;
  final int totalTasks;

  const ProgressCard({
    super.key,
    required this.completedTasks,
    required this.totalTasks,
  });

  @override
  State<ProgressCard> createState() => _ProgressCardState();
}

class _ProgressCardState extends State<ProgressCard> {
  @override
  Widget build(BuildContext context) {

    //calculation for the progresss card
    double progressPercentage = widget.totalTasks != 0 ? (widget.completedTasks / widget.totalTasks) * 100 : 0;
    
    return Container(
      padding: const EdgeInsets.all(AppConstants.kDefaultPadding),
      decoration: BoxDecoration(
        color: AppColors.kCardColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Today's Progress", style: ApptextStyles.appSubtitle),
              SizedBox(height: 8),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.6,
                child: Text(
                  "${widget.completedTasks} of ${widget.totalTasks} tasks completed. Keep up the progress",
                  style: ApptextStyles.appDescriptionSmall.copyWith(
                    color: AppColors.kWhiteColor.withOpacity(0.5),
                  ),
                ),
              ),
            ],
          ),
          Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.2,
                height: MediaQuery.of(context).size.width * 0.2,
                decoration: BoxDecoration(
                  gradient: AppColors().kPrimaryGradient,
                  borderRadius: BorderRadius.circular(100),
                ),
              ),
              Positioned.fill(child: Center(
                child: Text("${progressPercentage}%",
                style: ApptextStyles.appSubtitle.copyWith(fontWeight: FontWeight.bold)),
              ))
            ],
          ),
        ],
      ),
    );
  }
}
