import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:safar/controller/home_controller.dart';
import 'package:safar/view/job_sheet_view.dart';
import 'package:safar/view/select_scan_type_view.dart';
import 'package:pie_chart/pie_chart.dart';

class DashboardView extends StatefulWidget {

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();

  final homeController = Get.put(HomeController());

  String userName = '';
  String userRole = '';

  var c;
  // var success =  0; var inProgress = 0; var paid= 0 ;
  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: const Text(
          'DashBoard',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xFF214162),
        leading: Container(
          color: const Color(0xFFff5722),
          child: IconButton(
            onPressed: () {
              _scaffoldKey.currentState!.openDrawer();
            },
            icon: const Icon(
              Icons.menu_rounded,
              color: Colors.white,
              size: 30,
            ),
          ),
        ),
      ),
      drawer: Drawer(
        child: Stack(
          children: [
            Container(
              height: double.infinity,
              width: double.infinity,
              color: const Color(0xFF15283C),
            ),
            Container(
              height: double.infinity,
              width: double.infinity,
              child: Image.asset(
                'assets/images/pattern_h.png',
                fit: BoxFit.cover,
              ),
            ),
            SafeArea(
              child: Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    color: const Color(0xFF214162),
                    padding: const EdgeInsets.all(16),
                    height: 150,
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/images/safarlogo.png',
                          width: 150,
                        ),
                        const SizedBox(height: 10,),
                        Text(
                          'Welcome To Safar',
                          style: const TextStyle(
                            fontSize: 24,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10,),
                  const Padding(
                    padding: EdgeInsets.only(left: 16.0),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'General',
                        style: TextStyle(
                          fontSize: 24,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  const Divider(color: Colors.red, thickness: 2,),
                  const SizedBox(height: 10,),
                  ListTile(
                    onTap: () {
                      _scaffoldKey.currentState!.closeDrawer();
                    },
                    leading: const Icon(Icons.speed_rounded,
                        color: Colors.yellowAccent),
                    title: const Text(
                      'DashBoard',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  ListTile(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const SelectScanTypeView()));
                    },
                    leading: const Icon(Icons.inventory_2_rounded,
                        color: Colors.blueAccent),
                    title: const Text(
                      'Outer Box',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  ListTile(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const JobSheetView()));
                    },
                    leading: const Icon(Icons.inventory_rounded,
                        color: Colors.deepOrangeAccent),
                    title: const Text(
                      'Job Sheet',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      body: Center(
        child: Container(
          child: Image.asset(
              "assets/images/safarlogo.png",
              width: 200,
            height: 200,
          ),
        ),
      ),
    );
  }
}
