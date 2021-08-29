import 'package:flutter/material.dart';
import 'package:mangmment_emps/config/globalparams.dart';
import 'package:mangmment_emps/views/pages/employers.dart';
class MyDrawer extends StatelessWidget {
  MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [
                        Colors.white,
                        Colors.grey
                      ]
                  )
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(backgroundImage: AssetImage('assets/user.png'),
                      radius:60
                  ),
                ],
              )
          ),
          
          ...(GlobalParams.menus as List).map((e) {
            return Column(
              children: [
                ListTile(
                title: Text('${e['title']}',style: TextStyle(fontSize: 18),),
                leading: e['icon'],
                onTap: (){
                  Navigator.of(context).pop();
                  Navigator.pushNamed(context, "${e['route']}");},
                ),
                Divider(color:Colors.black,height: 4,)
              ],
            );
           })
         ],
      ),

    );

  }

}