import 'package:flutter/material.dart';

class Profilebanner extends StatelessWidget {
  const Profilebanner({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    
    return SizedBox(
      height: 140, 
      width: double.infinity,
      child: Stack(
        children: [
          
          Positioned(
            top: 15,    
            left: 10,
            right: 10,
            bottom: 0,
            child: Container(
              decoration: BoxDecoration(
                color: theme.primaryColor, 
                borderRadius: BorderRadius.circular(16),
              ),
              child: const Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(width: 10),
                    Text(
                      "No highlights",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }
}