import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch:  Colors.blue,
      ),
      darkTheme: ThemeData(primarySwatch: Colors.blue),
      color: Colors.green,
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});
  MySnackBar(message, context) {
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        duration: Duration(seconds: 1),
        content: Text(message),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          ' Medex',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        titleSpacing: 2,
        toolbarHeight: 60,
        toolbarOpacity: 1,
        elevation: 10,
        backgroundColor: const Color.fromARGB(255, 4, 152, 110),
        actions: [
          IconButton(
            onPressed: () {
               MySnackBar("HI", context);
            },
            icon: Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {
               MySnackBar("HELLO", context);
            },
            icon: Icon(Icons.notifications),
          ),
          IconButton(
            onPressed: () {
               MySnackBar("HEY", context);
            },
            icon: Icon(Icons.settings),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 10,
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
        onPressed: () => MySnackBar("Floating Action Button", context),
        child: Icon(Icons.add),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
        onTap: (index) {
          if (index == 0) {
            MySnackBar("Home", context);
          } else if (index == 1) {
            MySnackBar("Search", context);
          } else if (index == 2) {
            MySnackBar("Settings", context);
          }
        },
      ),
      drawer: Drawer(
        child: ListView(
         padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
               padding: EdgeInsets.all(0),
             
              child:UserAccountsDrawerHeader(
                margin: EdgeInsets.all(0),
                 decoration: BoxDecoration(
                color: const Color.fromARGB(255, 5, 123, 45),
              ),
                accountName: Text(
                  'John Doe',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                accountEmail: Text('sazzad@gmail.com',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
                currentAccountPicture:CircleAvatar(child: Image.network('https://static.vecteezy.com/system/resources/thumbnails/048/044/665/small/portrait-of-happy-smiling-young-businessman-isolated-on-transparent-background-png.png'),) 
                
              ),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Profile'),
              onTap: () {
                MySnackBar("Profile", context);
              },
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
                MySnackBar("Home", context);
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () {
                MySnackBar("Settings", context);
              },
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text('Logout'),
              onTap: () {
                 MySnackBar("Logout", context);
              },
            ),
          ],
        ),
      ),
      endDrawer: Drawer(
        child: ListView(
         padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
               padding: EdgeInsets.all(0),
             
              child:UserAccountsDrawerHeader(
                margin: EdgeInsets.all(0),
                 decoration: BoxDecoration(
                color: const Color.fromARGB(255, 5, 123, 45),
              ),
                accountName: Text(
                  'John Doe',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                accountEmail: Text('sazzad@gmail.com',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
                currentAccountPicture:CircleAvatar(child: Image.network('https://static.vecteezy.com/system/resources/thumbnails/048/044/665/small/portrait-of-happy-smiling-young-businessman-isolated-on-transparent-background-png.png'),) 
                
              ),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Profile'),
              onTap: () {
                MySnackBar("Profile", context);
              },
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
                MySnackBar("Home", context);
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () {
                MySnackBar("Settings", context);
              },
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text('Logout'),
              onTap: () {
                 MySnackBar("Logout", context);
              },
            ),
          ],
        ),
      ),
      body: Container(
        //color: const Color.fromARGB(255, 144, 144, 5),
        alignment: Alignment.center,
        margin: EdgeInsets.fromLTRB(20, 40, 25, 30),
        padding: EdgeInsets.all(20),
           decoration: BoxDecoration(
          color: const Color.fromARGB(255, 129, 159, 6),
          border: Border.all(
            color: Colors.black,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: const Color.fromARGB(255, 74, 65, 65).withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
          child:
           Text(
            'Welcome to Medex',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        
       
         
        

      ),
       
        
    );
  }
}
