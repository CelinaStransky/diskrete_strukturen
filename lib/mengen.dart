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
              PMath(r'A \cap B : = \{e  | e \in A \wedge e \in B\}'),
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
            children: [
              PText('Vereinigung'),
              PMath(r'A \cup B : = \{e  | e \in A \vee e \in B\}'),
            ],
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
              PMath(r'A \setminus B : = \{e  | e \in A \wedge e \notin B\}'),
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
            children: [
              PText('Komplement'),
              PMath(r'\overline{A} : = \{e | e \notin A \}'),
            ],
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
      Row(
        children: [
          PMath(r'\overline{A \cup B} = \overline{A} \cap \overline{B}'),
        ],
      ),
      Row(
        children: [
          PMath(r'\overline{A \cap B} = \overline{A} \cup \overline{B}'),
        ],
      ),
      Subheader('Rechenregeln'),
      Row(
        children: [
          Column(
            children: [
              PText('Idempotenz'),
            ],
          ),
          Column(
            children: [PMath(r'A \cap A = A'), PMath(r'A \cup A = A')],
          )
        ],
      ),
      Row(
        children: [
          Column(
            children: [
              PText('Kommutativ'),
            ],
          ),
          Column(
            children: [
              PMath(r'A \cap B = B \cap A'),
              PMath(r'A \cup B = B \cup A')
            ],
          )
        ],
      ),
      Row(
        children: [
          Column(
            children: [
              PText('Assoziativ'),
            ],
          ),
          Column(
            children: [
              PMath(r'A \cap (B \cap C) = (A \cap B) \cap C'),
              PMath(r'A \cup (B \cup C) = (A \cup B) \cup C'),
            ],
          )
        ],
      ),
      Row(
        children: [
          Column(
            children: [
              PText('Distributiv'),
            ],
          ),
          Column(
            children: [
              PMath(r'A \cap (B \cup C) = (A \cap B) \cup (A \cap C)'),
              PMath(r'A \cup (B \cap C) = (A \cup B) \cap (A \cup C)'),
            ],
          )
        ],
      ),
      Subheader('Geordnete Paare'),
      Row(children: [
        PMath(r'(a,b) = (c,d) \Leftrightarrow a=c \text{ und } b=d')
      ]),
      Subheader('Produktmenge'),
      SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            PMath(r'A \times B := \{ (a,b) | a \in A, b\in B \} '),
            PText('Beispiel'),
            PMath(r'''
              \begin{array}{|l|l|l|}
              \hline
              ~ & c & d \\ \hline
              a & (a,c) & (a,d) \\ \hline
              b & (b,c) & (b,d) \\ \hline
              \end{array}
                '''),
            PMath(r'| A \times B| = |A| \times |B|'),
          ],
        ),
      ),
      Subheader('Potenzmenge'),
      Row(
        children: [PMath(r'\mathcal{P}(A)'), PText('Menge aller Teilmengen')],
      ),
      Row(
        children: [
          PMath(r'|\mathcal{P}(A)| = 2^{|A|}'),
        ],
      ),
      Row(
        children: [
          PMath(r'\text{Für alle } n \in \mathbb{N} \text{ gilt : }'),
          PMath(r'\sum^n_{k=0} \binom{n}{k} = 2^n'),
        ],
      ),
      Row(
        children: [
          PMath(r'\Rightarrow \text{Es gibt } 2^n \text{ Teilmengen}'),
        ],
      ),
      Row(
        children: [
          PMath(r' \text{ einer n-Elementigen Menge}'),
        ],
      ),
      Subheader('Binomialkoeffizient'),
      Row(
        children: [PMath(r'\binom{n}{k} = \frac{n!}{k!(n-k)!}')],
      ),
      Row(
        children: [
          PText('Hinweis: '),
          PMath(r'0! = 1'),
          PMath(r'n! = (n-1)! * n'),
        ],
      ),
    ],
  );
}
