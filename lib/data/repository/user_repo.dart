import '../model/user_model.dart';

class UserRepo {
  final List<UserModel> myList = [
    UserModel(120003984, 'Victory Dutova', '8 938 477 32 65','test_img_channal.jpg'),
    UserModel(120003985, 'Степан Елизборян', '8 938 477 32 66','test_img_channal.jpg'),
    UserModel(120003986, 'Екатерина Корякина', '8 938 477 32 67','test_img_channal.jpg'),
    UserModel(120003987, 'Victory Ddd', '8 938 477 32 68','test_img_channal.jpg'),
  ];

  Future<UserModel> getCurrentUser() async {
    return myList[0];
  }
}
