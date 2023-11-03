import '../../../core/app_export.dart';/// This class is used in the [poultrymarket_item_widget] screen.
class PoultrymarketItemModel {PoultrymarketItemModel({this.poultryMarket, this.poultryMarketImage, this.poultryMarketImage2, this.poultryMarketImage3, this.poultryMarketImage4, this.id, }) { poultryMarket = poultryMarket  ?? "Poultry\nMarket";poultryMarketImage = poultryMarketImage  ?? ImageConstant.imgMdiTick;poultryMarketImage2 = poultryMarketImage2  ?? ImageConstant.imgMdiTick;poultryMarketImage3 = poultryMarketImage3  ?? ImageConstant.imgGridiconsCross;poultryMarketImage4 = poultryMarketImage4  ?? ImageConstant.imgGridiconsCross;id = id  ?? ""; }

String? poultryMarket;

String? poultryMarketImage;

String? poultryMarketImage2;

String? poultryMarketImage3;

String? poultryMarketImage4;

String? id;

 }
