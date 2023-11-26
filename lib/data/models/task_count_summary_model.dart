import 'package:task_manager_project_rest_api/data/models/task_count.dart';

class TaskCountSummaryListModel {
  String? status;
  List<TaskCount>? taskCountList;

  TaskCountSummaryListModel({this.status, this.taskCountList});

  TaskCountSummaryListModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    if (json['data'] != null) {
      taskCountList = <TaskCount>[];
      json['data'].forEach((v) {
        taskCountList!.add(new TaskCount.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    if (this.taskCountList != null) {
      data['data'] = this.taskCountList!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

