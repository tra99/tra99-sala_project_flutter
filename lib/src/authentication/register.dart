import 'package:flutter/material.dart';
import 'package:flutter_project/src/authentication/login_screen.dart';
import 'package:flutter_project/src/components/button.dart';
import 'package:flutter_project/src/components/start_screen.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key, this.restorationId});

  final String? restorationId;

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> with RestorationMixin {
  @override
  String? get restorationId => widget.restorationId;

  final RestorableDateTime _selectedDate =
      RestorableDateTime(DateTime(2021, 7, 25));
  late final RestorableRouteFuture<DateTime?> _restorableDatePickerRouteFuture;

  @override
  void initState() {
    super.initState();
    _restorableDatePickerRouteFuture = RestorableRouteFuture<DateTime?>(
      onComplete: _selectDate,
      onPresent: (NavigatorState navigator, Object? arguments) {
        return navigator.restorablePush(
          _datePickerRoute,
          arguments: _selectedDate.value.millisecondsSinceEpoch,
        );
      },
    );
  }

  @pragma('vm:entry-point')
  static Route<DateTime> _datePickerRoute(
    BuildContext context,
    Object? arguments,
  ) {
    return DialogRoute<DateTime>(
      context: context,
      builder: (BuildContext context) {
        return DatePickerDialog(
          restorationId: 'date_picker_dialog',
          initialEntryMode: DatePickerEntryMode.calendarOnly,
          initialDate: DateTime.fromMillisecondsSinceEpoch(arguments! as int),
          firstDate: DateTime(2021),
          lastDate: DateTime(2022),
        );
      },
    );
  }

  @override
  void restoreState(RestorationBucket? oldBucket, bool initialRestore) {
    registerForRestoration(_selectedDate, 'selected_date');
    registerForRestoration(
        _restorableDatePickerRouteFuture, 'date_picker_route_future');
  }

  void _selectDate(DateTime? newSelectedDate) {
    if (newSelectedDate != null) {
      setState(() {
        _selectedDate.value = newSelectedDate;
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text(
              'Selected: ${_selectedDate.value.day}/${_selectedDate.value.month}/${_selectedDate.value.year}'),
        ));
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: const Icon(Icons.arrow_back, color: FontStyleCustom.mainColorScreen),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Center(
                child:
                    Text("Create Account", style: FontStyleCustom.mainFontColor),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Username"),
                    SizedBox(height: 14,),
                    TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 253, 173, 162)),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 253, 173, 162)),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 253, 173, 162)),
                        ),
                        hintText: 'sreylen',
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  const Expanded(
                    child: Column(
                      children: [
                        Text("Sex"),
                        SizedBox(height: 14,),
                        TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromARGB(255, 253, 173, 162)),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromARGB(255, 253, 173, 162)),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromARGB(255, 253, 173, 162)),
                            ),
                            suffixIcon: Icon(Icons.arrow_drop_down,color: FontStyleCustom.mainColorScreen,)
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      children: [
                        const Text("Date of birth"),
                        const SizedBox(height: 14,),
                        TextField(
                          onTap: () {
                            _restorableDatePickerRouteFuture.present();
                          },
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromARGB(255, 253, 173, 162)),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromARGB(255, 253, 173, 162)),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromARGB(255, 253, 173, 162)),
                            ),
                            suffixIcon: Icon(Icons.calendar_today_outlined,color: FontStyleCustom.mainColorScreen,)
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Email"),
                    SizedBox(height: 14,),
                    TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 253, 173, 162)),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 253, 173, 162)),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 253, 173, 162)),
                        ),
                        hintText: 'sreylen453@gmail.com',
                      ),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Password"),
                    SizedBox(height: 14,),
                    TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 253, 173, 162)),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 253, 173, 162)),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 253, 173, 162)),
                        ),
                        hintText: 'Password.....',
                        prefixIcon: Icon(Icons.lock,color: FontStyleCustom.mainColorScreen,),
                        suffixIcon: Icon(Icons.remove_red_eye_sharp),
                      ),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Confirm Password"),
                    SizedBox(height: 14,),
                    TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 253, 173, 162)),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 253, 173, 162)),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 253, 173, 162)),
                        ),
                        hintText: 'Password.....',
                        prefixIcon: Icon(Icons.lock,color: FontStyleCustom.mainColorScreen,),
                        suffixIcon: Icon(Icons.remove_red_eye_sharp),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 28,),
              CustomButton(text: "Create Account", onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const LoginScreen()));
              })
            ],
          ),
        ),
      ),
    );
  }
}
