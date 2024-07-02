import 'package:clinic_engine_task/modules/ask_your_doctor/presentation/views/widgets/inquiries_widget.dart';
import 'package:flutter/material.dart';

class CustomAskYourDoctorTabBar extends StatefulWidget {
  const CustomAskYourDoctorTabBar({super.key});

  @override
  State<CustomAskYourDoctorTabBar> createState() =>
      _CustomAskYourDoctorTabBarState();
}

class _CustomAskYourDoctorTabBarState extends State<CustomAskYourDoctorTabBar>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height - 290,
      child: Column(
        children: <Widget>[
          TabBar(
            controller: _tabController,
            indicatorSize: TabBarIndicatorSize.tab,
            tabs: const [
              Tab(text: 'Open inquiries'),
              Tab(text: 'Closed inquiries'),
            ],
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: const [
                InquiriesWidget(
                  branchName: "Fifth Settlement Branch",
                  date: "24-01-2024 05:35:00",
                  inquirie:
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                ),
                InquiriesWidget(
                  branchName: "Fifth Settlement Branch",
                  date: "21-01-2024 03:22:00",
                  inquirie:
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
