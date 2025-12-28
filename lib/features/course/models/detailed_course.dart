import '../../home/models/course.dart';
import 'lesson.dart';

class DetailedCourse extends Course {
  final String description;
  final List<Lesson> lessons;

  DetailedCourse({
    required super.id,
    required super.title,
    required super.category,
    required super.rating,
    required super.totalHours,
    required super.price,
    required super.imageUrl,
    required this.description,
    required this.lessons,
  });

  factory DetailedCourse.fromCourse(Course course, String description, List<Lesson> lessons) {
    return DetailedCourse(
      id: course.id,
      title: course.title,
      category: course.category,
      rating: course.rating,
      totalHours: course.totalHours,
      price: course.price,
      imageUrl: course.imageUrl,
      description: description,
      lessons: lessons,
    );
  }

  // For dummy data
  factory DetailedCourse.dummy(Course course) {
    return DetailedCourse.fromCourse(
      course,
      'This is a comprehensive course on ${course.title}. Learn from industry experts and build real-world projects.',
      [
        Lesson(
          id: '1',
          title: 'Introduction',
          description: 'Welcome to the course! Learn what you will achieve.',
          videoUrl: 'https://via.placeholder.com/300x200?text=Video+1',
          status: LessonStatus.completed,
        ),
        Lesson(
          id: '2',
          title: 'Tools Web Developer',
          description: 'Essential tools every web developer needs.',
          videoUrl: 'https://via.placeholder.com/300x200?text=Video+2',
          status: LessonStatus.inProgress,
        ),
        Lesson(
          id: '3',
          title: 'Installation',
          description: 'Step-by-step installation guide.',
          videoUrl: 'https://via.placeholder.com/300x200?text=Video+3',
          status: LessonStatus.notStarted,
        ),
      ],
    );
  }
}