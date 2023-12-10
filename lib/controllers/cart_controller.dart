void setQuantity(bool isIncrease, int currentQuantity, int maxQuantity) {
  if (isIncrease) {
    if (currentQuantity < maxQuantity) {
      currentQuantity++;
    }
  } else {
    if (currentQuantity > 1) {
      currentQuantity--;
    }
  }
}
