import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../routes/app_pages.dart';
import '../widgets/custom_drawer.dart';
import '../widgets/gradient_header.dart';

class PendidikanView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final gradient = [Color(0xFF00c6ff), Color(0xFF0072ff)];

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Pendidikan',
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
        currentRoute: Routes.PENDIDIKAN,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFFe0f7ff), Color(0xFFb3e5fc)],
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
                    colors: [Color(0xFF00c6ff), Color(0xFF0072ff)],
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
                      child: Icon(Icons.school, color: Colors.white, size: 60),
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Riwayat Pendidikan',
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        letterSpacing: 1.2,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      '🎓 Perjalanan Akademik Saya',
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
                    _buildEducationCard(
                      level: 'Perguruan Tinggi',
                      institution: 'Universitas Jenderal Soedirman',
                      period: '2023 - Sekarang',
                      major: 'Teknik Informatika',
                      achievement: 'IPK: 3.82',
                      description:
                          '• Fokus pada Mobile Development & Software Engineering\n• Aktif dalam organisasi kemahasiswaan\n• Mengikuti berbagai workshop dan seminar teknologi',
                      gradient: [Color(0xFF00c6ff), Color(0xFF0072ff)],
                      icon: Icons.school,
                    ),
                    SizedBox(height: 16),
                    _buildEducationCard(
                      level: 'SMA',
                      institution: 'SMAIT Al Irsyad Al Islamiyyah Purwokerto',
                      period: '2020 - 2023',
                      major: 'IPA ',
                      achievement: 'Rata-rata: 93',
                      description:
                          '• Juara lomba programming tingkat kabupaten\n• Ketua OSIS periode 2020\n• Aktif dalam kegiatan ekstrakurikuler',
                      gradient: [Color(0xFF4facfe), Color(0xFF00f2fe)],
                      icon: Icons.account_balance,
                    ),
                    SizedBox(height: 30),
                    // Sertifikasi
                    Container(
                      padding: EdgeInsets.all(24),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xFF00c6ff).withOpacity(0.3),
                            blurRadius: 20,
                            offset: Offset(0, 10),
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.card_membership,
                                color: Color(0xFF00c6ff),
                                size: 28,
                              ),
                              SizedBox(width: 12),
                              Text(
                                'Sertifikasi',
                                style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF00c6ff),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 16),
                          _buildCertificateItem(
                            '✓ Flutter Development Bootcamp',
                            '2023',
                          ),
                          _buildCertificateItem(
                            '✓ UI/UX Design Fundamentals',
                            '2023',
                          ),
                          _buildCertificateItem(
                            '✓ Firebase & Backend Integration',
                            '2024',
                          ),
                          _buildCertificateItem(
                            '✓ Git & Version Control',
                            '2024',
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

  Widget _buildEducationCard({
    required String level,
    required String institution,
    required String period,
    required String major,
    required String achievement,
    required String description,
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
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.all(12),
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
                        level,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        period,
                        style: TextStyle(fontSize: 14, color: Colors.white70),
                      ),
                    ],
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
                  institution,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  major,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey[700],
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 8),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(colors: gradient),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Text(
                    achievement,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(height: 12),
                Text(
                  description,
                  style: TextStyle(
                    fontSize: 14,
                    height: 1.8,
                    color: Colors.black87,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCertificateItem(String title, String year) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          Container(
            width: 8,
            height: 8,
            decoration: BoxDecoration(
              color: Color(0xFF00c6ff),
              shape: BoxShape.circle,
            ),
          ),
          SizedBox(width: 12),
          Expanded(
            child: Text(
              title,
              style: TextStyle(fontSize: 15, color: Colors.black87),
            ),
          ),
          Text(
            year,
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey[600],
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDrawer() {
    return Drawer(
      child: Container(
        color: Color(0xFF00c6ff),
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
                  colors: [Color(0xFF00c6ff), Color(0xFF0072ff)],
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
                      isActive: true,
                      onTap: () {
                        Get.back();
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
            ? Color(0xFF00c6ff).withOpacity(0.1)
            : Colors.transparent,
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        leading: Icon(
          icon,
          color: isActive ? Color(0xFF00c6ff) : Colors.grey[600],
          size: 24,
        ),
        title: Text(
          label,
          style: TextStyle(
            color: isActive ? Color(0xFF00c6ff) : Colors.grey[800],
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
