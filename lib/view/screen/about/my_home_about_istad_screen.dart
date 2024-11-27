import 'dart:ui';

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
                    false, // Not reversed
                  ),
                  const SizedBox(height: 16),
                  _buildFeatureCard(
                    'Mission',
                    'Provide the latest methodology with high-quality',
                    'Get Started',
                    'assets/images/about_istad_img1.png',
                    true, // Reversed
                  ),
                  const SizedBox(height: 16),
                  _buildFeatureCard(
                    'Institute of Science and Technology Advanced Development',
                    '',
                    'Enroll Now',
                    'assets/images/about_istad_img2.png',
                    false, // Not reversed
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
                  _buildInfoSection('OUR MISSION', ''),
                  _buildMissionList('OUR MISSION',''),
                  _buildContactSection(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFeatureCard(String title, String subtitle, String buttonText,
      String backgroundImage, bool isReversed) {
    return Container(
      width: double.infinity,
      height: 180,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Stack(
        children: [
          // Positioned image with blur effect
          Positioned.fill(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                backgroundImage,
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Apply blur effect to the image
          Positioned.fill(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 2.0, sigmaY: 2.0),
                child: Container(
                  color: Colors.black.withOpacity(0),
                ),
              ),
            ),
          ),
          // Content on top of the blurred image (text and button)
          Padding(
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
                  padding: const EdgeInsets.all(0),
                  alignment: Alignment.centerRight,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor:
                      isReversed ? Colors.blue : Colors.red,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 8),
                    ),
                    child: Text(buttonText),
                  ),
                ),
              ],
            ),
          ),
        ],
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

  Widget _buildMissionList(String title, String content) {
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
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        const SizedBox(height: 16),
        _buildContactItem(Icons.location_on, 'No. 12, St. 323, Sangkat Boeung Kak II, Khan Toul Kork, Phnom Penh, Cambodia'),
        _buildContactItem(Icons.facebook, 'Facebook'),
        _buildContactItem(Icons.telegram, 'Telegram'),
        _buildContactItem(Icons.email, 'info.istad@gmail.com'),
        _buildContactItem(Icons.video_collection, 'YouTube'),
        _buildContactItem(Icons.phone, '(+855) 95 990 910 | (+855) 93 990 910'),
        _buildContactItem(Icons.wordpress, 'www.istad.edu.kh'),
      ],
    );
  }


  Widget _buildContactItem(IconData icon, String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        children: [
          Icon(icon, size: 26),
          const SizedBox(width: 8),
          Expanded(child: Text(text)),
        ],
      ),
    );
  }
}