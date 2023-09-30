import 'package:api_five/model/product_list_model.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  Dio dio = Dio();
  List<ProductListModel> productList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: ListView.separated(
                itemCount: productList.length,
                separatorBuilder: (context, index) => const SizedBox(height: 15),
                itemBuilder: (context, index) => ListTile(
                  title: Text(productList[index].title!),
                  subtitle: Text(productList[index].description!),
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(productList[index].image!),
                  ),
                  trailing: Text(productList[index].price!.toString()),
                ),
              ),
            ),
            SizedBox(height: 14),
            ElevatedButton(
              onPressed: () {
                getProduct();
              },
              child: Text('Get Product'),
            ),
            SizedBox(height: 24),
          ],
        ),
      ),
    );
  }

  getProduct() async {
    try {
      await dio.delete("https://fakestoreapi.com/products/1").then((value) {
        // productList = productListModelFromJson(value.data);
        productList.removeAt(0);
        debugPrint("Get product successfully");
        setState(() {});
      });
    } on DioException catch (error) {
      debugPrint(error.message);
    } catch (error) {
      debugPrint(error.toString());
    }
  }

  postProduct() async {
    try {
      await dio.put(
        "https://fakestoreapi.com/products/1",
        data: {
          "title": "Mens Casual Premium Slim Fit T-Shirts ",
          "price": 22.3,
          "description": "Slim-fitting style, contrast raglan long sleeve, three-button henley placket, light weight & soft fabric for breathable and comfortable wearing. And Solid stitched shirts with round neck made for durability and a great fit for casual fashion wear and diehard baseball fans. The Henley style round neckline includes a three-button placket.",
          "category": "men's clothing",
          "image": "https://fakestoreapi.com/img/71-3HjGNDUL._AC_SY879._SX._UX._SY._UY_.jpg",
          "rating": {"rate": 4.5, "count": 146}
        },
      ).then((value) {
        productList[0] = (ProductListModel.fromJson(value.data));
        debugPrint("Add product successfully");
        setState(() {});
      });
    } on DioException catch (error) {
      debugPrint(error.message);
    } catch (error) {
      debugPrint(error.toString());
    }
  }
}

// options: Options(
// contentType: "application/json", // contentType used in to set data sending and getting type
// headers: {
// headers and Authorization
// "api_key": "jhvbsdhkvbsdhkbvs", // When authorization is set api key in header
// "Authorization": "Bearer 12345678", // When authorization is set bearer token
// },
// ),

// To send data in (Map / Row) format
// data: {
//   "data": "data you want to send in api"
// },
// To send data in (JSON) format
// data: {
//   "data": "data you want to send in api"
// },
// To send data in (FormData) format
// data: FormData.fromMap({
//   "data": "data you want to send in api"
// }),
// To send data in (File) format
// data: {
//   'file': await MultipartFile.fromFile('./text.txt', filename: 'upload.txt'),
// }
// To send data in (Stream) format
// data: Stream.value("data you want to send in api"),
// To send data in (Uint8List) format
// data: Uint8List.fromList("data you want to send in api".codeUnits),
// To send data in (String) format

// Query parameters use to send data in parameters (Parameters)
// queryParameters: {
//   "": "",
// },
