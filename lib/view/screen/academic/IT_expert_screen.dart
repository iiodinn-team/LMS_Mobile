import 'package:flutter/material.dart';
import 'package:lms_mobile/view/screen/about/my_home_about_istad_screen.dart';
import '../../home.dart';
import '../../widgets/appbar_and_bottom_navigation_widgets.dart';
import '../lms/auth/first_log_in_screen.dart';
import 'my_home_academic_screen.dart';


class ITExpertPage extends StatefulWidget {
  const ITExpertPage({Key? key}) : super(key: key);

  @override
  _ITExpertPageState createState() => _ITExpertPageState();
}

class _ITExpertPageState extends State<ITExpertPage> {
  int currentIndex = 0;

  // List of screens for each tab
  final List<Widget> screens = [
    const HomeScreen(),
    const MyAcademicScreen(),
    const HomeIstadScreen(),
    const firstSignInScreen(),
  ];

  void onTabTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }


  @override
  Widget build(BuildContext context) {
    return AppLayout(
      title: "Associate",
      currentIndex: currentIndex,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  'assets/images/IT_expert_gen2.png',
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: 200,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                "Closed",
                style: TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
              ),
              const SizedBox(height: 4),
              const Text(
                "IT Expert Scholarship",
                style: TextStyle(
                  color: Color(0xFF253B95),
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                "Institute of Science and Technology Advanced Development currently provides a 100% scholarship opportunity for 60 places in 2024.",
                style: TextStyle(
                  color: Color(0xFF535763),
                  fontSize: 14,
                  height: 1.4,
                ),
              ),
              const SizedBox(height: 16),
              const Row(
                children: [
                  Text(
                    "Times: ",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    "8:00 am - 4:30 pm",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Spacer(),
                  Text(
                    "Hours: ",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 36.0), // Add right padding to "8hr"
                    child: Text(
                      "8hr",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              // Foundation Courses
              const Text(
                "Foundation Courses",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF253B95),
                ),
              ),
              const SizedBox(height: 8),
              _buildCourseList([
                "Java Programming",
                "Web Design",
                "Database",
                "Spring",
                "Git and Deployment",
                "UX/UI Concept and Design",
                "Project Management",
              ]),
              const SizedBox(height: 16),
              // Advanced Courses
              const Text(
                "Advanced Courses",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF253B95),
                ),
              ),
              const SizedBox(height: 8),
              _buildCourseList([
                "Blockchain Development",
                "Cyber Security",
                "Data Analytics",
                "DevOps",
                "Spring Advanced",
                "Flutter Mobile Development",
              ]),
            ],
          ),
        ),
      ),
      onTabTapped: onTabTapped, // Pass the method to AppLayout
    );
  }

  Widget _buildCourseList(List<String> courses) {
    return Column(
      children: courses
          .map(
            (course) => Padding(
          padding: const EdgeInsets.only(left: 24.0), // Adjust left padding here
          child: Row(
            children: [
              const Icon(
                Icons.star,
                color: Color(0xFFEAB305),
                size: 18,
              ),
              const SizedBox(width: 8),
              Text(
                course,
                style: const TextStyle(
                  fontSize: 14,
                  color: Color(0xFF535763),
                ),
              ),
            ],
          ),
        ),
      )
          .toList(),
    );
  }
}
