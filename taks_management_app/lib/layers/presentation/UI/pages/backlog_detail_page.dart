import 'package:flutter/material.dart';
import 'package:taks_management_app/layers/domain/entities/backlog_entity.dart';
import 'package:taks_management_app/layers/domain/entities/task_entity.dart';
import 'package:taks_management_app/layers/presentation/controllers/detail_backlog/backlog_detail_controller.dart';

BackLogDetailPageController _controller = BackLogDetailPageController();

class BackLogDetailPage extends StatefulWidget {
  const BackLogDetailPage({Key? key}) : super(key: key);
  static const String ROUTE = "/backlog-detail-page";

  @override
  State<BackLogDetailPage> createState() => _BackLogDetailPageState();
}

class _BackLogDetailPageState extends State<BackLogDetailPage> {
  @override
  Widget build(BuildContext context) {
    BackLogEntity backLogEntity;
    backLogEntity = ModalRoute.of(context)?.settings.arguments as BackLogEntity;

    _controller.backLogSelected = backLogEntity;

    return Scaffold(
      body: _buildBody(),
      appBar: AppBar(
        centerTitle: true,
        title: Text(_controller.backLogSelected.title),
        actions: [
          Container(
            margin: const EdgeInsets.only(top: 10, bottom: 10, right: 16),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: _controller.returnColorOfPriority()),
            child: Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.only(right: 4, left: 4),
              child: Text(
                _controller.setFirstCharacterToUpperCase(),
                style: Theme.of(context).textTheme.subtitle2,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Container(
        height: MediaQuery.of(context).size.height,
        margin: const EdgeInsets.all(8),
        child: Column(
          children: [
            _buildBackLogInfo(),
            _buildListViewTasks(),
          ],
        ),
      ),
    );
  }

  Widget _buildBackLogInfo() {
    return Container();
  }

  Widget _buildListViewTasks() {
    if (_controller.backLogSelected.taskList != null &&
        _controller.backLogSelected.taskList!.isNotEmpty) {
      return SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: _controller.backLogSelected.taskList!.length,
          itemBuilder: (BuildContext context, int index) {
            TaskEntity taskIndex = _controller.backLogSelected.taskList![index];

            return Container(
                padding: const EdgeInsets.only(left: 16),
                margin: const EdgeInsets.only(left: 8, right: 8, bottom: 8),
                height: MediaQuery.of(context).size.height * .10,
                width: MediaQuery.of(context).size.width * .4,
                decoration: BoxDecoration(
                  color: const Color(0xFFE7EDFC),
                  borderRadius: BorderRadius.circular(9),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        child: const Icon(
                      Icons.access_time_outlined,
                      color: Colors.yellow,
                      size: 35,
                    )),
                    Container(
                      width: MediaQuery.of(context).size.width * .6,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(left: 8, bottom: 6),
                            alignment: Alignment.bottomLeft,
                            child: Text(
                              "${taskIndex.title}",
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: Theme.of(context).textTheme.headline3,
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 8, bottom: 4),
                            alignment: Alignment.bottomLeft,
                            child: Text(
                              "${taskIndex.description}",
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: Theme.of(context).textTheme.bodySmall,
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(right: 8),
                      child: GestureDetector(
                        child: const Icon(Icons.more_vert_outlined,
                            size: 32, color: Colors.black54),
                      ),
                    )
                  ],
                ));
          },
        ),
      );
    } else {
      return Container();
    }
  }
}
