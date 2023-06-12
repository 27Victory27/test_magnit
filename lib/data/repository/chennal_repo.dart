import '../model/channal_model.dart';

class ChennnalRepo{
  final List<ChannalModel> myList = [
    ChannalModel(0,'test_img_hanna.jpg', 'testNameChennal1', 'testLastMsgChennal1', 1686237244, 17),
    ChannalModel(1,'test_img_hanna.jpg', 'testNameChennal22', 'testLastMsgChennal22', 1686237244, 17),
    ChannalModel(2,'test_img_hanna.jpg', 'testNameChennal333', 'testLastMsgChennal333', 1686237244, 17),
    ChannalModel(3,'test_img_hanna.jpg', 'testNameChennal4444', 'testLastMsgChennal4444', 1686237244, 17),
    ChannalModel(4,'test_img_hanna.jpg', 'testNameChennal55555', 'testLastMsgChennal55555', 1686237244, 17),
    ChannalModel(5,'test_img_hanna.jpg', 'testNameChennal666666', 'testLastMsgChennal666666', 1686237244, 17),
    ChannalModel(6,'test_img_hanna.jpg', 'testNameChennal7777777', 'testLastMsgChennal7777777', 1686237244, 17),
    ChannalModel(7,'test_img_hanna.jpg', 'testNameChennal88888888', 'testLastMsgChennal88888888', 1686237244, 17),
    ChannalModel(8,'test_img_hanna.jpg', 'testNameChennal999999999', 'testLastMsgChennal999999999', 1686237244, 17),
    ChannalModel(9,'test_img_hanna.jpg', 'testNameChennal0000000000', 'testLastMsgChennal0000000000', 1686237244, 17),
  ];
  Future< List<ChannalModel> > getChennals () async{
    return myList;
  }
}