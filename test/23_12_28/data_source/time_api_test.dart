import 'package:flutter_beginner_class/23_12_28/data_source/time_api.dart';
import 'package:flutter_beginner_class/23_12_28/model/time.dart';
import 'package:flutter_test/flutter_test.dart';

void main(){
  test('현재시간이 모델로 잘 들어오는지 확인하는 테스트 ', () async {
    final seoulTimeApi = TimeApi();

    Map<String, dynamic> mockJson =
    {
      "abbreviation": "KST",
      "client_ip": "182.210.254.4",
      "datetime": "2023-12-28T22:44:54.114891+09:00",
      "day_of_week": 4,
      "day_of_year": 362,
      "dst": false,
      "dst_from": null,
      "dst_offset": 0,
      "dst_until": null,
      "raw_offset": 32400,
      "timezone": "Asia/Seoul",
      "unixtime": 1703771094,
      "utc_datetime": "2023-12-28T13:44:54.114891+00:00",
      "utc_offset": "+09:00",
      "week_number": 52
    };
    Time time =Time.fromJson(mockJson);

    expect(time.time, '2023-12-28T22:44:54.114891+09:00');
    expect(time.utcTime, '2023-12-28T13:44:54.114891+00:00');

  });
}