import 'package:flutter/material.dart';
import 'package:notes_flutter/models/note_database.dart';
import 'package:provider/provider.dart';

class NotesPage extends StatefulWidget {
  const NotesPage({super.key});

  @override
  State<NotesPage> createState() => _NotesPage();
}

class _NotesPage extends State<NotesPage> {
  // text controller to access what the user typed
  final textController = TextEditingController();

  // create a note
  void createNote() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        content: TextField(controller: textController),
        actions: [
          // create button
          MaterialButton(
            onPressed: () {
              context.read<NoteDatabase>().addNote(textController.text);
            },
          ),
        ],
      ),
    );
  }

  // read notes

  // update a note

  // delete a note

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Notes')),
      floatingActionButton: FloatingActionButton(
        onPressed: createNote,
        child: const Icon(Icons.add),
      ),
    );
  }
}
