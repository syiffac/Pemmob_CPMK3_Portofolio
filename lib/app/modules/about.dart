import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../routes/app_pages.dart';
import '../widgets/custom_drawer.dart';
import '../widgets/gradient_header.dart';

class AboutView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final gradient = [Color(0xFFfa709a), Color(0xFFfee140)];

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Tentang Saya',
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
        currentRoute: Routes.ABOUT,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFFffecd2), Color(0xFFfcb69f)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Header dengan gradient
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color(0xFFfa709a), Color(0xFFfee140)],
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
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: LinearGradient(
                          colors: [Colors.white, Color(0xFFffecd2)],
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            blurRadius: 20,
                            offset: Offset(0, 10),
                          ),
                        ],
                      ),
                      child: CircleAvatar(
                        radius: 70,
                        backgroundColor: Colors.white,
                        child: Icon(
                          Icons.person,
                          size: 70,
                          color: Color(0xFFfa709a),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Aisyah Syifa Karima',
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        letterSpacing: 1.2,
                      ),
                    ),
                    SizedBox(height: 8),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 6,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        '💼 Flutter Developer | Mobile Apps',
                        style: TextStyle(fontSize: 14, color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
              // Content
              Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  children: [
                    _buildModernSection(
                      title: 'Profil',
                      icon: Icons.person_outline,
                      content:
                          'Saya adalah seorang mahasiswa yang passionate dalam pengembangan aplikasi mobile menggunakan Flutter. Saya memiliki dedikasi tinggi dalam teknologi dan selalu berusaha untuk terus belajar hal-hal baru setiap hari! 💪',
                      gradient: [Color(0xFFfa709a), Color(0xFFfee140)],
                    ),
                    SizedBox(height: 16),
                    _buildModernSection(
                      title: 'Pendidikan',
                      icon: Icons.school_outlined,
                      content:
                          '🎓 Universitas/Institut: Universitas Jenderal Soedirman\n📚 Program Studi: Informatika',
                      gradient: [Color(0xFFf093fb), Color(0xFFf5576c)],
                    ),
                    SizedBox(height: 16),
                    _buildModernSection(
                      title: 'Keahlian',
                      icon: Icons.star_outline,
                      content:
                          '⚡ Flutter & Dart\n📱 Mobile App Development\n🎨 UI/UX Design\n🧩 Problem Solving\n🤝 Team Work\n🚀 Fast Learner',
                      gradient: [Color(0xFFffa726), Color(0xFFfb8c00)],
                    ),
                    SizedBox(height: 16),
                    _buildModernSection(
                      title: 'Pengalaman Proyek',
                      icon: Icons.work_outline,
                      content:
                          '✅ Aplikasi To-Do List dengan Flutter\n🌤️ Aplikasi Cuaca dengan API Integration\n🛒 Aplikasi E-commerce sederhana\n💼 Portfolio Website\n📊 Dashboard Analytics App',
                      gradient: [Color(0xFFff6b6b), Color(0xFFfeca57)],
                    ),
                    SizedBox(height: 30),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildModernSection({
    required String title,
    required IconData icon,
    required String content,
    required List<Color> gradient,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
        boxShadow: [
          BoxShadow(
            color: gradient[0].withOpacity(0.4),
            blurRadius: 20,
            offset: Offset(0, 10),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: gradient,
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25),
                topRight: Radius.circular(25),
              ),
            ),
            child: Row(
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
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: Text(
              content,
              style: TextStyle(
                fontSize: 15,
                height: 1.8,
                color: Colors.black87,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDrawer() {
    return Drawer(
      child: Container(
        color: Color(0xFFfa709a),
        child: Column(
          children: [
            // Header Sidebar
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
                  colors: [Color(0xFFfa709a), Color(0xFFfee140)],
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
            // Menu Items
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
                      isActive: true,
                      onTap: () {
                        Get.back();
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
                      isActive: false,
                      onTap: () {
                        Get.back();
                        Get.toNamed(Routes.PENGALAMAN);
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
            ? Color(0xFFfa709a).withOpacity(0.1)
            : Colors.transparent,
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        leading: Icon(
          icon,
          color: isActive ? Color(0xFFfa709a) : Colors.grey[600],
          size: 24,
        ),
        title: Text(
          label,
          style: TextStyle(
            color: isActive ? Color(0xFFfa709a) : Colors.grey[800],
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
