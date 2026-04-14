import 'package:labactivity/utils/export.dart';

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
    title = ' Simple Calculator in Flutter';
    number1.text = " ";
    number2.text = " ";
    super.initState();
  }

  void addNumbers (){
    setState(() {
      total = double.parse(number1.text) + double.parse(number2.text);
    });
  }

  void subtractNumbers (){
    setState(() {
      total = double.parse(number1.text) - double.parse(number2.text);
    });
  }

  void multiplyNumbers (){
    setState(() {
      total = double.parse(number1.text) * double.parse(number2.text);
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
            SizedBox(height: 20),
            TextField(controller: number1,),
            TextField(controller: number2,),
            ElevatedButton(onPressed: () {
                addNumbers();
            }, 
            child: Text("Add")),
            SizedBox(height: 20,),

             ElevatedButton(onPressed: () {
                subtractNumbers();
            }, 
            child: Text("Subtract")),
            SizedBox(height: 20,),

             ElevatedButton(onPressed: () {
                multiplyNumbers();
            }, 
            child: Text("Multiply")),
            SizedBox(height: 20,),

            Text('Total: $total'),



          ],
        ),);
  }
}
