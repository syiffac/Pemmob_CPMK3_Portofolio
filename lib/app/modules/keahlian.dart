import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../routes/app_pages.dart';
import '../widgets/custom_drawer.dart';
import '../widgets/gradient_header.dart';
import '../widgets/gradient_card.dart';
import '../widgets/skill_bar.dart';

class KeahlianView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final gradient = [Color(0xFFf5576c), Color(0xFFf093fb)];

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Keahlian',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.white),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: gradient,
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
      ),
      drawer: CustomDrawer(gradient: gradient, currentRoute: Routes.KEAHLIAN),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFFffeef8), Color(0xFFffd6e8)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Header menggunakan GradientHeader widget
              GradientHeader(
                title: 'Keahlian & Skill',
                subtitle: '⚡ Kemampuan yang Saya Kuasai',
                icon: Icons.star,
                gradient: gradient,
              ),
              // Content
              Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  children: [
                    // Programming Languages menggunakan GradientCard
                    GradientCard(
                      title: 'Programming Languages',
                      icon: Icons.code,
                      gradient: gradient,
                      child: Padding(
                        padding: EdgeInsets.all(20),
                        child: Column(
                          children: [
                            SkillBar(
                              skillName: 'Dart',
                              level: 0.9,
                              gradient: gradient,
                            ),
                            SkillBar(
                              skillName: 'JavaScript',
                              level: 0.85,
                              gradient: gradient,
                            ),
                            SkillBar(
                              skillName: 'Python',
                              level: 0.75,
                              gradient: gradient,
                            ),
                            SkillBar(
                              skillName: 'Java',
                              level: 0.7,
                              gradient: gradient,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    // Frameworks menggunakan GradientCard
                    GradientCard(
                      title: 'Frameworks & Tools',
                      icon: Icons.layers,
                      gradient: [Color(0xFF667eea), Color(0xFF764ba2)],
                      child: Padding(
                        padding: EdgeInsets.all(20),
                        child: Column(
                          children: [
                            SkillBar(
                              skillName: 'Flutter',
                              level: 0.95,
                              gradient: [Color(0xFF667eea), Color(0xFF764ba2)],
                            ),
                            SkillBar(
                              skillName: 'React Native',
                              level: 0.8,
                              gradient: [Color(0xFF667eea), Color(0xFF764ba2)],
                            ),
                            SkillBar(
                              skillName: 'Firebase',
                              level: 0.85,
                              gradient: [Color(0xFF667eea), Color(0xFF764ba2)],
                            ),
                            SkillBar(
                              skillName: 'Git & GitHub',
                              level: 0.9,
                              gradient: [Color(0xFF667eea), Color(0xFF764ba2)],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    // Design menggunakan GradientCard
                    GradientCard(
                      title: 'Design & UI/UX',
                      icon: Icons.palette,
                      gradient: [Color(0xFF4facfe), Color(0xFF00f2fe)],
                      child: Padding(
                        padding: EdgeInsets.all(20),
                        child: Column(
                          children: [
                            SkillBar(
                              skillName: 'Figma',
                              level: 0.88,
                              gradient: [Color(0xFF4facfe), Color(0xFF00f2fe)],
                            ),
                            SkillBar(
                              skillName: 'Adobe XD',
                              level: 0.75,
                              gradient: [Color(0xFF4facfe), Color(0xFF00f2fe)],
                            ),
                            SkillBar(
                              skillName: 'UI Design',
                              level: 0.85,
                              gradient: [Color(0xFF4facfe), Color(0xFF00f2fe)],
                            ),
                            SkillBar(
                              skillName: 'Prototyping',
                              level: 0.8,
                              gradient: [Color(0xFF4facfe), Color(0xFF00f2fe)],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    // Soft Skills menggunakan GradientCard
                    GradientCard(
                      title: 'Soft Skills',
                      icon: Icons.people,
                      gradient: [Color(0xFFfa709a), Color(0xFFfee140)],
                      child: Padding(
                        padding: EdgeInsets.all(20),
                        child: Column(
                          children: [
                            SkillBar(
                              skillName: 'Team Work',
                              level: 0.92,
                              gradient: [Color(0xFFfa709a), Color(0xFFfee140)],
                            ),
                            SkillBar(
                              skillName: 'Problem Solving',
                              level: 0.88,
                              gradient: [Color(0xFFfa709a), Color(0xFFfee140)],
                            ),
                            SkillBar(
                              skillName: 'Communication',
                              level: 0.85,
                              gradient: [Color(0xFFfa709a), Color(0xFFfee140)],
                            ),
                            SkillBar(
                              skillName: 'Time Management',
                              level: 0.87,
                              gradient: [Color(0xFFfa709a), Color(0xFFfee140)],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    // Additional Skills menggunakan GradientCard
                    GradientCard(
                      title: 'Kemampuan Lainnya',
                      icon: Icons.lightbulb,
                      gradient: gradient,
                      child: Padding(
                        padding: EdgeInsets.all(20),
                        child: Wrap(
                          spacing: 10,
                          runSpacing: 10,
                          children: [
                            _buildChip('RESTful API'),
                            _buildChip('State Management'),
                            _buildChip('Responsive Design'),
                            _buildChip('Clean Code'),
                            _buildChip('Agile Method'),
                            _buildChip('Testing & Debug'),
                            _buildChip('CI/CD'),
                            _buildChip('SQL & NoSQL'),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildChip(String label) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFFf5576c), Color(0xFFf093fb)],
        ),
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Color(0xFFf5576c).withOpacity(0.3),
            blurRadius: 8,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Text(
        label,
        style: TextStyle(
          color: Colors.white,
          fontSize: 14,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}