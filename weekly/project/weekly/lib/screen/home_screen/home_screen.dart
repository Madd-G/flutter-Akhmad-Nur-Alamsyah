import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weekly/screen/home_screen/widgets/ad_text.dart';
import 'package:weekly/screen/home_screen/widgets/app_drawer.dart';
import 'package:weekly/screen/home_screen/widgets/app_form_field.dart';
import 'package:weekly/screen/home_screen/widgets/product_card.dart';
import 'package:weekly/screen/home_screen/widgets/submit_button.dart';
import '../../model/stationeries.dart';
import '../user_data_screen/user_data_screen.dart';
import 'cubit/contact_cubit.dart';
import 'cubit/contact_state.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController _usernameController = TextEditingController();

  final TextEditingController _emailController = TextEditingController();

  final TextEditingController _messageController = TextEditingController();

  final ValueNotifier<bool> isVisible = ValueNotifier<bool>(false);

  @override
  void dispose() {
    _usernameController.dispose();
    _emailController.dispose();
    _messageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: false,
          title: Container(
            padding: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                color: Colors.brown[400]),
            child: Text(
              'STATIONERYQ',
              style: GoogleFonts.bungeeShade(
                textStyle: const TextStyle(
                    fontWeight: FontWeight.w700, color: Colors.black),
              ),
            ),
          ),
        ),
        endDrawer: const AppDrawer(),
        // backgroundColor: Colors.brown[300],
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: <Widget>[
                  Image.asset(
                    'assets/images/stationery-bg.jpeg',
                    fit: BoxFit.fill,
                    colorBlendMode: BlendMode.darken,
                    width: double.infinity,
                    height: 250.0,
                  ),
                  const AdText()
                ],
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Contact Us',
                  style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.w700),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: BlocBuilder<ContactCubit, ContactState>(
                  builder: (context, state) {
                    return Form(
                      key: _formKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AppFormField(
                            controller: _usernameController,
                            hintText: 'Username',
                            filled: true,
                            alert: 'Please enter your name',
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          AppFormField(
                              controller: _emailController,
                              hintText: 'Email',
                              filled: true,
                              alert: 'Please enter your email'),
                          const SizedBox(
                            height: 10.0,
                          ),
                          TextFormField(
                            decoration: const InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(8.0),
                                  ),
                                ),
                                hintText: 'Message'),
                            controller: _messageController,
                            keyboardType: TextInputType.multiline,
                            maxLines: 6,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter your message';
                              }
                              return null;
                            },
                          ),
                          const SizedBox(
                            height: 5.0,
                          ),
                          Row(
                            children: [
                              SubmitButton(
                                  formKey: _formKey,
                                  usernameController: _usernameController,
                                  emailController: _emailController,
                                  messageController: _messageController,
                                  isVisible: isVisible),
                              const SizedBox(
                                width: 10.0,
                              ),
                              Visibility(
                                  visible:
                                      (isVisible.value == false) ? false : true,
                                  child: ElevatedButton(
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                const UserDataScreen(),
                                          ),
                                        );
                                      },
                                      child: const Text('Data user')))
                            ],
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          const Center(
                            child: Text(
                              'About Us',
                              style: TextStyle(
                                  fontSize: 25.0, fontWeight: FontWeight.w700),
                            ),
                          ),
                          SizedBox(
                            height: 600,
                            child: GridView.builder(
                              physics: const NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              primary: false,
                              itemCount: stationeries.length,
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                              ),
                              itemBuilder: (context, index) {
                                return ProductCard(
                                  index: index,
                                );
                              },
                            ),
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


