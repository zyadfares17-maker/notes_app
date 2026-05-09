import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:nots_app/constants.dart';
import 'package:nots_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:nots_app/models/note_model.dart';
import 'package:nots_app/views/widgets/Custom%20_button.dart';
import 'package:nots_app/views/widgets/colors_list_view.dart';
import 'package:nots_app/views/widgets/custom_textfiled.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({super.key});

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

final GlobalKey<FormState> formkey = GlobalKey();

AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

String? title, subtitle;

class _AddNoteFormState extends State<AddNoteForm> {
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          const SizedBox(height: 32),
          CustomTextfiled(
            onSaved: (value) {
              title = value;
            },
            hintText: 'Title',
          ),

          const SizedBox(height: 16),

          CustomTextfiled(
            onSaved: (value) {
              subtitle = value;
            },
            hintText: 'Subtitle',
            maxLines: 5,
          ),
                      ColorsListView(),

          const SizedBox(height: 32),
          BlocBuilder<AddNoteCubit, AddNoteState>(
            builder: (context, state) {
              
              return CustomButton(
                isLoading: state is AddNoteLoading ? true : false,
                title: 'Add ',
                color: kPrimaryColor,
                titleColor: Colors.black,
                onTap: () {
                  if (formkey.currentState!.validate()) {
                    formkey.currentState!.save();
                    var currentDate = DateTime.now();

                    var formatCurrentDate =DateFormat('dd/MM/yyyy').format(currentDate);
                    var notemodel = NoteModel(
                      title: title!,
                      subtitle: subtitle!,
                      date: formatCurrentDate,
                      color: Colors.blueAccent.value,
                    );

                    BlocProvider.of<AddNoteCubit>(context).addNote(notemodel);
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {});  
                  }
                },
              );
            },
          ),

          const SizedBox(height: 24),
        ],
      ),
    );
  }
}
