import 'package:flutter/material.dart';
import 'package:flutter_math_fork/flutter_math.dart';
import 'general_widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

Widget Mengen() {
  return Column(
    children: [
      Header('Mengen'),
      Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8),
            child: Image.asset(
              'images/set_intersection.png',
              scale: 1.5,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              PText('Schnittmenge'),
              PMath(r'A \cap B'),
            ],
          )
        ],
      ),
      Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8),
            child: Image.asset(
              'images/set_union.png',
              scale: 1.5,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [PText('Vereinigung'), PMath(r'A \cup B')],
          )
        ],
      ),
      Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8),
            child: Image.asset(
              'images/set_difference.png',
              scale: 1.5,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              PText('Differenz'),
              PMath(r'A \setminus B'),
            ],
          )
        ],
      ),
      Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8),
            child: Image.asset(
              'images/set_complement.png',
              scale: 1.5,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [PText('Komplement'), PMath(r'\overline{A}')],
          )
        ],
      ),
      Subheader('Notation'),
      Row(
        children: [
          SizedBox(
            width: 100,
            child: Column(
              children: [
                PMath(r'e \in M'),
              ],
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                PText('e ist Element von M'),
              ],
            ),
          )
        ],
      ),
      Row(
        children: [
          SizedBox(
            width: 100,
            child: Column(
              children: [
                PMath(r'e \notin M'),
              ],
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                PText('e ist kein Element von M'),
              ],
            ),
          )
        ],
      ),
      Row(
        children: [
          SizedBox(
            width: 100,
            child: Column(
              children: [
                PMath(r'\emptyset'),
              ],
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                PText('leere Menge'),
              ],
            ),
          )
        ],
      ),
      Row(
        children: [
          SizedBox(
            width: 100,
            child: Column(
              children: [PMath(r'A \subseteq B')],
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [PText('A ist Teilmenge von B')],
            ),
          )
        ],
      ),
      Subheader('Operationen'),
      Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          PMath(r'\overline{A \cup B} = \overline{A} \cap \overline{B}'),
          PMath(r'\overline{A \cap B} = \overline{A} \cup \overline{B}')
        ],
      )
    ],
  );
}
