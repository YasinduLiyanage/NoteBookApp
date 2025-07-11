import 'package:flutter/material.dart';
import 'package:notebook/utils/constants.dart';
import 'package:notebook/utils/textstyles.dart';
import 'package:notebook/widgets/notes_todo_card.dart';
import 'package:notebook/widgets/progress_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Note Book",style: ApptextStyles.appTitle),
        
      ),
      body: Padding(padding: const EdgeInsets.all(8.0),child: Column(
        children: [
          SizedBox(height:AppConstants.kDefaultPadding ,),
          ProgressCard(
            completedTasks: 4,
            totalTasks: 5,
          ),
          SizedBox(height:AppConstants.kDefaultPadding *1.5,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            NotesTodoCard(
              title: "Notes",
              description: "3 notes",
              icon: Icons.bookmark_add_outlined,
            ),
            NotesTodoCard(
              title: "To-Do List",
              description: "3 Tasks",
              icon: Icons.today_outlined,
            ),
          ],),
          SizedBox(height:AppConstants.kDefaultPadding *1.5,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Today's Progress", style: ApptextStyles.appSubtitle),
              Text("See All", style: ApptextStyles.appButton,)
            ],
          )


        ],
      ),),
    );
  }
}