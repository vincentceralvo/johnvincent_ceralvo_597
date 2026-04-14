import 'package:firstproject/utils/export.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
    //hold initstate
    String title = 'Homepage';
    int counter = 0;

    TextEditingController number1 = TextEditingController();
    TextEditingController number2 = TextEditingController();
    double total = 0;

    @override
  void initState() {
    title = ' Welcome to my Homepage';
    number1.text = "0";
    number2.text = "0";
    super.initState();
  }

  void handleAddition (){
    setState(() {
      total = double.parse(number1.text) + double.parse(number2.text);
    });
  }

  void handlebuttonClick(){
    setState(() {
      counter += 1;
    });
  }

  //function
  // handle

  //boolean
  void isbuttonClick(){}

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(child: Text(title),),
            Center(child: Text('$counter'),),
            ElevatedButton(onPressed: (){
                handlebuttonClick();
            }, child: Text("Increase Counter")),
            SizedBox(height: 20),
            TextField(controller: number1,),
            TextField(controller: number2,),
            ElevatedButton(onPressed: () {
                handleAddition();
            }, 
            child: Text("Add Number")),
            SizedBox(height: 20,),
            Text('Total: $total'),

          ],
        ),);
  }
}
