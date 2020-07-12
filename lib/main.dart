import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
void main() => runApp(MakeTicket());

class MakeTicket extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Make Ticket',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MakeTicketPage(title: 'Make Ticket'),
    );
  }
}

class MakeTicketPage extends StatefulWidget {
  MakeTicketPage({Key key, this.title}) : super(key: key);



  final String title;

  @override
  _MakeTicketPageState createState() => _MakeTicketPageState();
}

class _MakeTicketPageState extends State<MakeTicketPage> {
  bool switchControl = false;
  var textHolder = 'Ticket is Unavailabe';

  void toggleSwitch(bool value) {

    if(switchControl == false)
    {
      setState(() {
        switchControl = true;
        textHolder = 'Ticket is Available';
      });

     new Container();

    }
    else
    {
      setState(() {
        switchControl = false;
        textHolder = 'Ticket is Unavailable';
      });

    }
  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(widget.title),
            Image.asset('assets/images/ticket.png', height: 45,fit: BoxFit.cover,)
          ],
        )


      ),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          color: Colors.white,
          child: SingleChildScrollView(
            child: Column(

            children:<Widget>[
              Card(
                  margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                  child: ListTile(
                    leading: Text('Passenger Name'),
                    title: TextField(decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Avinash Kumar'
                    ),
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20.0,
                      ),

                    )
                  )),
              Card(
                  margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                  child: ListTile(
                      leading: Text('From'),
                      title: DropdownButton(
                        value: FromStation,
                        icon: Icon(Icons.arrow_drop_down),
                        iconSize: 24,
                        elevation: 16,
                        style: TextStyle(color: Colors.deepPurple),
                        underline: Container(
                          height: 2,
                          color: Colors.black,
                        ),
                        onChanged: (String newValue) {
                          setState(() {
                            FromStation = newValue;
                          });
                        },
                        items: <String>['Lokmanyatilak T (LTT)', 'Thane (TNA)', '	Kalyan Junction (KYN)', '	Kasara (KSRA)','	Igatpuri (IGP)','	Devlali (DVL)','Nasik Road (NK)','	Lasalgaon (LS)','	Manmad Junction (MMR)','Nandgaon (NGN)','Chalisgaon Junction (CSN)','	Pachora Junction (PC)','Jalgaon Junction (JL)','Bhusaval Junction (BSL)','Varangaon (VNA)','	Bodwad (BDWD)','Malkapur (MKU)','Nandura (NN)','	Jalamb Junction (JM)','Shegaon (SEG)','	Paras (PS)','Akola Junction (AK)']
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      )
                  )),
              Card(
                  margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                  child: ListTile(
                      leading: Text('To'),
                      title: DropdownButton(
                        value: ToStation,
                        icon: Icon(Icons.arrow_drop_down),
                        iconSize: 24,
                        elevation: 16,
                        style: TextStyle(color: Colors.deepPurple),
                        underline: Container(
                          height: 2,
                          color: Colors.black,
                        ),
                        onChanged: (String newValue) {
                          setState(() {
                            ToStation = newValue;
                          });
                        },
                        items: <String>['Lokmanyatilak T (LTT)', 'Thane (TNA)', '	Kalyan Junction (KYN)', '	Kasara (KSRA)','	Igatpuri (IGP)','	Devlali (DVL)','Nasik Road (NK)','	Lasalgaon (LS)','	Manmad Junction (MMR)','Nandgaon (NGN)','Chalisgaon Junction (CSN)','	Pachora Junction (PC)','Jalgaon Junction (JL)','Bhusaval Junction (BSL)','Varangaon (VNA)','	Bodwad (BDWD)','Malkapur (MKU)','Nandura (NN)','	Jalamb Junction (JM)','Shegaon (SEG)','	Paras (PS)','Akola Junction (AK)']
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      )

                  )),

              Card(
                  margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                  child: ListTile(
                      leading: Icon(Icons.confirmation_number,
                      ),
                      title: Text('Why Making Ticket?'),
                      subtitle: DropdownButton(
                        value: WhyMakeTicket,
                        icon: Icon(Icons.arrow_drop_down),
                        iconSize: 24,
                        elevation: 16,
                        style: TextStyle(color: Colors.deepPurple),
                        underline: Container(
                          height: 2,
                          color: Colors.black,
                        ),
                        onChanged: (String newValue) {
                          setState(() {
                            WhyMakeTicket = newValue;
                          });
                        },
                        items: <String>['Without Ticket Travelling','Travelling with Platform Ticket','Travelling with General Ticket']
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      )
                  )),
              Card(
                  margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                  child: ListTile(
                    leading:
                    Icon(
                      Icons.phone,
                      color: Colors.teal,
                    ),

                    title:
                    TextField( decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: '9999999999'
                    ),
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20.0,
                      ),
                    ),
                  )),
              SizedBox(
                width: 20.0,
                height: 30.0,
              ),
              Card(
                  margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                  child: Switch(
                    onChanged: toggleSwitch,
                    value: switchControl,
                    activeColor: Colors.blue,
                    activeTrackColor: Colors.green,
                    inactiveThumbColor: Colors.white,
                    inactiveTrackColor: Colors.grey,
                  )),
              Text('$textHolder', style: TextStyle(fontSize: 24),),
              SizedBox(
                width: 20.0,
                height: 30.0,
              ),
              FlatButton(
                color: Colors.redAccent,
                textColor: Colors.white,
                disabledColor: Colors.grey,
                disabledTextColor: Colors.black,
                padding: EdgeInsets.all(8.0),
                splashColor: Colors.blueAccent,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                    side: BorderSide(color: Colors.red)
                ),
                onPressed: () {
                },
                child: Text(
                  "Make Ticket",
                  style: TextStyle(fontSize: 20.0),
                ),
              ),

            ]
            ),
          )
        ),
      drawer: Drawer(

        child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                child: Text('TTE'),
                decoration: BoxDecoration(
                  color: Colors.blue,
        ),
      ),
               ListTile(
                 title: Text('Reservation Chart'),
                  onTap: () {
                   Navigator.pop(context);
        },
      ),
                ListTile(
                  title: Text('Train Details'),
                  onTap: () {
                    Navigator.pop(context);
        },
      ),
    ]
    )
    )

    );
  }
  String FromStation = 'Lokmanyatilak T (LTT)';
  String ToStation = 'Lokmanyatilak T (LTT)';
  String WhyMakeTicket = 'Without Ticket Travelling';
  int PhoneNumber;

}
