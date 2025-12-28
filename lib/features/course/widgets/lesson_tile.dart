import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../models/lesson.dart';

class LessonTile extends StatelessWidget {
  final Lesson lesson;
  final VoidCallback? onTap;

  const LessonTile({super.key, required this.lesson, this.onTap});

  @override
  Widget build(BuildContext context) {
    IconData statusIcon;
    Color statusColor;

    switch (lesson.status) {
      case LessonStatus.completed:
        statusIcon = Icons.check_circle;
        statusColor = Colors.green;
        break;
      case LessonStatus.inProgress:
        statusIcon = Icons.play_circle_fill;
        statusColor = Colors.blue;
        break;
      case LessonStatus.notStarted:
        statusIcon = Icons.lock;
        statusColor = Colors.grey;
        break;
    }

    return ListTile(
      leading: Icon(statusIcon, color: statusColor),
      title: Text(
        lesson.title,
        style: GoogleFonts.poppins(
          fontSize: 16,
          fontWeight: FontWeight.w500,
          color: const Color(0xFF1A1A1A),
        ),
      ),
      subtitle: Text(
        lesson.description,
        style: GoogleFonts.inter(
          fontSize: 12,
          color: const Color(0xFF666666),
        ),
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
      ),
      trailing: const Icon(Icons.arrow_forward_ios, size: 16),
      onTap: onTap,
    );
  }
}