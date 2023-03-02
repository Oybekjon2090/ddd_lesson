import 'package:ddd_lesson/presentation/componenet/drop_down.dart';
import 'package:ddd_lesson/presentation/componenet/drop_down_xovli.dart';
import 'package:ddd_lesson/presentation/componenet/gridview_bulder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../componenet/custom_text_form.dart';
import '../../styles/styles.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  late TextEditingController controller;

  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    controller = TextEditingController();
    super.initState();
  }

  void dispose() {
    tabController.dispose();
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          height: 56.h,
          width: double.infinity,
          child: Row(
            children: [
              Icon(
                Icons.menu,
              ),
              Expanded(
                child: CustomTextFrom(
                  hintext: '',
                  label: "Search",
                  controller: controller,
                ),
              ),
              Icon(Icons.settings_ethernet),
            ],
          ),
        ),
        bottom: TabBar(controller: tabController, tabs: [
          Tab(
            text: 'Arenda',
          ),
          Tab(
            text: 'Sotib olish',
          ),
        ]),
      ),
      body: Column(
        children: [
          16.verticalSpace,
          Container(
            width: double.infinity,
            height: 200,
            color: Styles.tabColor,
            child: Column(
              children: [
                Container(
                  color: Colors.amber,
                  child: Row(
                    children: [
                      Catigory(),
                      Catigory(),
                    ],
                  ),
                ),
                Row(
                  children: [Catigory(), DropdownXovli()],
                ),
              ],
            ),
          ),
          16.verticalSpace,
          16.verticalSpace,
          Expanded(
            child: TabBarView(controller: tabController, children: [
              ListView(shrinkWrap: true, children: [
                Text(
                  "Top e’lonlar",
                  style: TextStyle(color: Colors.black),
                ),
                GredviewPage(
                  itemCount: 6,
                )
              ]),
              GredviewPage(
                itemCount: 6,
              )
            ]),
          ),
        ],
      ),
    );
  }
}
