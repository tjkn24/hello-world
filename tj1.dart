import 'dart:math';

int rabbitCount = 0;
const int NO_YEARS = 10;
const int GROWTH_FACTOR = 15;

void main() {
  print("The number of rabbits increases as:\n");

  for (int years = 0; years <= NO_YEARS; years++) {
    rabbitCount = calculateRabbits(years);
    print("After $years years:\t $rabbitCount animals");
  }

  int daysInWeek = 7;
  final fdaysInYear = daysInWeek * 52;
  // const DAYSINYEAR = daysInWeek * 52;
  daysInWeek = 8;
  print("fdaysInYear: $fdaysInYear"); //daysInWeek still 7
}

int calculateRabbits(int years) {
  return (2 * pow(e, log(GROWTH_FACTOR) * years)).round().toInt();
}
