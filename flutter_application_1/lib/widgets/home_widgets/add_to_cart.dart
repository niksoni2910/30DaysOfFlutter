import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../models/cart.dart';
import '../../models/catalog.dart';

class AddtoCart extends StatefulWidget {
  final Item catalog;
  const AddtoCart({
    Key? key,
    required this.catalog,
  }) : super(key: key);

  @override
  State<AddtoCart> createState() => _AddtCartState();
}

class _AddtCartState extends State<AddtoCart> {
  final _cart = CartModel();
  @override
  Widget build(BuildContext context) {
    bool isInCart = _cart.items.contains(widget.catalog)?? false;
    return ElevatedButton(
        onPressed: () {
          if(!isInCart){
            isInCart = isInCart.toggle();
            final catalog = CatalogModel();
            _cart.catalog = catalog;
            _cart.add(widget.catalog);
            setState(() {});
          }
        },
        style: ButtonStyle(
            backgroundColor:
                MaterialStateProperty.all(context.theme.buttonColor),
            shape: MaterialStateProperty.all(
              const StadiumBorder(),
            )),
        child: isInCart ? const Icon(Icons.done) : const Icon(CupertinoIcons.cart_badge_plus));
  }
}
