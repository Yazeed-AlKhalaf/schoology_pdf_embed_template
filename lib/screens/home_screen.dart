import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _widthController = TextEditingController();
  final TextEditingController _heightController = TextEditingController();
  final TextEditingController _srcController = TextEditingController();

  @override
  void initState() {
    super.initState();

    _widthController.text = "600";
    _heightController.text = "787";
    _srcController.text = "https://example.com/my_file.pdf";
  }

  final TextStyle angleBracketStyle = TextStyle(
    color: Color(0xff5CCCFC),
  );
  final TextStyle tagsStyle = TextStyle(
    color: Color(0xffFA0076),
  );
  final TextStyle attributesStyle = TextStyle(
    color: Color(0xffBA76FA),
  );
  final TextStyle quotationsStyle = TextStyle(
    color: Color(0xffFB40FA),
  );

  TextSpan _buildAttribute({
    @required String name,
    @required String value,
  }) {
    return TextSpan(
      children: <InlineSpan>[
        TextSpan(
          text: "$name=",
          style: attributesStyle,
        ),
        TextSpan(
          text: "\"$value\"",
          style: quotationsStyle,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Schoology PDF Embed Template",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              const SizedBox(height: 30),
              Container(
                width: double.infinity,
                height: 400,
                decoration: BoxDecoration(
                  color: Colors.black,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SelectableText.rich(
                      TextSpan(
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                        ),
                        children: <InlineSpan>[
                          TextSpan(
                            text: "<",
                            style: angleBracketStyle,
                          ),
                          TextSpan(
                            text: "div ",
                            style: tagsStyle,
                          ),
                          _buildAttribute(
                            name: "style",
                            value: "text-align: center",
                          ),
                          TextSpan(
                            text: ">",
                            style: angleBracketStyle,
                          ),
                          TextSpan(
                            text: "\n",
                          ),
                          TextSpan(
                            text: "  <",
                            style: angleBracketStyle,
                          ),
                          TextSpan(
                            text: "object ",
                            style: tagsStyle,
                          ),
                          _buildAttribute(
                            name: "width",
                            value: "${_widthController.text.trim()}px",
                          ),
                          TextSpan(
                            text: " ",
                          ),
                          _buildAttribute(
                            name: "height",
                            value: "${_heightController.text.trim()}px",
                          ),
                          TextSpan(
                            text: ">",
                            style: angleBracketStyle,
                          ),
                          TextSpan(
                            text: "\n",
                          ),
                          TextSpan(
                            text: "    <",
                            style: angleBracketStyle,
                          ),
                          TextSpan(
                            text: "iframe",
                            style: tagsStyle,
                          ),
                          TextSpan(
                            text: "\n",
                          ),
                          TextSpan(
                            text: "        ",
                          ),
                          _buildAttribute(
                            name: "src",
                            value: _srcController.text.trim(),
                          ),
                          TextSpan(
                            text: "\n",
                          ),
                          TextSpan(
                            text: "        ",
                          ),
                          _buildAttribute(
                            name: "width",
                            value: "${_widthController.text.trim()}px",
                          ),
                          TextSpan(
                            text: "\n",
                          ),
                          TextSpan(
                            text: "        ",
                          ),
                          _buildAttribute(
                            name: "height",
                            value: "${_heightController.text.trim()}px",
                          ),
                          TextSpan(
                            text: "\n",
                          ),
                          TextSpan(
                            text: "    >",
                            style: angleBracketStyle,
                          ),
                          TextSpan(
                            text: "</",
                            style: angleBracketStyle,
                          ),
                          TextSpan(
                            text: "iframe",
                            style: tagsStyle,
                          ),
                          TextSpan(
                            text: ">",
                            style: angleBracketStyle,
                          ),
                          TextSpan(
                            text: "\n",
                          ),
                          TextSpan(
                            text: "  </",
                            style: angleBracketStyle,
                          ),
                          TextSpan(
                            text: "object",
                            style: tagsStyle,
                          ),
                          TextSpan(
                            text: ">",
                            style: angleBracketStyle,
                          ),
                          TextSpan(
                            text: "\n",
                          ),
                          TextSpan(
                            text: "</",
                            style: angleBracketStyle,
                          ),
                          TextSpan(
                            text: "div",
                            style: tagsStyle,
                          ),
                          TextSpan(
                            text: ">",
                            style: angleBracketStyle,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Text(
                "Note: To copy code highlight, then long press the right click button on your mouse. Then click on Copy.",
                style: TextStyle(
                  color: Colors.blueAccent,
                  fontWeight: FontWeight.bold,
                ),
              ),

              /// Text Fields to Edit Code
              Padding(
                padding: const EdgeInsets.all(15),
                child: Form(
                  child: Column(
                    children: <Widget>[
                      TextFormField(
                        controller: _srcController,
                        decoration: InputDecoration(
                          labelText: "PDF Link",
                          border: OutlineInputBorder(),
                        ),
                        onChanged: (String newValue) {
                          setState(() {});
                        },
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: TextFormField(
                              controller: _widthController,
                              decoration: InputDecoration(
                                labelText: "Width",
                                border: OutlineInputBorder(),
                              ),
                              onChanged: (String newValue) {
                                setState(() {});
                              },
                            ),
                          ),
                          const SizedBox(width: 10),
                          Expanded(
                            child: TextFormField(
                              controller: _heightController,
                              decoration: InputDecoration(
                                labelText: "Height",
                                border: OutlineInputBorder(),
                              ),
                              onChanged: (String newValue) {
                                setState(() {});
                              },
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
