import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../routes/app_pages.dart';
import '../widgets/custom_drawer.dart';
import '../widgets/gradient_header.dart';

class ContactView extends StatelessWidget {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final gradient = [Color(0xFF11998e), Color(0xFF38ef7d)];

    return Scaffold(
      appBar: AppBar(
        title: Text('Kontak', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
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
        currentRoute: Routes.CONTACT,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFFe0f7fa), Color(0xFFb2ebf2)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              // Header dengan gradient
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color(0xFF11998e), Color(0xFF38ef7d)],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40),
                  ),
                ),
                padding: EdgeInsets.only(
                  top: 30,
                  bottom: 40,
                  left: 20,
                  right: 20,
                ),
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
                      child: Icon(
                        Icons.contact_mail,
                        color: Colors.white,
                        size: 50,
                      ),
                    ),
                    SizedBox(height: 16),
                    Text(
                      'Hubungi Saya',
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        letterSpacing: 1.2,
                      ),
                    ),
                    SizedBox(height: 6),
                    Text(
                      '💬 Mari terhubung dan berkolaborasi',
                      style: TextStyle(fontSize: 14, color: Colors.white70),
                    ),
                  ],
                ),
              ),
              // Content
              Padding(
                padding: EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Contact Information
                    Row(
                      children: [
                        Icon(
                          Icons.contact_phone,
                          color: Color(0xFF11998e),
                          size: 24,
                        ),
                        SizedBox(width: 8),
                        Text(
                          'Informasi Kontak',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF11998e),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 16),
                    _buildContactCard(
                      icon: Icons.email_outlined,
                      label: 'Email',
                      value: 'syifaasyikaa@email.com',
                      gradient: [Color(0xFF11998e), Color(0xFF38ef7d)],
                    ),
                    SizedBox(height: 10),
                    _buildContactCard(
                      icon: Icons.phone_outlined,
                      label: 'Telepon',
                      value: '+62995059260',
                      gradient: [Color(0xFF06beb6), Color(0xFF48b1bf)],
                    ),
                    SizedBox(height: 10),
                    _buildContactCard(
                      icon: Icons.location_on_outlined,
                      label: 'Alamat',
                      value: 'Purwokerto, Jawa Tengah, Indonesia',
                      gradient: [Color(0xFF43cea2), Color(0xFF185a9d)],
                    ),
                    SizedBox(height: 10),
                    _buildContactCard(
                      icon: Icons.link,
                      label: 'LinkedIn',
                      value: 'www.linkedin.com/in/aisyah-syifa-karima',
                      gradient: [Color(0xFF00d2ff), Color(0xFF3a7bd5)],
                    ),
                    SizedBox(height: 10),
                    _buildContactCard(
                      icon: Icons.code,
                      label: 'GitHub',
                      value: 'github.com/syiffac',
                      gradient: [Color(0xFF2c3e50), Color(0xFF4ca1af)],
                    ),
                    SizedBox(height: 24),
                    // Contact Form
                    Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xFF11998e).withOpacity(0.3),
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
                                Icons.send,
                                color: Color(0xFF11998e),
                                size: 24,
                              ),
                              SizedBox(width: 8),
                              Text(
                                'Kirim Pesan',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF11998e),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 16),
                          _buildTextField(
                            controller: nameController,
                            label: 'Nama Lengkap',
                            icon: Icons.person_outline,
                          ),
                          SizedBox(height: 12),
                          _buildTextField(
                            controller: emailController,
                            label: 'Email',
                            icon: Icons.email_outlined,
                          ),
                          SizedBox(height: 12),
                          _buildTextField(
                            controller: messageController,
                            label: 'Pesan',
                            icon: Icons.message_outlined,
                            maxLines: 4,
                          ),
                          SizedBox(height: 20),
                          Container(
                            width: double.infinity,
                            height: 52,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [Color(0xFF11998e), Color(0xFF38ef7d)],
                              ),
                              borderRadius: BorderRadius.circular(16),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0xFF11998e).withOpacity(0.4),
                                  blurRadius: 15,
                                  offset: Offset(0, 8),
                                ),
                              ],
                            ),
                            child: ElevatedButton(
                              onPressed: () {
                                if (nameController.text.isEmpty ||
                                    emailController.text.isEmpty ||
                                    messageController.text.isEmpty) {
                                  Get.snackbar(
                                    'Error',
                                    'Silakan isi semua field',
                                    snackPosition: SnackPosition.BOTTOM,
                                    backgroundColor: Colors.red,
                                    colorText: Colors.white,
                                    margin: EdgeInsets.all(16),
                                    borderRadius: 12,
                                  );
                                } else {
                                  Get.snackbar(
                                    'Berhasil',
                                    'Pesan berhasil dikirim! 🎉',
                                    snackPosition: SnackPosition.BOTTOM,
                                    backgroundColor: Color(0xFF11998e),
                                    colorText: Colors.white,
                                    margin: EdgeInsets.all(16),
                                    borderRadius: 12,
                                  );
                                  nameController.clear();
                                  emailController.clear();
                                  messageController.clear();
                                }
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.transparent,
                                shadowColor: Colors.transparent,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16),
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.send,
                                    color: Colors.white,
                                    size: 20,
                                  ),
                                  SizedBox(width: 8),
                                  Text(
                                    'Kirim Pesan',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
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

  Widget _buildContactCard({
    required IconData icon,
    required String label,
    required String value,
    required List<Color> gradient,
  }) {
    return Container(
      padding: EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: gradient[0].withOpacity(0.25),
            blurRadius: 10,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: gradient),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(icon, color: Colors.white, size: 22),
          ),
          SizedBox(width: 14),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  label,
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey[600],
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 3),
                Text(
                  value,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTextField({
    required TextEditingController controller,
    required String label,
    required IconData icon,
    int maxLines = 1,
  }) {
    return TextField(
      controller: controller,
      maxLines: maxLines,
      decoration: InputDecoration(
        labelText: label,
        prefixIcon: Icon(icon, color: Color(0xFF11998e), size: 22),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: BorderSide(color: Color(0xFF11998e).withOpacity(0.3)),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: BorderSide(color: Color(0xFF11998e).withOpacity(0.3)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: BorderSide(color: Color(0xFF11998e), width: 2),
        ),
        filled: true,
        fillColor: Color(0xFF11998e).withOpacity(0.05),
        labelStyle: TextStyle(color: Colors.grey[700], fontSize: 14),
        contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      ),
    );
  }

  Widget _buildDrawer() {
    return Drawer(
      child: Container(
        color: Color(0xFF11998e),
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
                  colors: [Color(0xFF11998e), Color(0xFF38ef7d)],
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
                      isActive: false,
                      onTap: () {
                        Get.back();
                        Get.toNamed(Routes.ABOUT);
                      },
                    ),
                    _buildMenuItem(
                      icon: Icons.contact_mail_outlined,
                      label: 'Kontak',
                      isActive: true,
                      onTap: () {
                        Get.back();
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
            ? Color(0xFF11998e).withOpacity(0.1)
            : Colors.transparent,
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        leading: Icon(
          icon,
          color: isActive ? Color(0xFF11998e) : Colors.grey[600],
          size: 24,
        ),
        title: Text(
          label,
          style: TextStyle(
            color: isActive ? Color(0xFF11998e) : Colors.grey[800],
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
