import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import 'dart:ui';
import '/index.dart';
import 'profile_view_widget.dart' show ProfileViewWidget;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ProfileViewModel extends FlutterFlowModel<ProfileViewWidget> {
  ///  State fields for stateful widgets in this page.

  bool isDataUploading_uploadDataJl7 = false;
  FFUploadedFile uploadedLocalFile_uploadDataJl7 =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');

  bool isDataUploading_uploadData7no = false;
  FFUploadedFile uploadedLocalFile_uploadData7no =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  String uploadedFileUrl_uploadData7no = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
