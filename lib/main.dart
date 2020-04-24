import 'package:flutter/material.dart';
import 'dart:async';
import './package/custom_expansion_tile.dart' as custom;

void main() => runApp(MyApp());

/// This Widget is the main application widget.
class MyApp extends StatelessWidget {
  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: CustomExpansionTile(),
      ),
    );
  }
}


class CustomExpansionTile extends StatefulWidget {
  @override
  State createState() => CustomExpansionTileState();
}

class CustomExpansionTileState extends State<CustomExpansionTile> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return  Theme(
      data: Theme.of(context).copyWith(accentColor: Colors.green[400], unselectedWidgetColor:  Colors.green.withOpacity(0.8)),
      child: ListView(
        children: <Widget>[
          custom.ExpansionTile(
            headerBackgroundColor: Colors.black.withOpacity(0.5),
            iconColor: Colors.white,
            title: Text("Padding"),
            children: <Widget>[
              Text("Left"),
              Text("Top"),
              Text("Right"),
              Text("Bottom"),
            ],
          ),
          
          custom.ExpansionTile(
            headerBackgroundColor: Colors.black.withOpacity(0.5),
            iconColor: Colors.white,
            title: Text("Padding"),
            children: <Widget>[             
              Text("Left"),
              Text("Top"),
              Text("Right"),
              Text("Bottom"),
            ],
          )
        ],
      ),
      
    

    );
    
    /* Theme(
    data: ThemeData(    
        brightness: Brightness.dark,
        primaryColor: Colors.lightBlue[800],
        accentColor: Colors.cyan[600],),
    child: ExpansionTile(
      title: Container(
        child: Text(
          "HEADER HERE",
          style: TextStyle(
            color: isExpanded ? Colors.pink : Colors.teal,
          ),
        ),
        // Change header (which is a Container widget in this case) background colour here.
        color: isExpanded ? Colors.orange : Colors.green,
      ),
      leading: Icon(
        Icons.face,
        size: 36.0,
      ),
      children: <Widget>[
        Text("Child Widget One"),
        Text("Child Widget Two"),
      ],
      onExpansionChanged: (bool expanding) => setState(() => this.isExpanded = expanding),
    ) /*or any other widget you want to apply the theme to.*/
  );  */
 
  }
}

/* Theme(
      data: ThemeData(
        //brightness: Brightness.dark,
        primaryColor: Colors.black87,
        accentColor: Colors.black87,
        dividerColor: Colors.transparent,
      ),
      child: ExpansionTile(
        //backgroundColor: Colors.amberAccent,
        trailing: isExpanded //assets/collapse_arrow.png
            ? Image.asset('assets/collapse_arrow.png')
            : Image.asset('assets/expand_arrow.png'),
        onExpansionChanged: (bool expanding) =>
            setState(() => isExpanded = expanding),
        title: Container(
          decoration: BoxDecoration(
              border:
                  Border.all(width: 1, color: Color.fromRGBO(121, 85, 72, 1)),
              gradient: LinearGradient(
                  begin: FractionalOffset.bottomCenter,
                  end: FractionalOffset.topCenter,
                  // stops: [0.1, 1.0],
                  // tileMode: TileMode.clamp,

                  colors: [
                    isExpanded
                        ? Color.fromRGBO(255, 255, 255, 100)
                        : Color.fromRGBO(197, 181, 176, 1),
                    Color.fromRGBO(197, 181, 176, 1) //closed solid
                  ])),
          child: Text(
            'Header',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
        children: <Widget>[
          _dropDownItem(
              'Rank', _selectRankFamily2, _rankFamily2, 'Select Rank'),
          _dropDownItem(
              'Rank', _selectRankFamily2, _rankFamily2, 'Select Rank'),
          _dropDownItem('Rank', _selectRankFamily2, _rankFamily2, 'Select Rank')
        ],
      ),
    ), */