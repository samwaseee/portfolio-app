import 'package:flutter/material.dart';

class SkillsPage extends StatelessWidget {
  const SkillsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Skills'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Expertise:', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            Text('• React\n• MongoDB\n• HTML\n• JavaScript\n• CSS\n• Git', style: TextStyle(fontSize: 16)),
            SizedBox(height: 16),
            Text('Comfortable:', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            Text('• Next.js\n• Node.js\n• REST API\n• TypeScript\n• MySQL\n• Express.js\n• MUI\n• Tailwind CSS', style: TextStyle(fontSize: 16)),
            SizedBox(height: 16),
            Text('Familiar:', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            Text('• React Query\n• Axios\n• MVP\n• Bootstrap\n• Antd\n• Framer Motion', style: TextStyle(fontSize: 16)),
            SizedBox(height: 16),
            Text('Soft Skills:', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            Text('• Problem solving\n• Patience\n• Adaptability\n• Learning curiosity\n• Analytical thinking', style: TextStyle(fontSize: 16)),
          ],
        ),
      ),
    );
  }
}
