import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CompartidoRecord extends FirestoreRecord {
  CompartidoRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "ubicacion" field.
  LatLng? _ubicacion;
  LatLng? get ubicacion => _ubicacion;
  bool hasUbicacion() => _ubicacion != null;

  // "imagen" field.
  String? _imagen;
  String get imagen => _imagen ?? '';
  bool hasImagen() => _imagen != null;

  // "fecha" field.
  DateTime? _fecha;
  DateTime? get fecha => _fecha;
  bool hasFecha() => _fecha != null;

  // "fecha_string" field.
  String? _fechaString;
  String get fechaString => _fechaString ?? '';
  bool hasFechaString() => _fechaString != null;

  // "descripcion" field.
  String? _descripcion;
  String get descripcion => _descripcion ?? '';
  bool hasDescripcion() => _descripcion != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _ubicacion = snapshotData['ubicacion'] as LatLng?;
    _imagen = snapshotData['imagen'] as String?;
    _fecha = snapshotData['fecha'] as DateTime?;
    _fechaString = snapshotData['fecha_string'] as String?;
    _descripcion = snapshotData['descripcion'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('compartido');

  static Stream<CompartidoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CompartidoRecord.fromSnapshot(s));

  static Future<CompartidoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CompartidoRecord.fromSnapshot(s));

  static CompartidoRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CompartidoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CompartidoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CompartidoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CompartidoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CompartidoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCompartidoRecordData({
  String? name,
  LatLng? ubicacion,
  String? imagen,
  DateTime? fecha,
  String? fechaString,
  String? descripcion,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'ubicacion': ubicacion,
      'imagen': imagen,
      'fecha': fecha,
      'fecha_string': fechaString,
      'descripcion': descripcion,
    }.withoutNulls,
  );

  return firestoreData;
}

class CompartidoRecordDocumentEquality implements Equality<CompartidoRecord> {
  const CompartidoRecordDocumentEquality();

  @override
  bool equals(CompartidoRecord? e1, CompartidoRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.ubicacion == e2?.ubicacion &&
        e1?.imagen == e2?.imagen &&
        e1?.fecha == e2?.fecha &&
        e1?.fechaString == e2?.fechaString &&
        e1?.descripcion == e2?.descripcion;
  }

  @override
  int hash(CompartidoRecord? e) => const ListEquality().hash([
        e?.name,
        e?.ubicacion,
        e?.imagen,
        e?.fecha,
        e?.fechaString,
        e?.descripcion
      ]);

  @override
  bool isValidKey(Object? o) => o is CompartidoRecord;
}
