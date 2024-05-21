// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'addChamber.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChamberFieldImpl _$$ChamberFieldImplFromJson(Map<String, dynamic> json) =>
    _$ChamberFieldImpl(
      id: (json['id'] as num).toInt(),
      field_name: json['field_name'] as String,
      type: json['type'] as String,
      error_message_on_empt: json['error_message_on_empt'] as String?,
      invalid_message: json['invalid_message'] as String?,
      value: json['value'],
      regex: json['regex'] as String?,
      selectedValues: json['selectedValues'] as List<dynamic>?,
      required: (json['required'] as num?)?.toInt(),
      isShow: (json['isShow'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$ChamberFieldImplToJson(_$ChamberFieldImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'field_name': instance.field_name,
      'type': instance.type,
      'error_message_on_empt': instance.error_message_on_empt,
      'invalid_message': instance.invalid_message,
      'value': instance.value,
      'regex': instance.regex,
      'selectedValues': instance.selectedValues,
      'required': instance.required,
      'isShow': instance.isShow,
    };

_$AddChamberImpl _$$AddChamberImplFromJson(Map<String, dynamic> json) =>
    _$AddChamberImpl(
      user_id: (json['user_id'] as num?)?.toInt(),
      warehouse_id: (json['warehouse_id'] as num?)?.toInt(),
      chamber_number: json['chamber_number'],
      temp_type: json['temp_type'] as String?,
      temp_min_range: (json['temp_min_range'] as num?)?.toInt(),
      temp_max_range: (json['temp_max_range'] as num?)?.toInt(),
      type_of_racking: json['type_of_racking'] as String?,
      refrigeration_type: json['refrigeration_type'] as String?,
      chamber_capacity: (json['chamber_capacity'] as num?)?.toInt(),
      movement_height: (json['movement_height'] as num?)?.toInt(),
      pallet_dimension_height:
          (json['pallet_dimension_height'] as num?)?.toInt(),
      pallet_dimension_length:
          (json['pallet_dimension_length'] as num?)?.toInt(),
      pallet_dimension_breadth:
          (json['pallet_dimension_breadth'] as num?)?.toInt(),
      chamber_height: (json['chamber_height'] as num?)?.toInt(),
      chamber_length: (json['chamber_length'] as num?)?.toInt(),
      chamber_breadth: (json['chamber_breadth'] as num?)?.toInt(),
      pallate_count: (json['pallate_count'] as num?)?.toInt(),
      stacking_level: (json['stacking_level'] as num?)?.toInt(),
      floor_number: (json['floor_number'] as num?)?.toInt(),
      contolled_atmosphere: (json['contolled_atmosphere'] as num?)?.toInt(),
      ozone_filteration: (json['ozone_filteration'] as num?)?.toInt(),
      humidifier: (json['humidifier'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$AddChamberImplToJson(_$AddChamberImpl instance) =>
    <String, dynamic>{
      'user_id': instance.user_id,
      'warehouse_id': instance.warehouse_id,
      'chamber_number': instance.chamber_number,
      'temp_type': instance.temp_type,
      'temp_min_range': instance.temp_min_range,
      'temp_max_range': instance.temp_max_range,
      'type_of_racking': instance.type_of_racking,
      'refrigeration_type': instance.refrigeration_type,
      'chamber_capacity': instance.chamber_capacity,
      'movement_height': instance.movement_height,
      'pallet_dimension_height': instance.pallet_dimension_height,
      'pallet_dimension_length': instance.pallet_dimension_length,
      'pallet_dimension_breadth': instance.pallet_dimension_breadth,
      'chamber_height': instance.chamber_height,
      'chamber_length': instance.chamber_length,
      'chamber_breadth': instance.chamber_breadth,
      'pallate_count': instance.pallate_count,
      'stacking_level': instance.stacking_level,
      'floor_number': instance.floor_number,
      'contolled_atmosphere': instance.contolled_atmosphere,
      'ozone_filteration': instance.ozone_filteration,
      'humidifier': instance.humidifier,
    };
