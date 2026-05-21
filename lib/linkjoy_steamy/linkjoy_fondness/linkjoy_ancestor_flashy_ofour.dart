class LinkjoyAncestorFlashyOfour {
  int? category;
  int? id;
  int? to_uid;
  int? quantity;
  String? icon;
  String? name;
  int? cost;
  int? income;
  int? min_duration;
  int? max_duration;
  int? animation_type;
  String? animation_url;
  int? gift_type;
  int? type;

  LinkjoyAncestorFlashyOfour();

  factory LinkjoyAncestorFlashyOfour.fromJson(Map<String, dynamic> json) =>
      LinkjoyAncestorFlashyOfour()
        ..category = (json['category'] as num?)?.toInt()
        ..id = (json['id'] as num?)?.toInt()
        ..to_uid = (json['to_uid'] as num?)?.toInt()
        ..quantity = (json['quantity'] as num?)?.toInt()
        ..icon = json['icon'] as String?
        ..name = json['name'] as String?
        ..cost = (json['cost'] as num?)?.toInt()
        ..income = (json['income'] as num?)?.toInt()
        ..min_duration = (json['min_duration'] as num?)?.toInt()
        ..max_duration = (json['max_duration'] as num?)?.toInt()
        ..animation_type = (json['animation_type'] as num?)?.toInt()
        ..type = (json['type'] as num?)?.toInt()
        ..animation_url = json['animation_url'] as String?
        ..gift_type = (json['gift_type'] as num?)?.toInt();

  Map<String, dynamic> toJson() => <String, dynamic>{
    'category': category,
    'id': id,
    'to_uid': to_uid,
    'quantity': quantity,
    'icon': icon,
    'name': name,
    'cost': cost,
    'income': income,
    'min_duration': min_duration,
    'max_duration': max_duration,
    'type': type,
    'animation_type': animation_type,
    'animation_url': animation_url,
    'gift_type': gift_type,
  };
}
