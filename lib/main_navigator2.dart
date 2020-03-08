import 'package:flutter/material.dart';

class Product{
  final String title; // 商品名
  final String description;//描述

  Product(this.title, this.description);
}

void main(){
  runApp(MaterialApp(
    title: '导航的数据的传递和接受',
    home: Productlist(
      products: List.generate(
        20, 
        (i) => Product('商品$i', '这是一个商品详情,编号为$i')
      )
    ),
  ));
}

class Productlist extends StatelessWidget {
  final List<Product> products;// 定义List
  Productlist({Key key, @required this.products}): super(key: key); // 接收参数
  // const Productlist({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('商品描述'),),
      body: ListView.builder( // 动态生成list
        itemCount: products.length,
        itemBuilder: (context, index){
          return ListTile(
            title: Text(products[index].title),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProductDetail(product: products[index])
                )
              );
            },
          );
        },
      )
    );
  }
}


class ProductDetail extends StatelessWidget {
  final Product product;

  const ProductDetail({Key key, this.product}) : super(key: key);// 接收参数

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(product.title)),
      body: Center(
        child: Text('${product.description}')
      )
    );
  }
}