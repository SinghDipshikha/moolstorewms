// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'addChamber.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChamberFieldImpl _$$ChamberFieldImplFromJson(Map<String, dynamic> json) =>
    _$ChamberFieldImpl(
      id: json['id'] as int,
      field_name: json['field_name'] as String,
      type: json['type'] as String,
      error_message_on_empt: json['error_message_on_empt'] as String?,
      invalid_message: json['invalid_message'] as String?,
      value: json['value'],
      regex: json['regex'] as String?,
      selected_values: json['selected_values'] as List<dynamic>?,
      required: json['required'] as int?,
      isShow: json['isShow'] as int?,
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
      'selected_values': instance.selected_values,
      'required': instance.required,
      'isShow': instance.isShow,
    };

_$AddChamberImpl _$$AddChamberImplFromJson(Map<String, dynamic> json) =>
    _$AddChamberImpl(
      userId: json['userId'] as int?,
      warehouseId: json['warehouseId'] as int?,
      chamberNumber: json['chamberNumber'] as int?,
      tempType: json['tempType'] as String?,
      tempMinRange: json['tempMinRange'] as int?,
      tempMaxRange: json['tempMaxRange'] as int?,
      typeOfRacking: json['typeOfRacking'] as String?,
      refrigerationType: json['refrigerationType'] as String?,
      chamberCapacity: json['chamberCapacity'] as int?,
      movementHeight: json['movementHeight'] as int?,
      palletDimensionHeight: json['palletDimensionHeight'] as int?,
      palletDimensionLength: json['palletDimensionLength'] as int?,
      palletDimensionBreadth: json['palletDimensionBreadth'] as int?,
      chamberHeight: json['chamberHeight'] as int?,
      chamberLength: json['chamberLength'] as int?,
      chamberBreadth: json['chamberBreadth'] as int?,
      noOfFloors: json['noOfFloors'] as int?,
      contolledAtmosphere: json['contolledAtmosphere'] as int?,
      ozoneFilteration: json['ozoneFilteration'] as int?,
      humidifier: json['humidifier'] as int?,
    );

Map<String, dynamic> _$$AddChamberImplToJson(_$AddChamberImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'warehouseId': instance.warehouseId,
      'chamberNumber': instance.chamberNumber,
      'tempType': instance.tempType,
      'tempMinRange': instance.tempMinRange,
      'tempMaxRange': instance.tempMaxRange,
      'typeOfRacking': instance.typeOfRacking,
      'refrigerationType': instance.refrigerationType,
      'chamberCapacity': instance.chamberCapacity,
      'movementHeight': instance.movementHeight,
      'palletDimensionHeight': instance.palletDimensionHeight,
      'palletDimensionLength': instance.palletDimensionLength,
      'palletDimensionBreadth': instance.palletDimensionBreadth,
      'chamberHeight': instance.chamberHeight,
      'chamberLength': instance.chamberLength,
      'chamberBreadth': instance.chamberBreadth,
      'noOfFloors': instance.noOfFloors,
      'contolledAtmosphere': instance.contolledAtmosphere,
      'ozoneFilteration': instance.ozoneFilteration,
      'humidifier': instance.humidifier,
    };
