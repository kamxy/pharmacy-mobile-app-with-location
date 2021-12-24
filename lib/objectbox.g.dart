// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: camel_case_types

import 'dart:typed_data';

import 'package:objectbox/flatbuffers/flat_buffers.dart' as fb;
import 'package:objectbox/internal.dart'; // generated code can access "internal" functionality
import 'package:objectbox/objectbox.dart';
import 'package:objectbox_flutter_libs/objectbox_flutter_libs.dart';

import 'models/eczane_objectboxt_model.dart';

export 'package:objectbox/objectbox.dart'; // so that callers only have to import this file

final _entities = <ModelEntity>[
  ModelEntity(
      id: const IdUid(1, 6586134929290567525),
      name: 'EczaneObjectBox',
      lastPropertyId: const IdUid(11, 2324769028379229548),
      flags: 0,
      properties: <ModelProperty>[
        ModelProperty(
            id: const IdUid(1, 8127367316243202766),
            name: 'id',
            type: 6,
            flags: 1),
        ModelProperty(
            id: const IdUid(2, 4752968837910520896),
            name: 'eczaneAdi',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(3, 3245701906954660364),
            name: 'adresi',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(4, 8232833598519772471),
            name: 'semt',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(5, 6772164176917682095),
            name: 'yolTarifi',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(6, 3976365751730952538),
            name: 'telefon',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(7, 906963108293197803),
            name: 'telefon2',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(8, 7401388370710488896),
            name: 'sehir',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(9, 2159906672411511576),
            name: 'ilce',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(10, 2576791258188801585),
            name: 'latitude',
            type: 8,
            flags: 0),
        ModelProperty(
            id: const IdUid(11, 2324769028379229548),
            name: 'longitude',
            type: 8,
            flags: 0)
      ],
      relations: <ModelRelation>[],
      backlinks: <ModelBacklink>[])
];

/// Open an ObjectBox store with the model declared in this file.
Future<Store> openStore(
        {String directory,
        int maxDBSizeInKB,
        int fileMode,
        int maxReaders,
        bool queriesCaseSensitiveDefault = true,
        String macosApplicationGroup}) async =>
    Store(getObjectBoxModel(),
        directory: directory ?? (await defaultStoreDirectory()).path,
        maxDBSizeInKB: maxDBSizeInKB,
        fileMode: fileMode,
        maxReaders: maxReaders,
        queriesCaseSensitiveDefault: queriesCaseSensitiveDefault,
        macosApplicationGroup: macosApplicationGroup);

/// ObjectBox model definition, pass it to [Store] - Store(getObjectBoxModel())
ModelDefinition getObjectBoxModel() {
  final model = ModelInfo(
      entities: _entities,
      lastEntityId: const IdUid(1, 6586134929290567525),
      lastIndexId: const IdUid(0, 0),
      lastRelationId: const IdUid(0, 0),
      lastSequenceId: const IdUid(0, 0),
      retiredEntityUids: const [],
      retiredIndexUids: const [],
      retiredPropertyUids: const [],
      retiredRelationUids: const [],
      modelVersion: 5,
      modelVersionParserMinimum: 5,
      version: 1);

  final bindings = <Type, EntityDefinition>{
    EczaneObjectBox: EntityDefinition<EczaneObjectBox>(
        model: _entities[0],
        toOneRelations: (EczaneObjectBox object) => [],
        toManyRelations: (EczaneObjectBox object) => {},
        getId: (EczaneObjectBox object) => object.id,
        setId: (EczaneObjectBox object, int id) {
          object.id = id;
        },
        objectToFB: (EczaneObjectBox object, fb.Builder fbb) {
          final eczaneAdiOffset = object.eczaneAdi == null
              ? null
              : fbb.writeString(object.eczaneAdi);
          final adresiOffset =
              object.adresi == null ? null : fbb.writeString(object.adresi);
          final semtOffset =
              object.semt == null ? null : fbb.writeString(object.semt);
          final yolTarifiOffset = object.yolTarifi == null
              ? null
              : fbb.writeString(object.yolTarifi);
          final telefonOffset =
              object.telefon == null ? null : fbb.writeString(object.telefon);
          final telefon2Offset =
              object.telefon2 == null ? null : fbb.writeString(object.telefon2);
          final sehirOffset =
              object.sehir == null ? null : fbb.writeString(object.sehir);
          final ilceOffset =
              object.ilce == null ? null : fbb.writeString(object.ilce);
          fbb.startTable(12);
          fbb.addInt64(0, object.id ?? 0);
          fbb.addOffset(1, eczaneAdiOffset);
          fbb.addOffset(2, adresiOffset);
          fbb.addOffset(3, semtOffset);
          fbb.addOffset(4, yolTarifiOffset);
          fbb.addOffset(5, telefonOffset);
          fbb.addOffset(6, telefon2Offset);
          fbb.addOffset(7, sehirOffset);
          fbb.addOffset(8, ilceOffset);
          fbb.addFloat64(9, object.latitude);
          fbb.addFloat64(10, object.longitude);
          fbb.finish(fbb.endTable());
          return object.id ?? 0;
        },
        objectFromFB: (Store store, ByteData fbData) {
          final buffer = fb.BufferContext(fbData);
          final rootOffset = buffer.derefObject(0);

          final object = EczaneObjectBox(
              eczaneAdi: const fb.StringReader()
                  .vTableGetNullable(buffer, rootOffset, 6),
              adresi: const fb.StringReader()
                  .vTableGetNullable(buffer, rootOffset, 8),
              semt: const fb.StringReader()
                  .vTableGetNullable(buffer, rootOffset, 10),
              yolTarifi: const fb.StringReader()
                  .vTableGetNullable(buffer, rootOffset, 12),
              telefon: const fb.StringReader()
                  .vTableGetNullable(buffer, rootOffset, 14),
              telefon2: const fb.StringReader()
                  .vTableGetNullable(buffer, rootOffset, 16),
              sehir: const fb.StringReader()
                  .vTableGetNullable(buffer, rootOffset, 18),
              ilce: const fb.StringReader()
                  .vTableGetNullable(buffer, rootOffset, 20),
              latitude: const fb.Float64Reader()
                  .vTableGetNullable(buffer, rootOffset, 22),
              longitude: const fb.Float64Reader()
                  .vTableGetNullable(buffer, rootOffset, 24))
            ..id =
                const fb.Int64Reader().vTableGetNullable(buffer, rootOffset, 4);

          return object;
        })
  };

  return ModelDefinition(model, bindings);
}

/// [EczaneObjectBox] entity fields to define ObjectBox queries.
class EczaneObjectBox_ {
  /// see [EczaneObjectBox.id]
  static final id =
      QueryIntegerProperty<EczaneObjectBox>(_entities[0].properties[0]);

  /// see [EczaneObjectBox.eczaneAdi]
  static final eczaneAdi =
      QueryStringProperty<EczaneObjectBox>(_entities[0].properties[1]);

  /// see [EczaneObjectBox.adresi]
  static final adresi =
      QueryStringProperty<EczaneObjectBox>(_entities[0].properties[2]);

  /// see [EczaneObjectBox.semt]
  static final semt =
      QueryStringProperty<EczaneObjectBox>(_entities[0].properties[3]);

  /// see [EczaneObjectBox.yolTarifi]
  static final yolTarifi =
      QueryStringProperty<EczaneObjectBox>(_entities[0].properties[4]);

  /// see [EczaneObjectBox.telefon]
  static final telefon =
      QueryStringProperty<EczaneObjectBox>(_entities[0].properties[5]);

  /// see [EczaneObjectBox.telefon2]
  static final telefon2 =
      QueryStringProperty<EczaneObjectBox>(_entities[0].properties[6]);

  /// see [EczaneObjectBox.sehir]
  static final sehir =
      QueryStringProperty<EczaneObjectBox>(_entities[0].properties[7]);

  /// see [EczaneObjectBox.ilce]
  static final ilce =
      QueryStringProperty<EczaneObjectBox>(_entities[0].properties[8]);

  /// see [EczaneObjectBox.latitude]
  static final latitude =
      QueryDoubleProperty<EczaneObjectBox>(_entities[0].properties[9]);

  /// see [EczaneObjectBox.longitude]
  static final longitude =
      QueryDoubleProperty<EczaneObjectBox>(_entities[0].properties[10]);
}
