import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../models/lesson.dart';
import '../widgets/lesson_tile.dart';

class LessonScreen extends StatelessWidget {
  final Lesson lesson;

  const LessonScreen({super.key, required this.lesson});

  @override
  Widget build(BuildContext context) {
    // Calculate progress (dummy: based on status)
    int completedLessons = 1; // Assuming this lesson is current
    int totalLessons = 3; // Dummy total
    double progress = completedLessons / totalLessons;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Color(0xFF1A1A1A)),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(
          'Lesson',
          style: GoogleFonts.poppins(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: const Color(0xFF1A1A1A),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Video player (dummy / placeholder)
              Container(
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(16),
                ),
                child: const Center(
                  child: Icon(Icons.play_circle_fill, size: 64, color: Colors.grey),
                ),
              ),

              const SizedBox(height: 16),

              // Judul lesson
              Text(
                lesson.title,
                style: GoogleFonts.poppins(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  color: const Color(0xFF1A1A1A),
                ),
              ),

              const SizedBox(height: 8),

              // Deskripsi materi
              Text(
                lesson.description,
                style: GoogleFonts.inter(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: const Color(0xFF666666),
                ),
              ),

              const SizedBox(height: 24),

              // Daftar lesson dengan status
              Text(
                'Course Lessons',
                style: GoogleFonts.poppins(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: const Color(0xFF1A1A1A),
                ),
              ),

              const SizedBox(height: 16),

              // Dummy lessons list
              LessonTile(
                lesson: Lesson(
                  id: '1',
                  title: 'Introduction',
                  description: 'Welcome to the course!',
                  videoUrl: '',
                  status: LessonStatus.completed,
                ),
              ),
              LessonTile(
                lesson: Lesson(
                  id: '2',
                  title: 'Tools Web Developer',
                  description: 'Essential tools every web developer needs.',
                  videoUrl: '',
                  status: LessonStatus.inProgress,
                ),
              ),
              LessonTile(
                lesson: Lesson(
                  id: '3',
                  title: 'Installation',
                  description: 'Step-by-step installation guide.',
                  videoUrl: '',
                  status: LessonStatus.notStarted,
                ),
              ),

              const SizedBox(height: 24),

              // Progress indicator pembelajaran
              Text(
                'Learning Progress',
                style: GoogleFonts.poppins(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: const Color(0xFF1A1A1A),
                ),
              ),

              const SizedBox(height: 16),

              LinearProgressIndicator(
                value: progress,
                backgroundColor: Colors.grey[300],
                valueColor: const AlwaysStoppedAnimation<Color>(Color(0xFF2563EB)),
              ),

              const SizedBox(height: 8),

              Text(
                '${(progress * 100).toInt()}% Complete',
                style: GoogleFonts.inter(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: const Color(0xFF666666),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}