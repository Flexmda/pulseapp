import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class VideosRecord extends FirestoreRecord {
  VideosRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "nombre" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  bool hasNombre() => _nombre != null;

  // "descripcion" field.
  String? _descripcion;
  String get descripcion => _descripcion ?? '';
  bool hasDescripcion() => _descripcion != null;

  // "timestamp" field.
  String? _timestamp;
  String get timestamp => _timestamp ?? '';
  bool hasTimestamp() => _timestamp != null;

  // "url" field.
  String? _url;
  String get url => _url ?? '';
  bool hasUrl() => _url != null;

  // "vehiculo" field.
  String? _vehiculo;
  String get vehiculo => _vehiculo ?? '';
  bool hasVehiculo() => _vehiculo != null;

  // "fechagrabacion" field.
  String? _fechagrabacion;
  String get fechagrabacion => _fechagrabacion ?? '';
  bool hasFechagrabacion() => _fechagrabacion != null;

  // "horagrabacion" field.
  String? _horagrabacion;
  String get horagrabacion => _horagrabacion ?? '';
  bool hasHoragrabacion() => _horagrabacion != null;

  // "videourl" field.
  String? _videourl;
  String get videourl => _videourl ?? '';
  bool hasVideourl() => _videourl != null;

  void _initializeFields() {
    _nombre = snapshotData['nombre'] as String?;
    _descripcion = snapshotData['descripcion'] as String?;
    _timestamp = snapshotData['timestamp'] as String?;
    _url = snapshotData['url'] as String?;
    _vehiculo = snapshotData['vehiculo'] as String?;
    _fechagrabacion = snapshotData['fechagrabacion'] as String?;
    _horagrabacion = snapshotData['horagrabacion'] as String?;
    _videourl = snapshotData['videourl'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('videos');

  static Stream<VideosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => VideosRecord.fromSnapshot(s));

  static Future<VideosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => VideosRecord.fromSnapshot(s));

  static VideosRecord fromSnapshot(DocumentSnapshot snapshot) => VideosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static VideosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      VideosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'VideosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is VideosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createVideosRecordData({
  String? nombre,
  String? descripcion,
  String? timestamp,
  String? url,
  String? vehiculo,
  String? fechagrabacion,
  String? horagrabacion,
  String? videourl,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nombre': nombre,
      'descripcion': descripcion,
      'timestamp': timestamp,
      'url': url,
      'vehiculo': vehiculo,
      'fechagrabacion': fechagrabacion,
      'horagrabacion': horagrabacion,
      'videourl': videourl,
    }.withoutNulls,
  );

  return firestoreData;
}

class VideosRecordDocumentEquality implements Equality<VideosRecord> {
  const VideosRecordDocumentEquality();

  @override
  bool equals(VideosRecord? e1, VideosRecord? e2) {
    return e1?.nombre == e2?.nombre &&
        e1?.descripcion == e2?.descripcion &&
        e1?.timestamp == e2?.timestamp &&
        e1?.url == e2?.url &&
        e1?.vehiculo == e2?.vehiculo &&
        e1?.fechagrabacion == e2?.fechagrabacion &&
        e1?.horagrabacion == e2?.horagrabacion &&
        e1?.videourl == e2?.videourl;
  }

  @override
  int hash(VideosRecord? e) => const ListEquality().hash([
        e?.nombre,
        e?.descripcion,
        e?.timestamp,
        e?.url,
        e?.vehiculo,
        e?.fechagrabacion,
        e?.horagrabacion,
        e?.videourl
      ]);

  @override
  bool isValidKey(Object? o) => o is VideosRecord;
}
