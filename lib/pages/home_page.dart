import 'package:flutter/material.dart';
import 'package:notebook/utils/textstyles.dart';
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
          ProgressCard(
            completedTasks: 4,
            totalTasks: 5,
          ),
        ],
      ),),
    );
  }
}