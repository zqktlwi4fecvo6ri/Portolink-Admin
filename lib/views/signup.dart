part of 'views.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);
  static const String routeName = '/up';
  @override
  _SignUpState createState() => _SignUpState();
}
class _SignUpState extends State<SignUp> {
  final _formKey = GlobalKey<FormState>();
  final ctrlName =  TextEditingController();
  final ctrlEmail = TextEditingController();
  final ctrlPass = TextEditingController();
  final ctrlCPass = TextEditingController();
  final ft = FToast();
  static bool vis = true;
  static bool load = false;
  static bool btn = true;
  bool isEmpty() {
    setState(() {
      if (ctrlName.text != '' && ctrlEmail.text != '' && ctrlPass.text != '' && ctrlCPass.text != '') {
        btn = true;
      }
      else {
        btn = false;
      }
    });
    return btn;
  }
  @override
  void initState() {
    super.initState();
    ft.init(context);
  }
  @override
  void dispose() {
    ctrlName.dispose();
    ctrlEmail.dispose();
    ctrlPass.dispose();
    ctrlCPass.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
  }
}