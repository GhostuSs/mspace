import 'package:enroll_spb_luxury/constants/colorsPallette.dart';
import 'package:flutter/material.dart';

class ModalTrigger extends StatelessWidget {
  final String tip = 'Если в группу чисел добавить число, равное среднему арифметическому этой группы, то среднее арифметическое новой группы будет равно среднему арифметическому начальной группы.';
  _showModalBottomSheet(context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: MediaQuery.of(context).size.height*0.4,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              IconButton(icon: Icon(Icons.remove,color: kPersonalBlack.withOpacity(0.3)),iconSize: 80, onPressed: (){Navigator.pop(context);}),
              Padding(
                  padding: EdgeInsets.fromLTRB(0, 10, 0, 20),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                            'Подсказка',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Formular',
                              fontSize: 26
                            )
                        )
                      ]
                  )
              ),
              Container(
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Padding(
                              padding: EdgeInsets.fromLTRB(20, 20, 0, 0),
                              child:
                              Container(
                                  constraints: BoxConstraints(maxWidth: 0.9*MediaQuery.of(context).size.width),
                                  child: Padding(
                                    padding: EdgeInsets.all(10),
                                    child: Text(
                                        tip,
                                        maxLines: 20,
                                        overflow: TextOverflow.ellipsis,
                                        style:
                                        TextStyle(
                                            fontFamily: 'Formular',
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20)
                                    ),
                                  )
                              )
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.fromLTRB(20 ,10 ,20 ,0),
        child: Container(
          height: 50,
          width: double.infinity,
          child: ElevatedButton(
              onPressed: (){
                  _showModalBottomSheet(context);
              },
              child: Text(
                  'Подсказка',
                  style: TextStyle(
                      fontSize: 16,
                      color: kPersonalWhite,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Formular'
                  )
              ),
              style: ButtonStyle(
                  foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                  backgroundColor: MaterialStateProperty.all<Color>(kPersonalBlue),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      )
                  ))),
        ));
  }
}