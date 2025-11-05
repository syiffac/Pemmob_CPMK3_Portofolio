import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../routes/app_pages.dart';
import '../widgets/custom_drawer.dart';
import '../widgets/gradient_header.dart';
import '../widgets/gradient_card.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final gradient = [Color(0xFF667eea), Color(0xFF764ba2)];

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Portofolio Pribadi',
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
      drawer: CustomDrawer(gradient: gradient, currentRoute: Routes.HOME),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFFf5f7fa), Color(0xFFc3cfe2)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Header dengan Foto Profil
              _buildHeaderWithPhoto(gradient),
              // Body Content
              Padding(
                padding: EdgeInsets.all(24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Welcome Card
                    GradientCard(
                      title: 'Selamat Datang!',
                      icon: Icons.rocket_launch,
                      gradient: gradient,
                      child: Padding(
                        padding: EdgeInsets.all(20),
                        child: Text(
                          'Saya adalah seorang mahasiswa yang passionate dalam pengembangan aplikasi mobile menggunakan Flutter. Mari ciptakan sesuatu yang luar biasa bersama! 🚀',
                          style: TextStyle(
                            fontSize: 16,
                            height: 1.6,
                            color: Colors.black87,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 30),
                    // Skills Section
                    Row(
                      children: [
                        Icon(Icons.star, color: Color(0xFF764ba2)),
                        SizedBox(width: 8),
                        Text(
                          'Kemampuan Utama',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF667eea),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child: _buildStatCard(
                            'Flutter',
                            Icons.phone_android,
                            Color(0xFF667eea),
                            Color(0xFF764ba2),
                          ),
                        ),
                        SizedBox(width: 12),
                        Expanded(
                          child: _buildStatCard(
                            'Dart',
                            Icons.code,
                            Color(0xFFf093fb),
                            Color(0xFFf5576c),
                          ),
                        ),
                        SizedBox(width: 12),
                        Expanded(
                          child: _buildStatCard(
                            'UI/UX',
                            Icons.palette,
                            Color(0xFF4facfe),
                            Color(0xFF00f2fe),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 30),
                    // Quick Links
                    _buildQuickLinks(gradient),
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

  // Widget Header dengan Foto Profil
  Widget _buildHeaderWithPhoto(List<Color> gradient) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: gradient,
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
          // Foto Profil dengan Border Gradient
          Container(
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                colors: [Colors.white, Colors.white70],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.3),
                  blurRadius: 20,
                  offset: Offset(0, 10),
                ),
              ],
            ),
            child: Container(
              padding: EdgeInsets.all(3),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  colors: gradient,
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: CircleAvatar(
                radius: 70,
                backgroundColor: Colors.white,
                backgroundImage: AssetImage('assets/images/profile.jpg'),
                // Jika foto tidak ada, gunakan placeholder
                onBackgroundImageError: (exception, stackTrace) {
                  print('Error loading image');
                },
                child: null,
              ),
            ),
          ),
          SizedBox(height: 20),
          // Nama
          Text(
            'Nama Lengkap Anda',
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              letterSpacing: 1.2,
            ),
          ),
          SizedBox(height: 8),
          // Job Title
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.3),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Text(
              '✨ Flutter Developer ✨',
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          SizedBox(height: 12),
          // NIM
          Text(
            'NIM: H1D023043',
            style: TextStyle(fontSize: 14, color: Colors.white70),
          ),
        ],
      ),
    );
  }

  Widget _buildStatCard(
    String title,
    IconData icon,
    Color color1,
    Color color2,
  ) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 12),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: color1.withOpacity(0.4),
            blurRadius: 15,
            offset: Offset(0, 8),
          ),
        ],
      ),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.3),
              shape: BoxShape.circle,
            ),
            child: Icon(icon, color: Colors.white, size: 32),
          ),
          SizedBox(height: 12),
          Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15,
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  Widget _buildQuickLinks(List<Color> gradient) {
    return GradientCard(
      title: 'Quick Links',
      icon: Icons.link,
      gradient: gradient,
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            _buildQuickLinkItem(
              icon: Icons.school_outlined,
              label: 'Pendidikan',
              gradient: [Color(0xFF00c6ff), Color(0xFF0072ff)],
              onTap: () => Get.toNamed(Routes.PENDIDIKAN),
            ),
            SizedBox(height: 12),
            _buildQuickLinkItem(
              icon: Icons.work_outline,
              label: 'Pengalaman',
              gradient: [Color(0xFFff6b6b), Color(0xFFfeca57)],
              onTap: () => Get.toNamed(Routes.PENGALAMAN),
            ),
            SizedBox(height: 12),
            _buildQuickLinkItem(
              icon: Icons.star_outline,
              label: 'Keahlian',
              gradient: [Color(0xFFf5576c), Color(0xFFf093fb)],
              onTap: () => Get.toNamed(Routes.KEAHLIAN),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildQuickLinkItem({
    required IconData icon,
    required String label,
    required List<Color> gradient,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: gradient),
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: gradient[0].withOpacity(0.3),
              blurRadius: 10,
              offset: Offset(0, 5),
            ),
          ],
        ),
        child: Row(
          children: [
            Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.3),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Icon(icon, color: Colors.white, size: 24),
            ),
            SizedBox(width: 16),
            Text(
              label,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Spacer(),
            Icon(Icons.arrow_forward_ios, color: Colors.white, size: 16),
          ],
        ),
      ),
    );
  }
}
