import 'package:flutter/material.dart';

class SkillsPage extends StatelessWidget {
  const SkillsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text('Skills', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.black,
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Expertise:', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white)),
            Text('• React • MongoDB • HTML • JavaScript • CSS • Git', style: TextStyle(fontSize: 16, color: Colors.white)),
            SizedBox(height: 16),
            Text('Comfortable:', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white)),
            Text('• Next.js • Node.js • REST API • TypeScript • MySQL • Express.js • MUI • Tailwind CSS', style: TextStyle(fontSize: 16, color: Colors.white)),
            SizedBox(height: 16),
            Text('Familiar:', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white)),
            Text('• React Query • Axios • MVP • Bootstrap • Antd • Framer Motion', style: TextStyle(fontSize: 16, color: Colors.white)),
            SizedBox(height: 16),
            Text('Soft Skills:', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white)),
            Text('• Problem solving • Patience • Adaptability • Learning curiosity • Analytical thinking', style: TextStyle(fontSize: 16, color: Colors.white)),
          ],
        ),
      ),
    );
  }
}
