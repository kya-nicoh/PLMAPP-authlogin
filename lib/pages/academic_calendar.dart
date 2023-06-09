import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import '../pages/home_page.dart';

class CalendarMain extends StatelessWidget {
  const CalendarMain({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calendar App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: CalendarScreen(),
    );
  }
}

class CalendarScreen extends StatefulWidget {
  @override
  _CalendarScreenState createState() => _CalendarScreenState();
}

class _CalendarScreenState extends State<CalendarScreen> {
  late DateTime selectedDate;
  Map<DateTime, List<Task>> tasks = {};

  @override
  void initState() {
    super.initState();
    selectedDate = DateTime.now();
  }

  void _onDateSelected(DateTime date, DateTime focusedDate) {
    setState(() {
      selectedDate = date;
    });
  }

  void _addTask(String task) {
    setState(() {
      if (tasks.containsKey(selectedDate)) {
        tasks[selectedDate]!.add(Task(name: task, isCompleted: false));
      } else {
        tasks[selectedDate] = [Task(name: task, isCompleted: false)];
      }
    });
  }

  void _deleteTask(Task task) {
    setState(() {
      tasks[selectedDate]!.remove(task);
    });
  }

  List<Task> getCompletedTasksFromMonth(DateTime month) {
    return tasks.values
        .expand((taskList) => taskList)
        .where((task) => task.isCompleted && task.dateTime.month == month.month)
        .toList();
  }

  Widget _buildCalendar() {
    return TableCalendar(
      firstDay: DateTime.utc(2023, 1, 1),
      lastDay: DateTime.utc(2023, 12, 31),
      focusedDay: selectedDate,
      selectedDayPredicate: (day) => isSameDay(selectedDate, day),
      onDaySelected: _onDateSelected,
    );
  }

  Widget _buildTaskList() {
    List<Task> completedTasksFromMonth =
        getCompletedTasksFromMonth(selectedDate);

    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.blueGrey[100],
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(16),
            topRight: Radius.circular(16),
          ),
        ),
        child: ListView.builder(
          itemCount: tasks[selectedDate]?.length ?? 0,
          itemBuilder: (context, index) {
            final task = tasks[selectedDate]![index];
            return ListTile(
              leading: Checkbox(
                value: task.isCompleted,
                onChanged: (value) {
                  setState(() {
                    task.isCompleted = value ?? false;
                  });
                },
              ),
              title: Text(task.name),
              trailing: IconButton(
                icon: Icon(Icons.delete),
                onPressed: () => _deleteTask(task),
              ),
            );
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calendar App'),
        // leading: IconButton(
        //   onPressed: () {
        //     Navigator.of(context).pop();
        //   },
        //   icon: const Icon(Icons.arrow_back_ios),
        // ),
        // actions: [
        //   IconButton(
        //     onPressed: () {
        //       Navigator.push(
        //           context, MaterialPageRoute(builder: (context) => HomePage()));
        //     },
        //     icon: const Icon(
        //       Icons.info_outline,
        //     ),
        //   ),
        // ],
      ),
      body: Column(
        children: [
          _buildCalendar(),
          const SizedBox(height: 16),
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
            ),
            child: const Text(
              'Ongoing Tasks',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          _buildTaskList(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              String newTask = '';

              return AlertDialog(
                title: const Text('Add Task'),
                content: TextField(
                  onChanged: (value) => newTask = value,
                  decoration: InputDecoration(hintText: 'Task name'),
                ),
                actions: [
                  TextButton(
                    child: const Text('Cancel'),
                    onPressed: () => Navigator.pop(context),
                  ),
                  TextButton(
                    child: const Text('Add'),
                    onPressed: () {
                      if (newTask.isNotEmpty) {
                        _addTask(newTask);
                      }
                      Navigator.pop(context);
                    },
                  ),
                ],
              );
            },
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

class Task {
  String name;
  bool isCompleted;
  DateTime dateTime;

  Task({required this.name, required this.isCompleted})
      : dateTime = DateTime.now();
}
