import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

// Project Description Page
class ProjectDescriptionPage extends StatelessWidget {
  final String projectTitle;
  final String projectDescription;
  final String imagePath;

  const ProjectDescriptionPage({
    super.key,
    required this.projectTitle,
    required this.projectDescription,
    required this.imagePath,
  });

  // A function to get the full description based on the project title
  String getFullDescription(String title) {
    switch (title) {
      case 'Starlight University':
        return '''A Full-Stack School Management System (Team project)
Key Features:
- Custom Authentication System: Secure login with encrypted credentials.
- Integrated Attendance Tracking: Real-time student/teacher attendance.
- Role-Based Access Control: Multiple access levels for teachers, students, parents, and administrators.''';

      case 'Care Camp':
        return '''A Full-Stack Medical Camp Management System
Key Features:
- Personalized Dashboards: Participants can view and manage their camps.
- Secure Payment Processing: Payments via integrated payment gateways.
- Comprehensive Camp Listings: Browse medical camps with all relevant details.''';

      case 'BookedInn':
        return '''A Full-Stack Hotel Reservation Web Application
Key Features:
- Room Reservations: Guests can make, modify, and cancel bookings.
- Room Reviews: Visitors can read and write reviews for each room.
- Simple Registration and Login: Using email or social media accounts.''';

      case 'Sam Travel':
        return '''A Full-Stack Collaborative Tourist Spot Management System
Key Features:
- Tourist Spot Management: Add, update, and delete spots to share with others.
- Dark Theme Toggle: Switch between light and dark themes.
- Collaborative Platform: Engage with tourist spots added by other users.''';

      default:
        return 'No description available for this project.';
    }
  }

  // Function to get the project URL based on the project title
  String getProjectUrl(String title) {
    switch (title) {
      case 'Starlight University':
        return 'https://starlight-un-edu.vercel.app';
      case 'Care Camp':
        return 'https://care-camp-a12.web.app';
      case 'BookedInn':
        return 'https://bookedinn-a11.web.app';
      case 'Sam Travel':
        return 'https://sam-travels-a10.web.app';
      default:
        return 'samiur-rahman-wasi.vercel.app';
    }
  }

  // Function to launch URL
  void _launchURL(String url) async {
    final Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    // Get the full description and URL based on the project title
    final projectDescription = getFullDescription(projectTitle);
    final projectUrl = getProjectUrl(projectTitle);

    return Scaffold(
      backgroundColor: Colors.black, // Set background to black
      appBar: AppBar(
        title: Text(
          projectTitle,
          style: const TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color(0xFF000000),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(imagePath, fit: BoxFit.cover),
            const SizedBox(height: 16),
            Text(
              projectTitle,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white, // Text color for black background
              ),
            ),
            const SizedBox(height: 8),
            Text(
              projectDescription,
              style: const TextStyle(
                fontSize: 16,
                color: Colors.white70, // Slightly lighter text color for the description
              ),
            ),
            const SizedBox(height: 16),
            InkWell(
              onTap: () => _launchURL(projectUrl),
              child: Text(
                projectUrl,
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.blue, // URL text color
                  decoration: TextDecoration.underline, // Underline the URL text
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
