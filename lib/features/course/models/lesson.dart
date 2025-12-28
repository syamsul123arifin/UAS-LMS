enum LessonStatus { notStarted, inProgress, completed }

class Lesson {
  final String id;
  final String title;
  final String description;
  final String videoUrl; // dummy
  final LessonStatus status;

  Lesson({
    required this.id,
    required this.title,
    required this.description,
    required this.videoUrl,
    required this.status,
  });

  factory Lesson.fromJson(Map<String, dynamic> json) {
    return Lesson(
      id: json['id'],
      title: json['title'],
      description: json['description'],
      videoUrl: json['videoUrl'],
      status: LessonStatus.values[json['status']],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'videoUrl': videoUrl,
      'status': status.index,
    };
  }
}