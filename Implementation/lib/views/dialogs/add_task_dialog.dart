import 'package:flutter/material.dart';
import 'package:flutter_persian_calendar/flutter_persian_calendar.dart';
import 'package:provider/provider.dart';
import 'package:shamsi_date/shamsi_date.dart';
import 'package:zamaan/utilities/enums.dart';
import 'package:zamaan/model/main_task_model.dart';
import 'package:zamaan/widgets/custom_widgets.dart';
import 'package:zamaan/data/data.dart';

class AddTaskDialog extends StatefulWidget {
  final TextEditingController taskNameTextController;
  final TextEditingController descriptionTextController;

  const AddTaskDialog(
      {super.key,
      required this.taskNameTextController,
      required this.descriptionTextController});

  @override
  State<AddTaskDialog> createState() => _AddTaskDialogState();
}

class _AddTaskDialogState extends State<AddTaskDialog> {
  @override
  void initState() {
    setCreationDate(Jalali.now());
    setSelectedDate(Jalali.now().addDays(1));
    super.initState();
  }

  late Jalali creationDate;
  late Jalali dueDate;

  String? creationDateToString;
  String? dueDateToString;
  late ProjectModelProvider mainTaskProvider;

  RepetitionInterval? selectedRepetition = RepetitionInterval.daily;

  @override
  Widget build(BuildContext context) {
    mainTaskProvider =
        Provider.of<ProjectModelProvider>(context, listen: false);
    return Dialog(
      backgroundColor: Theme.of(context).colorScheme.surface,
      insetPadding: EdgeInsets.zero,
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
      child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  padding:
                      const EdgeInsets.only(left: 15, right: 15, bottom: 25),
                  child: Column(
                    children: [
                      /// Show Edit CreationDate DialogBox
                      CustomNormalButtonWidget(
                          onPressed: () => showDialogBox(
                                Dialog(
                                    alignment: Alignment.center,
                                    insetPadding: const EdgeInsets.all(25),
                                    backgroundColor:
                                        Theme.of(context).colorScheme.surface,
                                    child: PersianCalendar(
                                        confirmButtonText: 'کانفیرم',
                                        selectedDate: creationDate,
                                        calendarStartDate: Jalali(1350),
                                        calendarEndDate: Jalali(1450),
                                        onDateChanged: (onSelectedDateChange) =>
                                            setCreationDate(
                                                onSelectedDateChange),
                                        calendarTheme: PersianCalendarTheme(
                                            textStyle: TextStyle()),
                                        onConfirmButtonPressed: () {
                                          Navigator.pop(context);
                                        })),
                              ),
                          text: 'زمان ایجاد : $creationDateToString'),
                      const SizedBox(
                        height: 15,
                      ),

                      /// Show DueDate Entry DialogBox
                      CustomNormalButtonWidget(
                          onPressed: () => showDialogBox(
                                Dialog(
                                    alignment: Alignment.center,
                                    insetPadding: const EdgeInsets.all(25),
                                    backgroundColor:
                                        Theme.of(context).colorScheme.surface,
                                    child: PersianCalendar(
                                        confirmButtonText: 'کانفیرم',
                                        selectedDate: dueDate,
                                        calendarStartDate: Jalali(1350),
                                        calendarEndDate: Jalali(1450),
                                        onDateChanged: (onSelectedDateChange) =>
                                            setSelectedDate(
                                                onSelectedDateChange),
                                        calendarTheme: PersianCalendarTheme(
                                            textStyle: TextStyle()),
                                        onConfirmButtonPressed: () {
                                          Navigator.pop(context);
                                        })),
                              ),
                          text: 'زمان سررسید : $dueDateToString'),

                      const SizedBox(
                        height: 15,
                      ),

                      /// Task Name
                      CustomTextFieldWidget(
                        controller: widget.taskNameTextController,
                        hintText: 'نام کار جدید را وارد کنید',
                      ),

                      /// Task Description
                      CustomTextFieldWidget(
                        controller: widget.descriptionTextController,
                        hintText: 'توضیحات',
                        isExpandable: true,
                        margin: const EdgeInsets.symmetric(vertical: 20),
                      ),

                      /// Select Contributers
                      CustomNormalButtonWidget(
                        text: 'انتخاب مشارکت کننده',
                        onPressed: () => showDialogBox(Dialog(
                          child: Container(
                            height: 400,
                            decoration: BoxDecoration(
                                color: Theme.of(context).colorScheme.surface,
                                borderRadius: BorderRadius.circular(5)),
                            child: ListView.builder(
                                itemCount: users.length,
                                itemBuilder: (context, index) {
                                  final user = users[index];
                                  return Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20, vertical: 10),
                                    child: Text(user.firstName),
                                  );
                                }),
                          ),
                        )),
                      ),
                      const SizedBox(
                        height: 15,
                      ),

                      /// Select Contributers
                      CustomNormalButtonWidget(
                        text: 'نحوه تکرار',
                        onPressed: () => showDialogBox(Dialog(
                          child: Container(
                              height: 400,
                              decoration: BoxDecoration(
                                  color: Theme.of(context).colorScheme.surface,
                                  borderRadius: BorderRadius.circular(5)),
                              child: DropdownButton<RepetitionInterval>(
                                value: selectedRepetition,
                                onChanged: (newValue) {
                                  setState(() {
                                    selectedRepetition = newValue;
                                  });
                                },
                                items: RepetitionInterval.values.map((item) {
                                  return DropdownMenuItem(
                                    child: Text(item.toString()),
                                    value: item,
                                  );
                                }).toList(),
                              )),
                        )),
                      ),
                      const SizedBox(
                        height: 15,
                      ),

                      /// Select groups
                      CustomNormalButtonWidget(
                        text: 'گروه بندی',
                        onPressed: () => showDialogBox(Dialog(
                          backgroundColor:
                              Theme.of(context).colorScheme.surface,
                          insetPadding: const EdgeInsets.all(25),
                          child: Container(
                            height: 400,
                            decoration: BoxDecoration(
                                color: Theme.of(context).colorScheme.surface,
                                borderRadius: BorderRadius.circular(5)),
                            child: ListView.builder(
                                itemCount: groups.length,
                                itemBuilder: (context, index) {
                                  final group = groups[index];
                                  return Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20, vertical: 10),
                                    child: Text(group.groupName),
                                  );
                                }),
                          ),
                        )),
                      ),
                      const SizedBox(
                        height: 15,
                      ),

                      /// Select tags
                      CustomNormalButtonWidget(
                        text: 'تگ',
                        onPressed: () => showDialogBox(Dialog(
                          backgroundColor:
                              Theme.of(context).colorScheme.surface,
                          insetPadding: const EdgeInsets.all(25),
                          child: Container(
                            height: 400,
                            decoration: BoxDecoration(
                                color: Theme.of(context).colorScheme.surface,
                                borderRadius: BorderRadius.circular(5)),
                            child: ListView.builder(
                                itemCount: tags.length,
                                itemBuilder: (context, index) {
                                  final tag = tags[index];
                                  return Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20, vertical: 10),
                                    child: Text(tag.tagName),
                                  );
                                }),
                          ),
                        )),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),

            /// Confirm and cancel buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomNormalButtonWidget(
                  onPressed: exitDialog,
                  text: 'انصراف',
                  minWidth: 100,
                ),
                CustomNormalButtonWidget(
                  onPressed: () {
                    mainTaskProvider.addTask(MainTaskModel(
                        id: mainTaskProvider.tasks.length + 1,
                        creatorId: users[01],
                        mainTaskName: widget.taskNameTextController.text,
                        groupId: groups[01],
                        creationDate: DateTime.now(),
                        color: Colors.red,
                        icon: Icons.groups,
                        repeat: selectedRepetition,
                        importance: Importance.important));
                    widget.taskNameTextController.clear();
                    Navigator.pop(context);
                  },
                  text: 'تایید',
                  minWidth: 100,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  void exitDialog() {
    Navigator.pop(context);
    widget.taskNameTextController.clear();
  }

  void showDialogBox(Dialog dialog) =>
      showDialog(context: context, builder: (context) => dialog);

  void setCreationDate(Jalali selectedDateChanged) => setState(() {
        creationDate = selectedDateChanged;
        creationDateToString =
            '${selectedDateChanged.year}/${selectedDateChanged.month}/${selectedDateChanged.day}';
      });

  void setSelectedDate(Jalali selectedDateChanged) => setState(() {
        dueDate = selectedDateChanged;
        dueDateToString =
            '${selectedDateChanged.year}/${selectedDateChanged.month}/${selectedDateChanged.day}';
      });
}
