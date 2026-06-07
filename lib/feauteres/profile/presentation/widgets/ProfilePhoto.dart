import 'package:flutter/material.dart';
//import 'package:profile/shared/theme/util.dart';
//import 'package:profile/shared/theme/theme.dart';
class ProfilePhoto extends StatelessWidget {
  const ProfilePhoto({super.key});

  @override
  Widget build(BuildContext context) {
    
    
    return SizedBox(
      height: 280, 
      width: double.infinity,
      child: Stack(
        alignment: Alignment.center,
        children: [
          
          Positioned(
            top: 60, 
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                
                const CircleAvatar(
                  radius: 44, 
                  child: CircleAvatar(
                    radius: 40,  
                    child: Icon(Icons.person,  size: 40),
                  ),
                ),

                const SizedBox(height: 10),
                const Text(
                  "Carlos Castro",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 4),

              ],
            ),
          ),
        ],
      ),
    );
  }
}