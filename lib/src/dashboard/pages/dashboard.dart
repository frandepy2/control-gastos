import 'package:control_gastos/utils/session_singleton.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Gastos Check",
          style: GoogleFonts.lato(),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildWelcome(),
            const SizedBox(height: 8),
            _buidInfoSection(),
            const SizedBox(height: 8),
            _buildRecentTransactions(),
          ],
        ),
      ),
    );
  }

  Widget _buildWelcome() {
    return Container(
      child: ListTile(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Bienvenido',
              style: GoogleFonts.lato(
                textStyle: TextStyle(
                  fontSize: 18,
                  color: Colors.grey,
                ),
              ),
            ),
            Text(
              '${SessionSingleton.instance.email}',
              style: GoogleFonts.lato(
                textStyle: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
        trailing: Container(
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(8.0),
          ),
          width: 50,
          height: 50,
        ),
      ),
    );
  }

  _buidInfoSection() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.blue, Colors.indigo],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              color: Colors.blue,
              borderRadius: BorderRadius.circular(8.0),
            ),
            height: MediaQuery.of(context).size.height * 0.23,
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Text(
                    "Gs.${120000}",
                    style: GoogleFonts.roboto(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 42,
                    ),
                  ),
                  Text(
                    '${6}% del presupuesto. ${2000000} Gs.',
                    style: GoogleFonts.roboto(
                      color: Color.fromARGB(255, 147, 168, 243),
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: CustomButton(
                          text: 'Ingresos',
                          icon: Icons.arrow_upward,
                          iconColor: Colors.green,
                        ),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Expanded(
                        child: CustomButton(
                          text: 'Egresos',
                          icon: Icons.arrow_downward,
                          iconColor: Colors.red,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  _buildRecentTransactions() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            "Actividad Reciente",
            style: GoogleFonts.roboto(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 8,
          )
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final String text;
  final IconData icon;
  final Color iconColor;
  const CustomButton({
    super.key,
    required this.text,
    required this.icon,
    required this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          )),
      onPressed: () {},
      child: Row(
        children: [
          Icon(
            icon,
            color: iconColor,
          ),
          const SizedBox(width: 8),
          Text(
            text,
            style: GoogleFonts.roboto(
              fontSize: 16,
              color: Colors.indigo,
            ),
          ),
        ],
      ),
    );
  }
}
