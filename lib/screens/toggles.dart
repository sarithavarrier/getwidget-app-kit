import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:getflutter/components/card/gf_card.dart';
import 'package:getflutter/components/typography/gf_typography.dart';
import 'package:getflutter/components/toggle/gf_toggle.dart';
import 'package:getflutter/types/gf_typography_type.dart';
import 'package:getflutter/types/gf_toggle_type.dart';
import 'package:getflutter/colors/gf_color.dart';

class Toggles extends StatefulWidget {
  @override
  _TogglesState createState() => _TogglesState();
}

class _TogglesState extends State<Toggles> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: GFColors.getGFColor(GFColor.dark),
        title: Text(
          'Toggle',
          style: TextStyle(fontSize: 14),
        ),
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            GFCard(
              content: Column(
                children: <Widget>[
                  GFTypography(
                    text: 'Android',
                    type: GFTypographyType.typo6,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  GFToggle(
                    onChanged: null,
                    value: null,
                    type: GFToggleType.android,
                  )
                ],
              ),
            ),
            GFCard(
              content: Column(
                children: <Widget>[
                  GFTypography(
                    text: 'IOS',
                    type: GFTypographyType.typo6,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  GFToggle(
                    onChanged: null,
                    value: null,
                    type: GFToggleType.ios,
                  )
                ],
              ),
            ),
            GFCard(
              content: Column(
                children: <Widget>[
                  GFTypography(
                    text: 'Square',
                    type: GFTypographyType.typo6,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  GFToggle(
                    onChanged: null,
                    value: null,
                    type: GFToggleType.square,
                  )
                ],
              ),
            ),
            GFCard(
              content: Column(
                children: <Widget>[
                  GFTypography(
                    text: 'Custom',
                    type: GFTypographyType.typo6,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      GFToggle(
                        onChanged: null,
                        value: null,
                        type: GFToggleType.custom,
                      ),
                      GFToggle(
                        onChanged: null,
                        value: null,
                        type: GFToggleType.android,
                        boxShape: BoxShape.rectangle,
                        enabledTrackColor: GFColors.getGFColor(GFColor.warning),
                      ),
                      GFToggle(
                        onChanged: null,
                        value: null,
                        type: GFToggleType.ios,
                        boxShape: BoxShape.rectangle,
                        enabledTrackColor: GFColors.getGFColor(GFColor.info),
                        borderRadius: BorderRadius.all(Radius.circular(0)),
                      ),
                      GFToggle(
                        onChanged: null,
                        value: null,
                        type: GFToggleType.ios,
                        boxShape: BoxShape.rectangle,
                        enabledText: 'ON',
                        disabledText: 'OFF',
                        enabledTrackColor: GFColors.getGFColor(GFColor.danger),
                        borderRadius: BorderRadius.all(Radius.circular(0)),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
