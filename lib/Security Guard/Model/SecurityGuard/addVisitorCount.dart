import 'package:freezed_annotation/freezed_annotation.dart';

part 'addVisitorCount.freezed.dart';
part 'addVisitorCount.g.dart';

@freezed
class  VisitorCount with _$VisitorCount {
  const factory VisitorCount({
     int ?count_in,
    int ?count_out,
  
  }) = _VisitorCount;

  factory VisitorCount.fromJson(Map<String, Object?> json) =>
      _$VisitorCountFromJson(json);
}
