import 'package:argedor_task/src/features/first/presentation/widgets/custom_appbar.dart';
import 'package:argedor_task/src/features/first/presentation/widgets/custom_chart.dart';
import 'package:flutter/material.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen>
    with TickerProviderStateMixin {
  late final TabController tabController;
  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
        appBar: CustomAppBar(
          tabController: tabController,
        ),
        body: TabBarView(
          controller: tabController,
          children: const <Widget>[
            CustomChart(),
            Center(
              child: Text("Technicals"),
            ),
            Center(
              child: Text("Transactions"),
            ),
          ],
        ));
  }
}
