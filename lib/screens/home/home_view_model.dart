

import '../../base.dart';
import '../../database_utils/database_utils.dart';
import '../../models/room.dart';
import 'home_navigator.dart';

class HomeViewModel extends BaseViewModel<HomeNavigator> {
  List<Room> rooms = [];

  void getRooms() {
    DataBaseUtils.getRoomsFromFirestore().then((value) {
      rooms = value;
    });
  }
}
