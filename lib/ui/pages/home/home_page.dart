import 'package:flutter/material.dart';
import 'package:nimaqilay/ui/widgets/my_alert_dialog.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Nima Qilay?"),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                key: UniqueKey(),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) => const MyAlertDialog(),
                  );
                },
                child: const Text(
                  "Nima Qilay!",
                  style: TextStyle(
                    fontSize: 24,
                  ),
                ),
              ),
              IconButton(
                onPressed: () {
                  showAboutDialog(
                    context: context,
                    applicationName: "Nima Qilay",
                  );
                },
                icon: const Icon(
                  Icons.info_outline,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
