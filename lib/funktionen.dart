import 'package:diskrete_strukturen/general_widgets.dart';
import 'package:flutter/material.dart';

Widget Funktionen() {
  return Column(
    children: [
      Header('Funktionen'),
      Row(
        children: [
          PMath(r'f: A \rightarrow B \Leftrightarrow f(a) = b'),
        ],
      ),
      Row(
        children: [
          PMath(
              r'\text{mit } a \in A \text{, } b \in B \text{, } (a,b) \in G_f')
        ],
      ),
      Row(
        children: [
          PMath(r'\text{Abbildung f von A nach B ist ein Paar} (G_f, B) ')
        ],
      ),
      Row(
        children: [
          PMath(
              r'\text{mit } G_f \subseteq A \times B \text{ eine Relation, so dass es}')
        ],
      ),
      Row(
        children: [PMath(r' \text{zu jedem a genau ein zugehöriges b gibt}')],
      ),
      Subheader('Bezeichnungen'),
      Row(
        children: [PText('A: Definitionsbereich von f')],
      ),
      Row(
        children: [PText('B: Wertebereich von f')],
      ),
      Row(
        children: [PText('G: Graph von f')],
      ),
      Subheader('Eigenschaften'),
      Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 90,
            child: PText('injektiv'),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              PMath(r'\forall a_1, a_2 \in A \text{ mit } f(a_1) = f(a_2)'),
              PMath(r'\Leftrightarrow a_1 = a_2'),
            ],
          )
        ],
      ),
      Container(
        height: 85,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 90,
              child: PText('surjektiv'),
            ),
            Flexible(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  PMath(r'f[A] = B'),
                  PSmallText('jedes Element aus B wird mind. 1 mal getroffen'),
                  PSmallText('es existiert eine Umkehrabbildung')
                ],
              ),
            )
          ],
        ),
      ),
      Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 90,
            child: PText('bijektiv'),
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              PSmallText('f injektiv und f surjektiv'),
              PSmallText('f ist eineindeutig'),
              PSmallText('Voraussetzung : |A| = |B|')
            ],
          )
        ],
      ),
      Subheader('Umkehrabbildung'),
      Row(
        children: [PMath(r'f^{-1} : f[A] \mapsto A')],
      ),
      Row(
        children: [
          PMath(r'\text{es gelte: } f^{-1}(b) = a \Leftrightarrow f(a)=b')
        ],
      ),
      Subheader('Kompositionen'),
      Row(
        children: [
          PMath(r'f : A \rightarrow B \text{ und } g: B\rightarrow C')
        ],
      ),
      Row(
        children: [PMath(r'g \circ f : A \rightarrow C : a \mapsto g(f(a))')],
      ),
      Row(
        children: [PMath(r'f^0 := id')],
      ),
      Row(
        children: [PMath(r'f^1 := f')],
      ),
      Row(
        children: [PMath(r'f^2 := f \circ f')],
      ),
      Row(
        children: [PMath(r'f^n := f^{n+1} \circ f')],
      ),
      Subheader('Permutationen'),
      MathRow(r'X = {1,...,n}'),
      MathRow(r'''  f = \bigl(
        \begin{smallmatrix}
          1 & 2 & 3 & ... & n \\
          f(1) & f(2) & f(3) & ... & f(n) 
          \end{smallmatrix}\bigr)
      '''),
      SmallTextRow(''),
      MathRow(r'Beispiel :'),
      MathRow(r'X=\{1,2,3,4,5\}'),
      MathRow(r'''\bigl(
        \begin{smallmatrix}
          1 & 2 & 3 & 4 & 5 \\
          2 & 3 & 5 & 4 & 1
          \end{smallmatrix}\bigr)'''),
      MathRow(r'\text{weitere Schreibweisen : (1235)(4) / (4)(3512)}'),
      SmallTextRow('4 : Fixpunkt; 1235: Zyklus  '),
      SmallTextRow(''),
      SmallTextRow('Reihenfolge der Zyklen ist beliebig'),
      SmallTextRow('Beginnendes Element eines Zyklus ist  beliebig'),
      SmallTextRow('Zyklische Permutation: ein einziger Zyklus'),
      SmallTextRow('Transposition: beliebig viele Fixpunkte'),
      SmallTextRow('                         + ein Zyklus der Länge 2'),
      Subheader('Permutationen Komponieren'),
      TextRow('Regel : von Rechts nach links abbilden'),
      TextRow('Beispiel 1 :'),
      MathRow(r'(23) \circ (31) = (312)'),
      TextRow('Beispiel 2 : '),
      MathRow(r'(12) \circ (23) \circ (34)= (3412) '),
      SmallTextRow(r'Anzahl Permutationen einer Menge mit n Elementen : n! ')
    ],
  );
}
