import '../model/user_model.dart';

class UserRepo{
  final List<UserModel> myList = [
    UserModel(120003984, 'Victory Dutova','8 938 477 32 65'),
    UserModel(120003985, 'Victory Aaa','8 938 477 32 66'),
    UserModel(120003986, 'Victory Bbb','8 938 477 32 67'),
    UserModel(120003987, 'Victory Ddd','8 938 477 32 68'),
  ];

  Future< UserModel > getCurrentUser () async{
    return myList[0];
  }
}