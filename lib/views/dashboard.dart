import 'package:flutter/material.dart';
import 'package:magic_fit/constants/app_colors.dart';
import 'package:magic_fit/views/profile.dart';
import 'package:magic_fit/widgets/Logo.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width * 1,
          height: MediaQuery.of(context).size.height * 1,
          padding: const EdgeInsets.only(
            top: 140,
          ),
          color: Colors.black,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Logo(),
              const Text(
                'Dashboard',
                key: ValueKey('dashboard'),
                style: TextStyle(
                  color: AppColors.primary,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Spacer(),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: 70,
                height: 70,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.black,
                  border: Border.all(
                    width: 5,
                    color: AppColors.primary,
                  ),
                  boxShadow: const [
                    BoxShadow(
                      color: AppColors.primary,
                      blurRadius: 30,
                    ),
                  ],
                ),
                child: InkWell(
                  onTap: (() {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (_) {
                        return const Profile();
                      }),
                    );
                  }),
                  key: const ValueKey('view_profile'),
                  child: const Text(
                    'Profile',
                    style: TextStyle(
                      color: AppColors.primary,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'User profile screen navigation',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
