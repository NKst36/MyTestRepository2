/*Задание 2
На основе класса Map реализовать коллекцию заказы(10 элементов) следующего типа:
канцтовары: количество
канцтовары могут повторяться.
Пример ручки : 23
Ввести с клавиатуры канцтовар, количество
1. Организовать проверку, что введенный с клавиатуры канцтовар есть в
коллекции.
2. Вывести все канцтовары, у которых количество +-на 5 соответствует введенному
3. Сделать два множества канцтовар, количество и вывести их на экран*/
import "dart:io";
  Map<String, int> stationery = {
    "pens" : 20,
    "dyaries" : 10,
    "pencils" : 15,
    "papers" : 25,
    "staplers" : 30,
    "notebooks" : 35,
    "folders" : 40,
    "photografic papers" : 45,
    "glues" : 50,
    "markers" : 55,
};

void main() {

    //Ввод данных
    print("Введите канцтовар");
    String? product = stdin.readLineSync();
    print("Введите количество");
    int? count = int.parse(stdin.readLineSync()!);

    // Проверка наличия канцтовра в коллекции
    print("Есть ли товар в списке?");
    print(checkElement(product));

    // Вывод товара у которых количество +-на 5 соответствует введенному
    print("Введите количество товара");
    int? count2 = int.parse(stdin.readLineSync()!);
    equalCountProduct(count2);

    // Вывод множеств
    print("Вывод множеств");
    Set<String> itemSet = {};
    List<int> itemList = [];
    for(var item in stationery.entries){
      itemSet.add(item.key);
      itemList.add(item.value);
    }
    for (var n in itemSet){
      print(n);
    }
    for (var n in itemList){
      print(n);
    }
}

bool? checkElement(String? product){
    bool result;
    if (stationery.containsKey(product)){
      result = true;
    }
    else {
      result = false;
    }
    return result;
}
void equalCountProduct(int countProduct){
    int countElements = 0;
    for (var item in stationery.entries){
      if (countProduct >= item.value - 5 && countProduct <= item.value + 5){
        print("${item.key} - ${item.value}");
        countElements++;
      }
      if (countElements == 0){
        print("Товара с значением +-5 от введенного нет");
      }
    }
}


