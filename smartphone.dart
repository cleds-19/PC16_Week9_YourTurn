class Smartphone {
  String brand;
  String model;
  int batteryLevel;
  bool _isLocked;

  Smartphone(this.brand, this.model, this.batteryLevel, [this._isLocked = true]);

  bool get isLocked => _isLocked;

  void unlock(String pin) {
    if (pin == "1234") {
      _isLocked = false;
      print('$brand $model unlocked.');
    } else {
      print('Incorrect PIN.');
    }
  }

  void useApp(String appName) {
    if (_isLocked) {
      print('Cannot use $appName. Phone is locked.');
    } else {
      batteryLevel -= 10;
      print('Using $appName. Battery remaining: $batteryLevel%');
    }
  }
}

void main() {
  Smartphone phone1 = Smartphone('Samsung', 'Galaxy S24', 80);
  Smartphone phone2 = Smartphone('Apple', 'iPhone 15', 50);

  List<Smartphone> inventory = [phone1, phone2];

  for (var phone in inventory) {
    print('${phone.brand} ${phone.model} - Battery: ${phone.batteryLevel}%');
    phone.useApp('YouTube');
    phone.unlock('1234');
    phone.useApp('YouTube');
    print('---');
  }
}