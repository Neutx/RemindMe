import 'package:flutter/material.dart';
import 'package:remind_me/models/reminder_data.dart';
import 'package:provider/provider.dart';

class ReminderTile extends StatelessWidget {
  final int index;
  const ReminderTile({
    Key? key, required this.index
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<ReminderData>(
      builder: (context, reminderData, child){
        final reminder = reminderData.reminders[index];
        return ListTile(
          title: Center(
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50.0),
              ),
              elevation: 10.0,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: ListTileTheme(
                  dense: true,
                  child: ExpansionTile(
                    trailing: const SizedBox.shrink(),
                    title: Align(
                      alignment: const Alignment(0.15, 0),
                      child: Text(reminder.title,
                        style: const TextStyle(
                            color: Colors.pink),
                      ),
                    ),
                    childrenPadding: const EdgeInsets.all(10.0),
                    children: [
                      Padding(padding: const EdgeInsets.all(10.0),
                        child: Text('${reminder.dateTime}',
                          style: const TextStyle(color: Colors.pink),
                        ),
                      ),
                      const Padding(padding: EdgeInsets.all(10.0),
                        child: Text('Text',
                          style: TextStyle(color: Colors.pink),
                        ),
                      ),
                      const Padding(padding: EdgeInsets.all(10.0),
                        child: Text('Text',
                          style: TextStyle(color: Colors.pink),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}