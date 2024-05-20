import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:crud/services/firestore.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //firestore
  final FirestoreServices firestoreservices = FirestoreServices();

  // text controller
  final TextEditingController textController = TextEditingController();

  //open a dialog box to add a note
  void openNoteBox({String? docID}) {
    showDialog(
        context: context,
        builder: (context) =>
            AlertDialog(
              content: TextField(
                controller: textController,
              ),
              actions: [
                //button to save
                ElevatedButton(onPressed: () {
                  //add new note
                  if(docID == null) {
                    firestoreservices.addNote(textController.text);
                  }

                  //update an existing note
                  else{
                    firestoreservices.updateNotes(docID, textController.text);
                  }

                  //clear the text controller
                  textController.clear();

                  //close the box
                  Navigator.pop(context);
                }, child: Text("Add"))
              ],
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text("Notes"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: openNoteBox,
        child: const Icon(Icons.add),

      ),
      body: StreamBuilder<QuerySnapshot>(
        stream: firestoreservices.getNotesStream(),
        builder: (context, snapshot) {
          // if we have the data get all the docs
          if (snapshot.hasData) {
            List notesList = snapshot.data!.docs;

            //display as list view
            return ListView.builder(
              itemCount: notesList.length,
              itemBuilder: (context, index) {
              //get each individual doc
              DocumentSnapshot document = notesList[index];
              String docID = document.id;

              //get note from each doc
              Map<String,dynamic> data =
                  document.data() as Map<String, dynamic>;
              String noteText = data['note'];

              //display as a list tile
              return ListTile(
                title: Text(noteText),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    //update
                    IconButton(
                      onPressed: ()=> openNoteBox(docID: docID ),
                      icon: const Icon(Icons.settings),),
                    IconButton(
                      onPressed: ()=> firestoreservices.deleteNotes(docID),
                      icon: const Icon(Icons.delete),)
                  ],
                ),
              );

            } ,);}
         //if there is no data to return
          else{
            return const Text(' No notes');
          }
        },

      ),
    );
  }
}
