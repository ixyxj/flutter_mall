///购物车
import 'package:flutter/material.dart';
import 'package:flutter_bf_app/model/home_data.dart';
import 'package:flutter_bf_app/styles.dart';

class ShoppingCarLayout extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _ShoppingCarLayoutState();
}

class _ShoppingCarLayoutState extends State<ShoppingCarLayout> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        ShoppingCartListView(),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Radio(value: '1', groupValue: '2', onChanged: null),
                    Text('全选'),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      child: Text('商品总价:  ¥1'),
                    ),
                  ],
                ),
                RaisedButton(
                  onPressed: () {},
                  child: Text(
                    '去结算',
                    style: TextStyle(color: Colors.white),
                  ),
                  color: Colors.green,
                ),
              ],
            ),
            color: Colors.white,
          ),
        )
      ],
    );
  }
}

class ShoppingCartListView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ShoppingCartListViewState();
}

class _ShoppingCartListViewState extends State<ShoppingCartListView> {
  final List<ShoppingCart> _carts = <ShoppingCart>[];

  @override
  Widget build(BuildContext context) {
    List.generate(20, (i) {
      _carts.add(new ShoppingCart(
          product: new Product(
        id: i.toDouble(),
        imageUrl:
            'https://img.idol001.com/origin/2016/08/03/9185d5b096da894726228d7917aac0aa1470233944_watermark.jpg',
        name: 'vegetable$i',
        detail: 'hahahahahahahahahhahahahahahah',
        price: 100 + i.toDouble(),
      )));
    });
    return ListView.separated(
        itemBuilder: (context, index) {
          if (index >= _carts.length) return null;
          ShoppingCart cart = _carts[index];
          return Container(
            alignment: Alignment.centerLeft,
            child: Row(
              children: <Widget>[
                Radio(value: null, groupValue: null, onChanged: (v) {}),
                Image.network(
                  cart.product.imageUrl,
                  fit: BoxFit.fitWidth,
                  width: 80,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        cart.product.name,
                        style: text_normal,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 8),
                        child: Text(
                          cart.product.detail,
                          style: text_hint,
                        ),
                      ),
                      Container(
                        width: 200,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              cart.product.price.toString(),
                              style: TextStyle(fontSize: 12, color: Colors.red),
                            ),
                            DecoratedBox(
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8)),
                                  border: Border.all(color: Colors.grey)),
                              child: Container(
                                height: 28,
                                child: Row(
                                  children: <Widget>[
                                    IconButton(
                                      icon: Icon(Icons.remove),
                                      onPressed: null,
                                      iconSize: 13,
                                    ),
                                    Text(cart.num.toString()),
                                    IconButton(
                                      icon: Icon(Icons.add),
                                      onPressed: null,
                                      iconSize: 13,
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          );
        },
        separatorBuilder: (context, index) {
          return divider_grey;
        },
        itemCount: _carts.length);
  }
}
