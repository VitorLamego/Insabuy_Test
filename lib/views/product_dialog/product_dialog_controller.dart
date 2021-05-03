class ProductDialogController {
  int amount = 0;

  void setAmount(int amount) {
    if (amount >= 0) {
      this.amount = amount;
    }
  }

  getAmount() {
    return this.amount;
  }
}
