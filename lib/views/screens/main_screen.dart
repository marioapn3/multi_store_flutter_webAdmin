import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_admin_scaffold/admin_scaffold.dart';
import 'package:multi_store_udemy_web_admin/views/screens/side_bar_screens/categories_screen.dart';
import 'package:multi_store_udemy_web_admin/views/screens/side_bar_screens/dashboard_screen.dart';
import 'package:multi_store_udemy_web_admin/views/screens/side_bar_screens/orders_screen.dart';
import 'package:multi_store_udemy_web_admin/views/screens/side_bar_screens/products_screen.dart';
import 'package:multi_store_udemy_web_admin/views/screens/side_bar_screens/upload_banner_screen.dart';
import 'package:multi_store_udemy_web_admin/views/screens/side_bar_screens/vendors_screen.dart';
import 'package:multi_store_udemy_web_admin/views/screens/side_bar_screens/withdrawal_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  Widget _selectedIteM = DashboardScreen();

  screenSelector(item) {
    switch (item.route) {
      case DashboardScreen.routeName:
        setState(() {
          _selectedIteM = const DashboardScreen();
        });
        break;
      case VendorScreen.routeName:
        setState(() {
          _selectedIteM = const VendorScreen();
        });
        break;
      case WithdrawalScreen.routeName:
        setState(() {
          _selectedIteM = const WithdrawalScreen();
        });
        break;
      case OrderScreen.routeName:
        setState(() {
          _selectedIteM = const OrderScreen();
        });
        break;
      case CategoriesScreen.routeName:
        setState(() {
          _selectedIteM = CategoriesScreen();
        });
        break;
      case ProductsScreen.routeName:
        setState(() {
          _selectedIteM = const ProductsScreen();
        });
        break;
      case UploadBannerScreen.routeName:
        setState(() {
          _selectedIteM = UploadBannerScreen();
        });
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return AdminScaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('AdminManagement'),
        backgroundColor: Colors.yellow.shade900,
      ),
      sideBar: SideBar(
        items: const [
          AdminMenuItem(
            title: 'Dashboard',
            icon: Icons.dashboard,
            route: DashboardScreen.routeName,
          ),
          AdminMenuItem(
            title: 'Vendors',
            icon: Icons.person_3,
            route: VendorScreen.routeName,
          ),
          AdminMenuItem(
            title: 'Withdrawal',
            icon: Icons.money_off,
            route: WithdrawalScreen.routeName,
          ),
          AdminMenuItem(
            title: 'Orders',
            icon: CupertinoIcons.cart,
            route: OrderScreen.routeName,
          ),
          AdminMenuItem(
            title: 'Categories',
            icon: Icons.category,
            route: CategoriesScreen.routeName,
          ),
          AdminMenuItem(
            title: 'Products',
            icon: Icons.shop,
            route: ProductsScreen.routeName,
          ),
          AdminMenuItem(
            title: 'Banners',
            icon: CupertinoIcons.add,
            route: UploadBannerScreen.routeName,
          ),
        ],
        selectedRoute: DashboardScreen.routeName,
        onSelected: (item) {
          screenSelector(item);
        },
        header: Container(
          height: 60,
          width: double.infinity,
          color: const Color(0xff444444),
          child: const Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Admin Panel',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                SizedBox(),
                Text(
                  'Multi Store Udemy',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
        footer: Container(
          height: 50,
          width: double.infinity,
          color: const Color(0xff444444),
          child: const Center(
            child: Text(
              'This is footer',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
      body: _selectedIteM,
    );
  }
}
