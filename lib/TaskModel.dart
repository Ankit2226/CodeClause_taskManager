class Task {
  final int? id; // Nullable for tasks not saved yet
  final String title;
  final String description;

  Task({this.id, required this.title, required this.description});

  // Convert Task to a map for database operations
  Map<String, dynamic> toMap() {
    return {'id': id, 'title': title, 'description': description};
  }

  // Convert a map back into a Task object
  factory Task.fromMap(Map<String, dynamic> map) {
    return Task(
      id: map['id'],
      title: map['title'],
      description: map['description'],
    );
  }
}
