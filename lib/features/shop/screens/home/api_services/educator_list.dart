class Educator {
  final int id;
  final String name;
  final List<String> tags;
  final String description;
  final double charges;

  Educator({
    required this.id,
    required this.name,
    required this.tags,
    required this.description,
    required this.charges,
  });

  factory Educator.fromJson(Map<String, dynamic> json) {
    return Educator(
      id: json['id'],
      name: json['name'],
      tags: List<String>.from(json['tags']),
      description: json['description'],
      charges: json['charges'].toDouble(),
    );
  }
}
