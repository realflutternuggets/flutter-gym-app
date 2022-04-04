class WorkOut{
  //model variables
  final int id;
  final String imageUrl;
  final String title;
  final String trainer;
  final double time;
  final int exercises;
  final int cost;
  final bool isTopRated;

  //model constructor
  WorkOut(this.id, this.imageUrl, this.title, this.trainer, this.time, this.exercises, this.cost, this.isTopRated);

  //method to fetch workout list
  static List<WorkOut> getWorkOutList(){
    List<WorkOut> _workOutList = [
      WorkOut(0, 'assets/img1.jpg', 'Jane Doe', 'Crossfit', 2, 12, 12000, true),
      WorkOut(1, 'assets/img2.jpg', 'Mary Daniels', 'Fitness', 3.6, 15, 15800, false),
      WorkOut(2, 'assets/img3.jpg', 'Janet Joe', 'Gymnastics', 2.4, 11, 13500, false),
      WorkOut(3, 'assets/img4.jpg', 'Lilian Doe', 'Aerobics', 4.0, 16, 16000, true),
    ];
    return _workOutList;
  }
}