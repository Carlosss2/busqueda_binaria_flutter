import 'package:flutter/material.dart';
import 'package:profile/feauteres/profile/presentation/widgets/ProfileBanner.dart';
import '../widgets/ProfilePhoto.dart';
import '../widgets/ProfileStats.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const [
          ProfilePhoto(),
          ProfileStats(),
          Profilebanner()
        ],
      ),
    );
  }
}