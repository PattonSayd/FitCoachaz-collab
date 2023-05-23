import 'package:fitcoachaz/ui/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Notifications'),
      ),
      body: ListView.separated(
        itemCount: 5,
        separatorBuilder: (context, index) => const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Divider(height: 2, color: AppColors.bright),
        ),
        itemBuilder: (context, index) {
          return Slidable(
            key: ValueKey(index),
            endActionPane: ActionPane(
              motion: const BehindMotion(),
              extentRatio: 0.2,
              children: [
                Expanded(
                  child: Container(
                    decoration: const BoxDecoration(
                      color: AppColors.pink,
                      borderRadius: BorderRadius.horizontal(
                        left: Radius.circular(10),
                      ),
                    ),
                    child: const SizedBox.expand(
                      child: Icon(
                        Icons.delete,
                        size: 20,
                        color: AppColors.bright,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            child: const ListTile(
              horizontalTitleGap: 0,
              title: Text('Balansin artirilmasi'),
              subtitle: Text('Balansa 25.00 AZN medaxil oldu'),
              leading: Icon(Icons.notifications_rounded),
              trailing: Text('11 mart'),
            ),
          );
        },
      ),
    );
  }
}
