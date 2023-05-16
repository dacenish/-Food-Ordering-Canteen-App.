import 'package:rimt/main.dart';
import 'package:flutter/material.dart';
import 'package:rimt/page/aunty_canteen/aunty_beverage_menu_card.dart';
import 'package:rimt/page/aunty_canteen/aunty_nonveg_menu_card.dart';
import 'package:rimt/page/aunty_canteen/aunty_veg_menu_card.dart';

class MenuTabbar extends StatefulWidget {
  const MenuTabbar({Key? key}) : super(key: key);

  @override
  _MenuTabbarState createState() => _MenuTabbarState();
}

class _MenuTabbarState extends State<MenuTabbar>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  int currentIndex = 0;

  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: Container(
              decoration: BoxDecoration(
                  border: Border.all(color: const Color(0x3D9B9B9B)),
                  borderRadius: const BorderRadius.all(Radius.circular(10))),
              child: TabBar(
                onTap: (index) {
                  setState(() {
                    currentIndex = _tabController.index;
                  });
                },
                physics: NeverScrollableScrollPhysics(),
                controller: _tabController,
                labelColor: Colors.white,
                unselectedLabelColor: Color(0xff504B4B),
                indicator: BoxDecoration(
                  color: currentIndex == 0
                      ? Color(0xffC73438)
                      : currentIndex == 1
                          ? Color(0xff22aa00)
                          : Color(0xff1ca3ec),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                tabs: const [
                  Tab(text: 'Veg'),
                  Tab(text: 'Non Veg'),
                  Tab(text: 'Beverage'),
                ],
              )),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.5,
          child: TabBarView(controller: _tabController, children: const [
            AuntyVegMenuCard(),
            AuntyNonvegMenucard(),
            AuntybeverageMenuCard(),
          ]),
        )
      ],
    );
  }
}
