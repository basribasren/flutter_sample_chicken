/// This class is used in the [animalfeedinglist_item_widget] screen.
class AnimalfeedinglistItemModel {AnimalfeedinglistItemModel({this.feedAmount, this.dayNumber, this.feedType, this.id, }) { feedAmount = feedAmount  ?? "Feed Served: 25kg ";dayNumber = dayNumber  ?? "Day 1";feedType = feedType  ?? "Feed Type:";id = id  ?? ""; }

String? feedAmount;

String? dayNumber;

String? feedType;

String? id;

 }
