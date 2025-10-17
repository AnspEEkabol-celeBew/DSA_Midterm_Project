class SetInterval {
  int counter = 0;
  int milliseconds = 0;
  bool active = false;

  SetInterval(this.milliseconds);

  void start() {
    counter = 0;
    active = true;
  }

  void pause() {
    active = false;
  }

  void unpause() {
    active = true;
  }

  void reset() {
    counter = 0;
  }

  void startLoop() async {
    while (active) { // only run while widget is active
      await Future.delayed(const Duration(milliseconds: 1));
      counter++;
    }
  }

  int getCounter() {
    return counter;
  }
}