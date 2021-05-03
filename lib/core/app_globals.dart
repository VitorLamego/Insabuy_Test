int amountCart = 0;
List<Map> cartItems = [];
double cartValue = 0.0;

setAmountCart(bool add) {
  if (add)
    amountCart++;
  else if (amountCart >= 0) amountCart--;
}

addItem(Map item) {
  cartItems.add(item);
  amountCart++;
}

setCartValue(double value) {
  cartValue += value;
}
