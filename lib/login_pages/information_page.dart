import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


class InformationPage extends StatelessWidget {
  const InformationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        title: Row(
          children: [
            Text("ToDayDo", style: TextStyle(color: Colors.white),),
            SizedBox(width: 8),
            Icon(Icons.info_outline, size: 20, color: Colors.white,),
          ],
        ),
      ),
      body: Stack(
        children: [
          // Background image
          Positioned.fill(
            child: Image.asset(
              'images/back4.jpg', // Replace with your image path
              fit: BoxFit.cover,
            ),
          ),
          // Content
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    """
A daily to-do list is a tool used to organize tasks that need to be completed within a day. It helps increase productivity, stay focused, and manage time effectively. Here’s how you can structure an effective daily to-do list:

### 1. **Prioritize Tasks**
   - List tasks in order of importance or urgency.
   - Use categories like “High Priority,” “Medium Priority,” and “Low Priority.”
   
### 2. **Set Deadlines**
   - Assign time frames or specific deadlines to each task, which can help in managing time effectively.

### 3. **Break Down Larger Tasks**
   - If a task is complex, break it down into smaller steps to make it more manageable.

### 4. **Include Personal and Work Tasks**
   - A balanced to-do list includes tasks from different areas of life, such as work, errands, self-care, and personal projects.

### 5. **Limit the Number of Tasks**
   - Don’t overload the list. Aim for 5-10 tasks depending on the complexity and available time.

### 6. **Check Off Completed Tasks**
   - This gives a sense of accomplishment and motivation to continue.

### 7. **Adjust as Needed**
   - Be flexible. If something cannot be finished, move it to the next day.

### Sample Daily To-Do List
1. Complete project report (Deadline: 11:00 AM)
2. Attend client meeting (2:00 PM)
3. Grocery shopping
4. Review and respond to emails
5. 30-minute workout
6. Plan weekend family outing

Apps like **Todoist**, **Google Keep**, and **Microsoft To Do** are great for creating and managing your daily to-do lists digitally.

=> To enter the application, click on the daily icon located in the middle of the login page
                    """,
                    style: TextStyle(fontSize: 20, color: Colors.grey[400], fontStyle: FontStyle.italic, fontFamily: "serif"), // Text color for visibility
                  ),
                  SizedBox(height: 10),
                  GestureDetector(
                    onTap: () async {
                      const url = 'https://www.mindtools.com/aug8p7g/to-do-lists'; // Replace with your link
                      if (await canLaunch(url)) {
                        await launch(url);
                      } else {
                        throw 'Could not launch $url';
                      }
                    },
                    child: Center(
                      child: Text(
                        'Learn more',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 18,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
