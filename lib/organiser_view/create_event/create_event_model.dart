import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import 'dart:ui';
import '/index.dart';
import 'create_event_widget.dart' show CreateEventWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CreateEventModel extends FlutterFlowModel<CreateEventWidget> {
  ///  Local state fields for this page.

  String uploadedImageURL =
      'CAESkARDZzlCY0hCQ1lYSmZPV0ppY21WcWIyUVNoUUlLRTBsamIyNUNkWFIwYjI1Zk4yRm1PR3B4TlhVWUN5TEVBVkt1QVJFQUFBQUFBQUErUUNrQUFBQUFBQUJPUUlJQkZDSVNDUUFBQUFBQUFFNUFHUUFBQUFBQUFFNUFrZ0VTQ1FBQUFBQUFBRDVBR1FBQUFBQUFBRDVBbWdFSUNnSUlBQm9DQ0FDaUFSSUpBQUFBQUFBQThEOFpBQUFBQUFBQThEL1NBVTBLU3lvU0NRQUFBQUFBQUQ1QUdRQUFBQUFBQUQ1QU1nZ0tBaEFIR2dJUUJ6b3JDaWtJOHVvREVnMU5ZWFJsY21saGJFbGpiMjV6SUFFeUVtRnljbTkzWDJKaFkydGZjbTkxYm1SbFpQb0RBUElGRFJJSkNRQUFBQUFBQVBBL0dnQ0tBU0VTR3dvSVlYQXlhV1U0YW1zU0R4SUNJQUdxQWdoaGJYazBkVFJ1TVJvQ0NBSENBUUFZR0NKSjJnRXZjQVM0QVFES0FRUUlBQmdBMmdFRUNnSVFBZUlCRWdrQUFBQUFBQUFBQUJrQUFBQUFBQUFBQU9vQkJBZ0FHQUR5QlJRU0Vna0FBQUFBQUFEd1B4a0FBQUFBQUFEd1Axb2lDZ2RzWldGa2FXNW5FaGNTRlFvVFNXTnZia0oxZEhSdmJsODNZV1k0YW5FMWRXSUE=';

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  bool isDataUploading_dataUpload = false;
  FFUploadedFile uploadedLocalFile_dataUpload =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  String uploadedFileUrl_dataUpload = '';

  // State field(s) for productName widget.
  FocusNode? productNameFocusNode1;
  TextEditingController? productNameTextController1;
  String? Function(BuildContext, String?)? productNameTextController1Validator;
  // State field(s) for description widget.
  FocusNode? descriptionFocusNode;
  TextEditingController? descriptionTextController;
  String? Function(BuildContext, String?)? descriptionTextControllerValidator;
  String? _descriptionTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Description is required';
    }

    if (val.length < 20) {
      return 'Requires at least 20 characters.';
    }

    return null;
  }

  // State field(s) for productName widget.
  FocusNode? productNameFocusNode2;
  TextEditingController? productNameTextController2;
  String? Function(BuildContext, String?)? productNameTextController2Validator;
  String? _productNameTextController2Validator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Event Name is required';
    }

    if (val.length < 4) {
      return 'Requires at least 4 characters.';
    }

    return null;
  }

  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController;
  String? get choiceChipsValue =>
      choiceChipsValueController?.value?.firstOrNull;
  set choiceChipsValue(String? val) =>
      choiceChipsValueController?.value = val != null ? [val] : [];
  // State field(s) for price widget.
  FocusNode? priceFocusNode;
  TextEditingController? priceTextController;
  String? Function(BuildContext, String?)? priceTextControllerValidator;
  String? _priceTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Ticket price is required';
    }

    return null;
  }

  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  PostRecord? newRefEvent;

  @override
  void initState(BuildContext context) {
    descriptionTextControllerValidator = _descriptionTextControllerValidator;
    productNameTextController2Validator = _productNameTextController2Validator;
    priceTextControllerValidator = _priceTextControllerValidator;
  }

  @override
  void dispose() {
    productNameFocusNode1?.dispose();
    productNameTextController1?.dispose();

    descriptionFocusNode?.dispose();
    descriptionTextController?.dispose();

    productNameFocusNode2?.dispose();
    productNameTextController2?.dispose();

    priceFocusNode?.dispose();
    priceTextController?.dispose();
  }
}
