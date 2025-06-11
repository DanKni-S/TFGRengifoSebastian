import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ItinerarioRecord extends FirestoreRecord {
  ItinerarioRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nombre_ruta" field.
  String? _nombreRuta;
  String get nombreRuta => _nombreRuta ?? '';
  bool hasNombreRuta() => _nombreRuta != null;

  // "fecha" field.
  String? _fecha;
  String get fecha => _fecha ?? '';
  bool hasFecha() => _fecha != null;

  // "descripcion" field.
  String? _descripcion;
  String get descripcion => _descripcion ?? '';
  bool hasDescripcion() => _descripcion != null;

  // "user_id" field.
  String? _userId;
  String get userId => _userId ?? '';
  bool hasUserId() => _userId != null;

  // "fech_da" field.
  DateTime? _fechDa;
  DateTime? get fechDa => _fechDa;
  bool hasFechDa() => _fechDa != null;

  // "foto" field.
  String? _foto;
  String get foto => _foto ?? '';
  bool hasFoto() => _foto != null;

  // "imagenTemp" field.
  String? _imagenTemp;
  String get imagenTemp => _imagenTemp ?? '';
  bool hasImagenTemp() => _imagenTemp != null;

  // "coorden" field.
  LatLng? _coorden;
  LatLng? get coorden => _coorden;
  bool hasCoorden() => _coorden != null;

  void _initializeFields() {
    _nombreRuta = snapshotData['nombre_ruta'] as String?;
    _fecha = snapshotData['fecha'] as String?;
    _descripcion = snapshotData['descripcion'] as String?;
    _userId = snapshotData['user_id'] as String?;
    _fechDa = snapshotData['fech_da'] as DateTime?;
    _foto = snapshotData['foto'] as String?;
    _imagenTemp = snapshotData['imagenTemp'] as String?;
    _coorden = snapshotData['coorden'] as LatLng?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('itinerario');

  static Stream<ItinerarioRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ItinerarioRecord.fromSnapshot(s));

  static Future<ItinerarioRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ItinerarioRecord.fromSnapshot(s));

  static ItinerarioRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ItinerarioRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ItinerarioRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ItinerarioRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ItinerarioRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ItinerarioRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createItinerarioRecordData({
  String? nombreRuta,
  String? fecha,
  String? descripcion,
  String? userId,
  DateTime? fechDa,
  String? foto,
  String? imagenTemp,
  LatLng? coorden,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nombre_ruta': nombreRuta,
      'fecha': fecha,
      'descripcion': descripcion,
      'user_id': userId,
      'fech_da': fechDa,
      'foto': foto,
      'imagenTemp': imagenTemp,
      'coorden': coorden,
    }.withoutNulls,
  );

  return firestoreData;
}

class ItinerarioRecordDocumentEquality implements Equality<ItinerarioRecord> {
  const ItinerarioRecordDocumentEquality();

  @override
  bool equals(ItinerarioRecord? e1, ItinerarioRecord? e2) {
    return e1?.nombreRuta == e2?.nombreRuta &&
        e1?.fecha == e2?.fecha &&
        e1?.descripcion == e2?.descripcion &&
        e1?.userId == e2?.userId &&
        e1?.fechDa == e2?.fechDa &&
        e1?.foto == e2?.foto &&
        e1?.imagenTemp == e2?.imagenTemp &&
        e1?.coorden == e2?.coorden;
  }

  @override
  int hash(ItinerarioRecord? e) => const ListEquality().hash([
        e?.nombreRuta,
        e?.fecha,
        e?.descripcion,
        e?.userId,
        e?.fechDa,
        e?.foto,
        e?.imagenTemp,
        e?.coorden
      ]);

  @override
  bool isValidKey(Object? o) => o is ItinerarioRecord;
}
