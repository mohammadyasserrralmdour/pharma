import 'package:pharma_app/features/main/presentation/widgets/bottom_navbar.dart';
import 'package:pharma_app/features/pharmacy/features/Drugs/presentation/screen/drug_home_screen.dart';
import 'package:pharma_app/features/pharmacy/features/Employees/screen/employee_home_screen.dart';
import 'package:pharma_app/features/pharmacy/features/Sales/presentation/screen/sales_home_screen.dart';
import 'package:pharma_app/features/pharmacy/features/mointoring/screen/monitoring_home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PharmacyScreen extends StatefulWidget {
  const PharmacyScreen({super.key});

  @override
  State<PharmacyScreen> createState() => _PharmacyScreenState();
}

class _PharmacyScreenState extends State<PharmacyScreen> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: EdgeInsets.only(top: 40.h, left: 20.w,right: 20.w),
          child: buildbody(counter),
          ),
      bottomNavigationBar: BottomNavbar(
        currentTab: counter,
        changeCurrentTab: (p0) {
          setState(() {
            counter = p0;
          });
        },
      ),
    );
  }
  buildbody(int index){
    switch(index){
      case 0: return const DrugHomeScreen()  ;
      case 1: return const SalesHomeScreen() ;
      case 2: return const EmployeeHomeScreen() ;
      case 3: return const MonitoringHomeScreen() ;
    }
  }
}
