import 'package:flutter/material.dart';
import 'package:hypermarket_addproduct/presentation/userslist_screen/view/userslist_screen.dart';

class UserPurchaseScreen extends StatefulWidget {
  @override
  _UserPurchaseScreen createState() => _UserPurchaseScreen();
}

class _UserPurchaseScreen extends State<UserPurchaseScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();

    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        bottom: TabBar(
          controller: _tabController,
          tabs: [
            Tab(
                child: Text(
              "All Users",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            )),
            Tab(
                child: Text(
              "View Purchases",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            )),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          UsersListScreen(),

          // Contents of Tab 2
          Center(child: Text('Tab 2 Content')),
        ],
      ),
    );
  }
}
