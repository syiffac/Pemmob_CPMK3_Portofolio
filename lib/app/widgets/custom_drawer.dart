import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../routes/app_pages.dart';

class CustomDrawer extends StatelessWidget {
  final List<Color> gradient;
  final String currentRoute;

  const CustomDrawer({
    Key? key,
    required this.gradient,
    required this.currentRoute,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: gradient[0],
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
                  colors: gradient,
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
                      route: Routes.HOME,
                    ),
                    _buildMenuItem(
                      icon: Icons.info_outline,
                      label: 'Tentang',
                      route: Routes.ABOUT,
                    ),
                    _buildMenuItem(
                      icon: Icons.contact_mail_outlined,
                      label: 'Kontak',
                      route: Routes.CONTACT,
                    ),
                    Divider(height: 32, thickness: 1),
                    _buildMenuItem(
                      icon: Icons.school_outlined,
                      label: 'Pendidikan',
                      route: Routes.PENDIDIKAN,
                    ),
                    _buildMenuItem(
                      icon: Icons.work_outline,
                      label: 'Pengalaman',
                      route: Routes.PENGALAMAN,
                    ),
                    _buildMenuItem(
                      icon: Icons.star_outline,
                      label: 'Keahlian',
                      route: Routes.KEAHLIAN,
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
    required String route,
  }) {
    final isActive = currentRoute == route;
    final activeColor = gradient[0];

    return Container(
      margin: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
      decoration: BoxDecoration(
        color: isActive ? activeColor.withOpacity(0.1) : Colors.transparent,
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        leading: Icon(
          icon,
          color: isActive ? activeColor : Colors.grey[600],
          size: 24,
        ),
        title: Text(
          label,
          style: TextStyle(
            color: isActive ? activeColor : Colors.grey[800],
            fontWeight: isActive ? FontWeight.bold : FontWeight.normal,
            fontSize: 15,
          ),
        ),
        onTap: () {
          Get.back();
          if (!isActive) {
            Get.toNamed(route);
          }
        },
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
    );
  }
}
