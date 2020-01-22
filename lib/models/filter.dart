enum OrderBy { DATE, PRICE }

const VENDER_TYPE_PARTICULAR = 1 << 0;
const VENDER_TYPE_PROFESSIONAL = 1 << 1;

class Filter {
  Filter(
      {this.search,
      this.orderBy = OrderBy.DATE,
      this.minPrice,
      this.maxPrice,
      this.vederType = VENDER_TYPE_PARTICULAR | VENDER_TYPE_PROFESSIONAL
      });

  String search;
  OrderBy orderBy;
  int minPrice;
  int maxPrice;
  int vederType;
}
