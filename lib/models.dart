class Invoice{
  String ourPhone = "";
  String ourEmail = "";
  String ourComName = "";
  String ourGstNum = "";
  String ourAdd = "";
  String customerPhone = "";
  String customerEmail = "";
  String customerName = "";
  String customerGstNum = "";
  String customerAdd = "";
  String numOfItem = "";
  String invoiceNum = "";
  String priceOfItem = "";
  String itemName = "";
  String disOnItem = "";
  String gsts = "";

  Invoice({
    required this.ourAdd,
    required this.ourComName,
    required this.ourEmail,
    required this.ourPhone,
    required this.ourGstNum,
    required this.customerAdd,
    required this.customerName,
    required this.customerEmail,
    required this.customerPhone,
    required this.customerGstNum,
    required this.invoiceNum,
    required this.numOfItem,
    required this.priceOfItem,
    required this.itemName,
    required this.disOnItem,
    required this.gsts,
});
}

Invoice invoice = Invoice(ourEmail: '', ourAdd: '', ourPhone: '', ourGstNum: '', ourComName: '', customerGstNum: '', customerName: '', customerEmail: '', disOnItem: '', gsts: '', itemName: '', customerPhone: '', numOfItem: '', invoiceNum: '', priceOfItem: '', customerAdd: '');