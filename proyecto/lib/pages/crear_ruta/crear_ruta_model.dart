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
import 'crear_ruta_widget.dart' show CrearRutaWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CrearRutaModel extends FlutterFlowModel<CrearRutaWidget> {
  ///  State fields for stateful widgets in this page.

  bool isDataUploading_uploadDataIew = false;
  FFUploadedFile uploadedLocalFile_uploadDataIew =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl_uploadDataIew = '';

  // State field(s) for nombre_ruta widget.
  FocusNode? nombreRutaFocusNode;
  TextEditingController? nombreRutaTextController;
  String? Function(BuildContext, String?)? nombreRutaTextControllerValidator;
  DateTime? datePicked;
  // State field(s) for descripcion_ruta widget.
  FocusNode? descripcionRutaFocusNode;
  TextEditingController? descripcionRutaTextController;
  String? Function(BuildContext, String?)?
      descripcionRutaTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    nombreRutaFocusNode?.dispose();
    nombreRutaTextController?.dispose();

    descripcionRutaFocusNode?.dispose();
    descripcionRutaTextController?.dispose();
  }
}
