import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:group_button/group_button.dart';
import 'package:taks_management_app/layers/domain/entities/backlog_entity.dart';
import 'package:taks_management_app/layers/presentation/controllers/home/home_controller.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

HomeController _controller = HomeController();

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
            margin: const EdgeInsets.only(left: 8),
            child: const Text(
              "Hi Stepanie",
              style: TextStyle(
                  fontFamily: "Mulish-ExtraBold",
                  fontWeight: FontWeight.bold,
                  fontSize: 32),
            )),
        centerTitle: false,
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 16),
            child: CircleAvatar(
              backgroundColor: Colors.grey,
              child: Container(
                height: 20,
              ),
            ),
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildFilters(context),
          _buildListCards(context),
        ],
      ),
      bottomNavigationBar: _buildBottomNavigatorBar(context),
    );
  }
}

Widget _buildFilters(BuildContext context) {
  return SizedBox(
    height: MediaQuery.of(context).size.height * 0.1,
    width: MediaQuery.of(context).size.width,
    child: GroupButton(
      buttons: _controller.listOptionsFilter,
      options: GroupButtonOptions(
          mainGroupAlignment: MainGroupAlignment.center,
          borderRadius: BorderRadius.circular(20),
          unselectedColor: const Color(0xFFE0DFDF),
          unselectedShadow: const [],
          selectedShadow: const [],
          buttonHeight: 40,
          textPadding:
              const EdgeInsets.only(top: 10, bottom: 10, right: 15, left: 15)),
    ),
  );
}

Widget _buildListCards(BuildContext context) {
  return SingleChildScrollView(
    controller: ScrollController(),
    child: Container(
      height: MediaQuery.of(context).size.height * 0.6,
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.all(8),
      child: ListView.builder(
          itemCount: _controller.mockListBacklogs.length,
          itemBuilder: (context, index) {
            List<BackLogEntity> listBacklogs = _controller.mockListBacklogs;
            return Container(
              height: MediaQuery.of(context).size.height * 0.2,
              padding: const EdgeInsets.only(top: 8, bottom: 8, left: 16),
              margin: const EdgeInsets.only(
                  top: 16, bottom: 16, right: 16, left: 8),
              decoration: BoxDecoration(
                  color: const Color(0xFFADBADE),
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                        color: const Color(0xFF4E4A4A).withOpacity(0.50),
                        blurRadius: 10.0,
                        spreadRadius: 2.0,
                        offset: const Offset(
                          7.0, // Move to right 7.0 horizontally
                          8.0, // Move to bottom 8.0 Vertically
                        ))
                  ]),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: _controller.returnColorOfPriority(
                                listBacklogs[index].prioridade)),
                        child: Container(
                          padding: const EdgeInsets.only(
                              top: 4, bottom: 4, right: 8, left: 8),
                          child: Text(
                            _controller.setFirstCharacterToUpperCase(
                                listBacklogs[index].prioridade),
                            style: const TextStyle(
                                fontFamily: "Mulish",
                                color: Colors.white,
                                fontSize: 14),
                          ),
                        ),
                      ),
                      SizedBox(
                        child: IconButton(
                            onPressed: () {},
                            padding: EdgeInsets.zero,
                            icon: const Icon(
                              Icons.more_vert,
                              color: Colors.white,
                            )),
                      )
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.only(top: 8),
                    child: Text(
                      _controller.setFirstCharacterToUpperCase(
                          (listBacklogs[index].titulo)),
                      style: const TextStyle(
                        fontFamily: 'Mulish-Bold',
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(top: 8),
                    child: Text(
                      _controller.setFirstCharacterToUpperCase(
                          listBacklogs[index].descricao),
                      style: const TextStyle(
                        fontFamily: 'Mulish-Regular',
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF4E4A4A),
                      ),
                    ),
                  ),
                ],
              ),
            );
          }),
    ),
  );
}

Widget _buildBottomNavigatorBar(BuildContext context) {
  return BottomNavigationBar(
      elevation: 0,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      items: const [
        BottomNavigationBarItem(
            label: "",
            icon: Icon(
              Icons.home_filled,
              color: Color(0xFF8A8A8A),
              size: 30,
            )),
        BottomNavigationBarItem(
            label: "",
            icon: Icon(
              Icons.add_circle,
              color: Color(0xFF0B89FE),
              size: 47,
            )),
        BottomNavigationBarItem(
            label: "",
            icon: Icon(
              Icons.settings,
              color: Color(0xFF8A8A8A),
              size: 30,
            ))
      ]);
}
