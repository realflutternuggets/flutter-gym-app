import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:work_out/model/exercise.dart';
import 'package:work_out/model/work_out.dart';
import 'package:work_out/widget/exercise.dart';

class DetailView extends StatefulWidget {
  final int id;
  const DetailView({Key? key, required this.id}) : super(key: key);

  @override
  State<DetailView> createState() => _DetailViewState();
}

class _DetailViewState extends State<DetailView> {
  @override
  Widget build(BuildContext context) {
    //the list with the work outs
    List<WorkOut> _workOutList = WorkOut.getWorkOutList();
    List<Exercise> _exerciseList = Exercise.getExerciseList();

    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: FittedBox(
              child: Hero(
                tag: _workOutList[widget.id].id,
                child: Image.asset(_workOutList[widget.id].imageUrl),
              ),
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: 50,
            left: 20,
            child: GestureDetector(
              onTap: () => Navigator.pop(context),
              child: const Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
              ),
            ),
          ),
          Positioned(
            top: 50,
            right: 20,
            child: GestureDetector(
              onTap: () => null,
              child: _workOutList[widget.id].isTopRated
                  ? Image.asset(
                      "assets/medal.png",
                      width: 40,
                    )
                  : const Text(''),
            ),
          ),
          SlidingUpPanel(
            defaultPanelState: PanelState.OPEN,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
            backdropEnabled: true,
            backdropColor: Colors.black87,
            panel: Container(
              height: size.height * .4,
              child: Padding(
                padding: EdgeInsets.all(32),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        _workOutList[widget.id].title,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontWeight: FontWeight.w800,
                          fontSize: 32.0,
                        ),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            backgroundImage:
                                AssetImage(_workOutList[widget.id].imageUrl),
                          ),
                          const SizedBox(
                            width: 6.0,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(_workOutList[widget.id].trainer),
                              const Text(
                                'Coach',
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 12.0,
                      ),
                      const Text(
                        'Description',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black87,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const Text(
                        'Our gym and training exercises are globally recogized and have been nominated to global awards 6 times.',
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          color: Colors.black87,
                          letterSpacing: 1.2,
                        ),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      //this is where the exercise widget will go through
                      ExerciseWidget(
                          exerciseTitle: 'Squat',
                          exerciseValue:
                              _exerciseList[_workOutList[widget.id].id].squat,
                          widget: widget),
                      ExerciseWidget(
                          exerciseTitle: 'Leg Press',
                          exerciseValue:
                              _exerciseList[_workOutList[widget.id].id]
                                  .legPress,
                          widget: widget),
                      ExerciseWidget(
                          exerciseTitle: 'Lunge',
                          exerciseValue:
                              _exerciseList[_workOutList[widget.id].id].lunge,
                          widget: widget),
                      ExerciseWidget(
                          exerciseTitle: 'Leg Extension',
                          exerciseValue:
                              _exerciseList[_workOutList[widget.id].id]
                                  .legExtension,
                          widget: widget),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Container(
                        width: double.infinity,
                        decoration: const BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.all(
                            Radius.circular(16),
                          ),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(12),
                          child: Center(
                            child: Text(
                              'Get Started',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
