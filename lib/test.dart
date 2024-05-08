// class A {
//   List x = [
//     {"user_id": 123, "name": "Krishna", "role": "admin", "city": "Delhi"},
//     {"user_id": 123, "name": "Krishna", "role": "user", "city": "Delhi"},
//     {"user_id": 124, "name": "Krishna A", "role": "admin", "city": "Delhi"},
//     {"user_id": 125, "name": "Krishna B", "role": "user", "city": "Mumbai"},
//     {"user_id": 126, "name": "Krishna C", "role": "admin", "city": "Jaipur"},
//     {"user_id": 127, "name": "Krishna  D", "role": "user", "city": "Kolkata"}
//   ];


//   void f() {
//   Map data ={};

//     for (var element in x) {

//       data[element["city"]] ={
//         "city" :element["city"],
//         "user" : data[element["city"]["user"] == null ? 1 : (data[element["city"]]["user"] +1 )] ,
//         "admin" : data[element["city"]["admin"] == null ? 1 : (data[element["city"]]["admin"] +1 )] ,
//       };
     
//     }
//   }
//   print(data);
// }
