import 'package:flutter/material.dart';

class HomeIstadScreen extends StatefulWidget {
  const HomeIstadScreen({super.key});

  @override
  State<HomeIstadScreen> createState() => _HomePageState();
}

class _HomePageState extends State<HomeIstadScreen> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  _buildFeatureCard(
                    'Vision',
                    'Advanced IT Institute in Cambodia',
                    'Learn More',
                    'assets/images/about_istad_img.png',
                  ),
                  const SizedBox(height: 16),
                  _buildFeatureCard(
                    'Mission',
                    'Provide the latest methodology with high-quality',
                    'Get Started',
                    'assets/mission_bg.jpg',
                  ),
                  const SizedBox(height: 16),
                  _buildFeatureCard(
                    'Institute of Science and Technology Advanced Development',
                    '',
                    'Enroll Now',
                    'assets/institute_bg.jpg',
                  ),
                ],
              ),
            ),

            // About Us Section
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'ABOUT US',
                    style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Text(
                    'INSTITUTE OF SCIENCE AND TECHNOLOGY ADVANCED DEVELOPMENT ?',
                    style: TextStyle(
                      color: Color(0xFF1B2C70),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 16),
                  _buildInfoSection('WHO ARE WE?',
                      'INSTITUTE is a noteworthy science and technology institute in Cambodia. INSTITUTE has routed Cambodian students to advanced science and technology, research, and develop digital skills and our graduates have been guaranteed excellent job opportunities with the Top IT company.'
                  ),
                  _buildInfoSection('VISION & MISSION', ''),
                  _buildInfoSection('OUR VISION', 'Advanced IT Institute in Cambodia'),
                  _buildMissionList(),
                  _buildContactSection(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFeatureCard(String title, String subtitle, String buttonText, String backgroundImage) {
    return Container(
      height: 180,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          image: AssetImage(backgroundImage),
          fit: BoxFit.cover,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            if (subtitle.isNotEmpty)
              Text(
                subtitle,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: buttonText == 'Get Started' ? Colors.red : Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: Text(buttonText),
              ),
            ),
          ],
        ),
      ),
    );
  }


  Widget _buildInfoSection(String title, String content) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            const Icon(Icons.diamond, color: Color(0xFF1B2C70)),
            const SizedBox(width: 8),
            Text(
              title,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ],
        ),
        if (content.isNotEmpty)
          Padding(
            padding: const EdgeInsets.only(left: 32, top: 8, bottom: 16),
            child: Text(content),
          ),
      ],
    );
  }

  Widget _buildMissionList() {
    return Padding(
      padding: const EdgeInsets.only(left: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text('• Provide the latest methodology with high-quality training and mentoring'),
          Text('• Build up the capacity and career of IT experts in Cambodia'),
          Text('• Consult and connect ISTAD trainees to top IT careers'),
        ],
      ),
    );
  }

  Widget _buildContactSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'If you have any questions, please feel free to contact us.',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 16),
        _buildContactItem(Icons.location_on, 'No. 12, St. 323, Sangkat Boeung Kak II, Khan Toul Kork, Phnom Penh, Cambodia'),
        _buildContactItem(Icons.facebook, 'Facebook'),
        _buildContactItem(Icons.telegram, 'Telegram'),
        _buildContactItem(Icons.email, 'info.istad@gmail.com'),
        _buildContactItem(Icons.youtube_searched_for, 'YouTube'),
        _buildContactItem(Icons.phone, '(+855) 95 990 910 | (+855) 93 990 910'),
        _buildContactItem(Icons.web, 'www.istad.edu.kh'),
      ],
    );
  }

  Widget _buildContactItem(IconData icon, String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        children: [
          Icon(icon, size: 20),
          const SizedBox(width: 8),
          Expanded(child: Text(text)),
        ],
      ),
    );
  }
}