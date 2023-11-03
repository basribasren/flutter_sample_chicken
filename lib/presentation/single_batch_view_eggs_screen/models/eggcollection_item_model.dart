/// This class is used in the [eggcollection_item_widget] screen.
class EggcollectionItemModel {EggcollectionItemModel({this.layingPercentage, this.day, this.costPerEgg, this.eggTrayCollection, this.pulletEggs, this.brokenEggs, this.id, }) { layingPercentage = layingPercentage  ?? "Laying Percentage: 90%";day = day  ?? "Day 1";costPerEgg = costPerEgg  ?? "Cost: 6/egg";eggTrayCollection = eggTrayCollection  ?? "Egg Tray Collection: 11 Trays";pulletEggs = pulletEggs  ?? "Pullet Eggs: 50 Eggs";brokenEggs = brokenEggs  ?? "Broken Eggs: 9";id = id  ?? ""; }

String? layingPercentage;

String? day;

String? costPerEgg;

String? eggTrayCollection;

String? pulletEggs;

String? brokenEggs;

String? id;

 }
