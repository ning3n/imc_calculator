import 'package:flutter/material.dart';
import 'package:imc_calculator/core/app_colors.dart';
import 'package:imc_calculator/core/app_styles.dart';

class HeightSelector extends StatefulWidget {
  const HeightSelector({super.key});

  @override
  State<HeightSelector> createState() => HeightSelectorState();
}

class HeightSelectorState extends State<HeightSelector> {
  double height = 170; // Altura inicial

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16),
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.backgroundComponent,
          borderRadius: BorderRadius.circular(16)
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top:8.0),
              child: Text("ALTURA", style: TextStyles.bodyText),
            ),
            Text("${height.toStringAsFixed(0)} cm", style: TextStyle(
              color: Colors.white, fontSize: 38, fontWeight: FontWeight.bold
            )),
            Slider(value: height, onChanged: (newHeight){
              setState(() {
                height = newHeight;  
              });
            }, 
            min: 150, 
            max: 220,
            divisions: 70,
            label: "${height.toStringAsFixed(0)} cm",
            activeColor: AppColors.primary,
            )
          ],
        ),
      ),
    );
  }
}