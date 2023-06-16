import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_magnit/main/account_panel/account_panel_cubit.dart';

import '../../data/model/channal_model.dart';
import '../../data/model/user_model.dart';
import '../../main/account_panel/account_panel_state.dart';
import '../../main/bloc/theme_bloc.dart';
import '../../main/bloc/theme_state.dart';
import 'block/main_cubit.dart';
import 'block/main_state.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              iconTheme: IconThemeData(color: Colors.white),
              backgroundColor: Colors.blue,
              title: Text(style: TextStyle(color: Colors.white), 'Telegram'),
              actions: [
                Icon(Icons.search),
                SizedBox(
                  width: 15,
                )
              ],
            ),
            drawer: Drawer(child: AccountPanelInfo(),),
            body: BlocBuilder<MainCubit, MainState>(
              builder: (BuildContext context, MainState state) => state.when(
                loading: () => CircularProgressIndicator(),
                succsess: (channels) => Stack(
                  alignment: AlignmentDirectional.bottomEnd,
                  children: [
                    ListView.separated(
                      separatorBuilder: (BuildContext context, int index) =>
                          const ChatDivider(),
                      itemCount: channels.length+1,
                      itemBuilder: (BuildContext context, int index) {
                        if (index < channels.length) {
                          return ChatElement(channalModel: channels[index],);
                        } else {
                          return EndChatElemnt();
                        }
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            minimumSize: Size(60, 60),
                            backgroundColor: Colors.blue,
                            shape: CircleBorder(),
                          ),
                          onPressed: () {},
                          child: Icon(color: Colors.white, Icons.edit)),
                    ),
                  ],
                ),
                failure: (error) => Container(
                  color: Colors.red,
                ),
              ),
            )));
  }
}

class AccountPanelInfo extends StatelessWidget {
  const AccountPanelInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AccountPanelCubit>(
      create: (context) => AccountPanelCubit()..initialData(),
      child: BlocBuilder<AccountPanelCubit, AccountPanelState>(
          builder: (BuildContext context, AccountPanelState state) => state.when(
            loading: () => CircularProgressIndicator(),
            succsess: (UserModel userModel) {
              return
                Column(
                  children: [
                    Container(
                      color: Colors.blue,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 15,left: 10,right: 8),
                        child: Column(
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  child: Image.asset('assets/images/${userModel.img}'),
                                  width: 50,
                                  height: 50,
                                  clipBehavior: Clip.hardEdge,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(360),
                                    color: Colors.black,
                                  ),
                                ),
                                Expanded(child: SizedBox()),
                                Container(
                                  child: BlocBuilder<ThemeCubit, ThemeState>(
                                      builder: (BuildContext contextBuild, ThemeState stateTheme) =>stateTheme.when(
                                          light: (){
                                            return IconButton(
                                              icon:  Icon(Icons.nights_stay
                                              ),onPressed: (){
                                              context.read<ThemeCubit>().setDarkTheme();
                                            },);
                                          },
                                          dark: (){
                                            return IconButton(
                                              icon:  Icon(Icons.sunny
                                              ),onPressed: (){
                                              context.read<ThemeCubit>().setLightTheme();
                                            },);
                                          })
                                  ),
                                ),
                              ],
                            ),
                            Row(

                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('${userModel.userName}'),
                                    Text('${userModel.userTelephone}')
                                  ],
                                ),
                                Expanded(child: SizedBox()),
                                IconButton(onPressed: (){}, icon: Icon(Icons.keyboard_arrow_down))
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                );
            },
            failure: (error) => Container(
              color: Colors.red,
            ),

          )

      ),
    );
  }
}

class ChatElement extends StatelessWidget {
  final ChannalModel channalModel;

  const ChatElement({
    Key? key,
    required this.channalModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final time = DateTime.fromMillisecondsSinceEpoch(channalModel.timeLastMsgChennal);
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: (){Navigator.of(context)
          .pushNamed('/chat_screen',arguments:channalModel);},
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Row(
          children: [
            Container(
              child: Image.asset('assets/images/${channalModel.img}'),
              width: 50,
              height: 50,
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(360),
                color: Colors.black,
              ),
            ),
            SizedBox(width: 5),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 5, bottom: 5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                        '${channalModel.nameChennal}'),
                    Text(
                      '${channalModel.lastMsgChennal}',
                      style: TextStyle(overflow: TextOverflow.ellipsis),
                      maxLines: 1,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(width: 5),
            Padding(
              padding: const EdgeInsets.only(top: 5, bottom: 5),
              child: Column(
                children: [
                  Text('${time.hour}:${time.minute}'),
                  Container(
                    width: 23,
                    height: 23,
                    child: Center(
                        child: Text(
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.bold),
                            '${channalModel.unReadMsgChennal}')),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(360),
                      color: Colors.green,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ChatDivider extends StatelessWidget {
  const ChatDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 60),
      child: Container(
        width: double.infinity,
        height: 0.3,
        color: Colors.grey[500],
      ),
    );
  }
}

class EndChatElemnt extends StatelessWidget {
  const EndChatElemnt({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.shade300,
      height: 50,
      child: Padding(
        padding: const EdgeInsets.only(left: 20.0, top: 5),
        child: Text(
          "Нажмите на карандаш для началаобщения",
          style: TextStyle(color: Colors.grey.shade600),
        ),
      ),
    );
  }
}
