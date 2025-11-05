import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../routes/app_pages.dart';
import '../widgets/custom_drawer.dart';
import '../widgets/gradient_header.dart';

class PengalamanView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final gradient = [Color(0xFFff6b6b), Color(0xFFfeca57)];

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Pengalaman',
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
      drawer: CustomDrawer(
        gradient: gradient,
        currentRoute: Routes.PENGALAMAN,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFFfff3e0), Color(0xFFffe0b2)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Header
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color(0xFFff6b6b), Color(0xFFfeca57)],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40),
                  ),
                ),
                padding: EdgeInsets.symmetric(vertical: 40),
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.3),
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            blurRadius: 20,
                            offset: Offset(0, 10),
                          ),
                        ],
                      ),
                      child: Icon(Icons.work, color: Colors.white, size: 60),
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Pengalaman Proyek',
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        letterSpacing: 1.2,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      '💼 Karya & Proyek yang Telah Dikerjakan',
                      style: TextStyle(fontSize: 16, color: Colors.white70),
                    ),
                  ],
                ),
              ),
              // Content
              Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  children: [
                    _buildProjectCard(
                      title: 'Aplikasi E-Commerce Mobile',
                      period: 'Juni 2024 - Agustus 2024',
                      role: 'Flutter Developer',
                      description:
                          'Membangun aplikasi e-commerce lengkap dengan fitur keranjang belanja, pembayaran, dan tracking pesanan.',
                      technologies: [
                        'Flutter',
                        'Firebase',
                        'GetX',
                        'RESTful API',
                      ],
                      achievements: [
                        'Menangani 500+ pengguna aktif',
                        'Rating 4.5/5 di Play Store',
                        'Integrasi payment gateway',
                      ],
                      gradient: [Color(0xFFff6b6b), Color(0xFFfeca57)],
                      icon: Icons.shopping_cart,
                    ),
                    SizedBox(height: 16),
                    _buildProjectCard(
                      title: 'Aplikasi Cuaca Real-time',
                      period: 'Maret 2024 - Mei 2024',
                      role: 'Mobile Developer',
                      description:
                          'Aplikasi ramalan cuaca dengan data real-time dari API, menampilkan cuaca 7 hari ke depan.',
                      technologies: ['Flutter', 'Weather API', 'Provider'],
                      achievements: [
                        'Integrasi dengan OpenWeather API',
                        'UI/UX yang responsive',
                        '10.000+ downloads',
                      ],
                      gradient: [Color(0xFF4facfe), Color(0xFF00f2fe)],
                      icon: Icons.cloud,
                    ),
                    SizedBox(height: 16),
                    _buildProjectCard(
                      title: 'To-Do List & Task Manager',
                      period: 'Januari 2024 - Februari 2024',
                      role: 'Full Stack Developer',
                      description:
                          'Aplikasi manajemen tugas dengan fitur reminder, kategori, dan sinkronisasi cloud.',
                      technologies: ['Flutter', 'SQLite', 'Local Storage'],
                      achievements: [
                        'Fitur offline-first',
                        'Notifikasi reminder',
                        'Clean architecture',
                      ],
                      gradient: [Color(0xFF667eea), Color(0xFF764ba2)],
                      icon: Icons.task_alt,
                    ),
                    SizedBox(height: 16),
                    _buildProjectCard(
                      title: 'Social Media Dashboard',
                      period: 'Oktober 2023 - Desember 2023',
                      role: 'UI/UX Designer & Developer',
                      description:
                          'Dashboard untuk mengelola multiple akun social media dengan analytics.',
                      technologies: ['Flutter', 'Chart Library', 'Firebase'],
                      achievements: [
                        'Dashboard analytics lengkap',
                        'Multi-platform support',
                        'Real-time data update',
                      ],
                      gradient: [Color(0xFFfa709a), Color(0xFFfee140)],
                      icon: Icons.dashboard,
                    ),
                    SizedBox(height: 30),
                    // Summary Card
                    Container(
                      padding: EdgeInsets.all(24),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [Colors.white, Color(0xFFfff3e0)],
                        ),
                        borderRadius: BorderRadius.circular(25),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xFFff6b6b).withOpacity(0.3),
                            blurRadius: 20,
                            offset: Offset(0, 10),
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          Text(
                            '🏆 Total Prestasi',
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFFff6b6b),
                            ),
                          ),
                          SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              _buildStatItem('15+', 'Proyek'),
                              _buildStatItem('2+', 'Tahun'),
                              _buildStatItem('20K+', 'Users'),
                            ],
                          ),
                        ],
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

  Widget _buildProjectCard({
    required String title,
    required String period,
    required String role,
    required String description,
    required List<String> technologies,
    required List<String> achievements,
    required List<Color> gradient,
    required IconData icon,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
        boxShadow: [
          BoxShadow(
            color: gradient[0].withOpacity(0.3),
            blurRadius: 20,
            offset: Offset(0, 10),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: gradient),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25),
                topRight: Radius.circular(25),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Icon(icon, color: Colors.white, size: 28),
                    ),
                    SizedBox(width: 12),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            title,
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            period,
                            style: TextStyle(
                              fontSize: 13,
                              color: Colors.white70,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 8),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Text(
                    role,
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
          // Content
          Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  description,
                  style: TextStyle(
                    fontSize: 15,
                    height: 1.6,
                    color: Colors.black87,
                  ),
                ),
                SizedBox(height: 16),
                Text(
                  'Technologies:',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                SizedBox(height: 8),
                Wrap(
                  spacing: 8,
                  runSpacing: 8,
                  children: technologies
                      .map(
                        (tech) => Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 6,
                          ),
                          decoration: BoxDecoration(
                            gradient: LinearGradient(colors: gradient),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Text(
                            tech,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      )
                      .toList(),
                ),
                SizedBox(height: 16),
                Text(
                  'Achievements:',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                SizedBox(height: 8),
                ...achievements.map(
                  (achievement) => Padding(
                    padding: EdgeInsets.only(bottom: 6),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(Icons.check_circle, size: 18, color: gradient[0]),
                        SizedBox(width: 8),
                        Expanded(
                          child: Text(
                            achievement,
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.black87,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStatItem(String value, String label) {
    return Column(
      children: [
        Text(
          value,
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: Color(0xFFff6b6b),
          ),
        ),
        Text(label, style: TextStyle(fontSize: 14, color: Colors.grey[600])),
      ],
    );
  }

  Widget _buildDrawer() {
    return Drawer(
      child: Container(
        color: Color(0xFFff6b6b),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              padding: EdgeInsets.only(
                top: 50,
                bottom: 30,
                left: 20,
                right: 20,
              ),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xFFff6b6b), Color(0xFFfeca57)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Icon(Icons.school, color: Colors.white, size: 32),
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Portofolio',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    'NIM: H1D023043',
                    style: TextStyle(color: Colors.white70, fontSize: 14),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.white,
                child: ListView(
                  padding: EdgeInsets.symmetric(vertical: 8),
                  children: [
                    _buildMenuItem(
                      icon: Icons.dashboard,
                      label: 'Dashboard',
                      isActive: false,
                      onTap: () {
                        Get.back();
                        Get.toNamed(Routes.HOME);
                      },
                    ),
                    _buildMenuItem(
                      icon: Icons.info_outline,
                      label: 'Tentang',
                      isActive: false,
                      onTap: () {
                        Get.back();
                        Get.toNamed(Routes.ABOUT);
                      },
                    ),
                    _buildMenuItem(
                      icon: Icons.contact_mail_outlined,
                      label: 'Kontak',
                      isActive: false,
                      onTap: () {
                        Get.back();
                        Get.toNamed(Routes.CONTACT);
                      },
                    ),
                    Divider(height: 32, thickness: 1),
                    _buildMenuItem(
                      icon: Icons.school_outlined,
                      label: 'Pendidikan',
                      isActive: false,
                      onTap: () {
                        Get.back();
                        Get.toNamed(Routes.PENDIDIKAN);
                      },
                    ),
                    _buildMenuItem(
                      icon: Icons.work_outline,
                      label: 'Pengalaman',
                      isActive: true,
                      onTap: () {
                        Get.back();
                      },
                    ),
                    _buildMenuItem(
                      icon: Icons.star_outline,
                      label: 'Keahlian',
                      isActive: false,
                      onTap: () {
                        Get.back();
                        Get.toNamed(Routes.KEAHLIAN);
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMenuItem({
    required IconData icon,
    required String label,
    required bool isActive,
    required VoidCallback onTap,
  }) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
      decoration: BoxDecoration(
        color: isActive
            ? Color(0xFFff6b6b).withOpacity(0.1)
            : Colors.transparent,
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        leading: Icon(
          icon,
          color: isActive ? Color(0xFFff6b6b) : Colors.grey[600],
          size: 24,
        ),
        title: Text(
          label,
          style: TextStyle(
            color: isActive ? Color(0xFFff6b6b) : Colors.grey[800],
            fontWeight: isActive ? FontWeight.bold : FontWeight.normal,
            fontSize: 15,
          ),
        ),
        onTap: onTap,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
    );
  }
}
