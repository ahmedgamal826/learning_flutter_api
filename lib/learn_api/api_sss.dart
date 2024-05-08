// // import 'package:http/http.dart' as http;
// import 'package:dio/dio.dart';

// Future<void> fetchDataFromApi() async {
//   final url =
//       'https://newsapi.org/v2/everything?q=tesla&from=2024-04-05&sortBy=publishedAt&apiKey=4f51bdce5bba4bd2b701a81f31fb429b'; // Replace with your API endpoint

//   final response = await Dio().get(url);

//   if (response.statusCode == 200) {
//     // Successful request
//     print('Response body: ${response.data}');
//   } else {
//     // Request failed
//     print('Request failed with status: ${response.statusCode}');
//   }
// }

// void main() {
//   fetchDataFromApi();
// }
