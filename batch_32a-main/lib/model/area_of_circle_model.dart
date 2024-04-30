class AreaOfCircleModel {
  double?  r;
  double?  area;
  double pi = 3.14;

  AreaOfCircleModel({
    required this.r,
  });

  // area
  double a() {
    return pi*r!*r!;
  }


}
