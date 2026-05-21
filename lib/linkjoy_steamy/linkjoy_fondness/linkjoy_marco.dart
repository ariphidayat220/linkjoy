class LinkjoyMarco {
  int? id;
  String? name;
  String? icon;

  LinkjoyMarco();

  factory LinkjoyMarco.fromJson(Map<String, dynamic> json) => LinkjoyMarco()
    ..id = (json['id'] as num?)?.toInt()
    ..name = json['name'] as String?
    ..icon = json['icon'] as String?;

  Map<String, dynamic> toJson(LinkjoyMarco instance) => <String, dynamic>{
    'id': instance.id,
    'name': instance.name,
    'icon': instance.icon,
  };
}
