import 'package:flutter/material.dart';
import 'routes.dart';
import 'configuration/app_colors.dart';

class FirstScreenMobile extends StatefulWidget {
  const FirstScreenMobile({super.key});

  @override
  State<FirstScreenMobile> createState() => _FirstScreenMobileState();
}

class _FirstScreenMobileState extends State<FirstScreenMobile> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final width = size.width;
    final height = size.height;

    // 🔢 Responsive sizing
    final double imageHeight = height * 0.70;
    final double titleFontSize = width * 0.08; // ex: 32 pour width 400
    final double bodyFontSize = width * 0.045; // ex: 18

    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // 🔹 Image de couverture avec coins arrondis
              Container(
                height: imageHeight,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40),
                  ),
                  color: Colors.grey,
                  image: const DecorationImage(
                    image: AssetImage('lib/assets/images/page1.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              const SizedBox(height: 24),

              // 🔹 Titre
              Text(
                'Stories +243',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      color: AppColors.primary,
                      fontWeight: FontWeight.bold,
                      fontSize: titleFontSize,
                      fontStyle: FontStyle.italic,
                    ),
              ),

              const SizedBox(height: 12),

              // 🔹 Texte de description
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  'Rire, informer, débattre, faire réfléchir,\nDécouvrir Kinshasa comme jamais auparavant.',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        color: AppColors.primary,
                        fontWeight: FontWeight.normal,
                        fontSize: bodyFontSize,
                        fontFamily: "Poppins",
                      ),
                ),
              ),

              const SizedBox(height: 24),

              // 🔹 Bouton Commencez
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(
                    horizontal: width * 0.2,
                    vertical: height * 0.02,
                  ),
                  backgroundColor: AppColors.primary,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: Text(
                  'Commencez',
                  style: TextStyle(
                    fontSize: bodyFontSize,
                    color: Colors.white,
                  ),
                ),
                onPressed: () => Navigator.pushNamed(context, Routes.registre),
              ),

              const SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }
}