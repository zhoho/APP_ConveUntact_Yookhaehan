import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:myapp/components/facility_info.dart';
import 'package:myapp/components/facility_rez.dart';
import 'package:myapp/components/facility_rez_info.dart';

class UtilityHallController extends GetxController {
  Rx<UtilityHall> utilityHall = Rx(UtilityHall());
  RxList<UtilityHall> utilityHallList = RxList();

  Rx<int?> stAbsTime = Rx<int?>(null);
  Rx<int?> endAbsTime = Rx<int?>(null);

  @override
  void onInit() {
    Text("단체 이용시설");
    for(int i=0; i<teamFacility.length; i++){
      utilityHallList.add(
        UtilityHall(
          id: i,
          name: teamFacility[i].name,
          rezs: [
            UtilityHallRez(
              id: 1,
              fieldId: i,
              stTime: DateTime.parse("2021-10-08 12:20"),
              endTime: DateTime.parse("2021-10-08 16:20"),
            ),
            UtilityHallRez(
              id: 2,
              fieldId: i,
              stTime: DateTime.parse("2021-10-08 14:50"),
              endTime: DateTime.parse("2021-10-08 16:20"),
            ),
          ]
        ),
      );
    }
    super.onInit();
  }
}