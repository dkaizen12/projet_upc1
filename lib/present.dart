import 'package:flutter/material.dart';
import 'routes.dart';
import 'widgets_communs/responsive.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const ResponsiveLayout(
      mobile: FirstScreenMobile(),
      tablet: FirstScreenTablet(),
      orientation: PaysageScreen(),
    );
  }
}

class FirstScreenMobile extends StatefulWidget {
  const FirstScreenMobile({super.key});

  @override
  State<FirstScreenMobile> createState() => _FirstScreenMobileState();
}

class _FirstScreenMobileState extends State<FirstScreenMobile> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(
      children: [
        // 🔹 Arrière-plan avec une image
        Positioned.fill(
          child: Image.asset(
            'lib/assets/images/page1.jpg', //l’image est bien déclarée dans pubspec.yaml
            fit: BoxFit.cover, // 🔹 L’image remplit tout l’espace
          ),
        ),

        // 🔹 Contenu au-dessus de l’image
        Positioned(top: size.height * 0.2, 
        left: size.width * 0.5, child: Icon(Icons.phone)),
        Positioned(
          top: size.height * 0.4,
          left: size.width *0.25,
          child: Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.black.withValues(alpha: 0.5), // Effet flouté
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Text(
              'Bienvenue sur Stories +243',
              style: TextStyle(
                fontSize: 24,
                color: Colors.white,
                decoration: TextDecoration.none,
              ),
            ),
          ),
        ),
        Positioned(
          bottom: size.height*0.03,
          left: size.width *0.25,
          child: ElevatedButton(
            onPressed: () {
              setState(() {
                Navigator.pushNamed(context, Routes.home);
              });
            },
            child: const Text("Commencez"),
            style: ButtonStyle(
              backgroundColor: WidgetStatePropertyAll<Color>(Colors.black),
            ),
          ),
        ),
      ],
    );
  }
}

class FirstScreenTablet extends StatefulWidget {
  const FirstScreenTablet({super.key});

  @override
  State<FirstScreenTablet> createState() => _FirstScreenTabletState();
}

class _FirstScreenTabletState extends State<FirstScreenTablet> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class FirstScreenDesktop extends StatefulWidget {
  const FirstScreenDesktop({super.key});

  @override
  State<FirstScreenDesktop> createState() => _FirstScreenDesktopState();
}

class _FirstScreenDesktopState extends State<FirstScreenDesktop> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class PaysageScreen extends StatefulWidget {
  const PaysageScreen({super.key});

  @override
  State<PaysageScreen> createState() => _PaysageScreenState();
}

class _PaysageScreenState extends State<PaysageScreen> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}