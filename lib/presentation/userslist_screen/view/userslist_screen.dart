
import 'package:flutter/material.dart';

class UsersListScreen extends StatefulWidget {
  const UsersListScreen({super.key});

  @override
  State<UsersListScreen> createState() => _UsersListScreenState();
}

class _UsersListScreenState extends State<UsersListScreen> {
  List<String> userlist=[
    "meera",
    "aarav"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title:Text ("Users List",style: TextStyle(color: Colors.white,fontSize: 25),),


      ),
      body:ListView.builder(
        itemCount: userlist.length,
        itemBuilder: (context,index) {
          return ListTile(
            title: Text(userlist[index]),
        
        
          );
        }
          
         
        
      ),
    );

  }
}