enum AppointmentStatus implements Comparable<AppointmentStatus> {
  pending(value: 'Pending'),
  confirmed(value: 'Confirmed'),
  canceled(value: 'Canceled'),
  completed(value: 'Completed');

  const AppointmentStatus({
    required this.value,
  });

  final String value;

  @override
  int compareTo(AppointmentStatus other) => value.compareTo(other.value);

}

class AppointmentModel {
  final String id;
  final String owner;
  final String storeName;
  final String storeLocation;
  final String storeImage;
  final String storePhone;
  final int guests;
  final String person;
  final DateTime date;
  final String time;
  final String type;
  final AppointmentStatus status;

  AppointmentModel({
    required this.id,
    required this.owner,
    required this.storeName,
    required this.storeLocation,
    required this.storeImage,
    required this.storePhone,
    required this.guests,
    required this.person,
    required this.date,
    required this.time,
    required this.type,
    this.status = AppointmentStatus.pending,
  });

  factory AppointmentModel.fromJson(Map<String, dynamic> json) {
    return AppointmentModel(
      id: json['id'],
      owner: json['owner'],
      storeName: json['storeName'],
      storeLocation: json['storeLocation'],
      storeImage: json['storeImage'],
      storePhone: json['storePhone'],
      guests: json['guests'],
      person: json['person'],
      date: DateTime.parse(json['date']),
      time: json['time'],
      type: json['type'],
      status: json['status'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'owner': owner,
      'storeName': storeName,
      'storeLocation': storeLocation,
      'storeImage': storeImage,
      'storePhone': storePhone,
      'guests': guests,
      'person': person,
      'date': date.toIso8601String(),
      'time': time,
      'type': type,
      'status': status,
    };
  }
}