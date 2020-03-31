import 'dart:ui';

import 'package:flutter/cupertino.dart';

import 'checkbox_model.dart';

class NoteModel {
  final String id;
  String title;
  String content;
  Color color;
  final List<String> drawingList;
  final List<String> voiceList;
  final List<CheckboxModel> checkboxList;
  final List<String> labelList;
  bool isPinned;

  NoteModel(this.id,this.content, this.title, this.color, this.drawingList, this.voiceList,
      this.checkboxList, this.labelList, this.isPinned);
}