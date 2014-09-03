let tutorialTeam = 56
let editorialTeam = 23
var totalTeam = tutorialTeam+editorialTeam

totalTeam += 1
let priceIntInferred = -19
let priceExplicit:Int = -19

let priceInferred = -19.99
let priceExpticit:Double = -19.99

let pricefloatInferred = -19.99
let pricefloatExplicit:Float = -19.99

let onSaleInferred = true
let onSaleExplicit:Bool = false

let nameInferred = "Whoopie Cushion"
let nameExplicit:String = "Whoopie Cushion"



var shoppingListExplicit = [String]()
shoppingListExplicit = ["Eggs","Milk"]
// var shoppingLisExplicit = ["Eggs","Milk"]

var shoppingList = ["Eggs","Milk"]
println("The shopping list contains\(shoppingList.count) items.")
shoppingList.append("Flour")
shoppingList += "Baking Powder"
shoppingList += ["Chocolat Spread","Cheese","Butter"]
var firstItem = shoppingList[0]
shoppingList[0] = "Six eggs"
//shoppingList[0...3] = ["Bbananas","Apples"]
shoppingList

shoppingList += ["Baking Powder"]
//shoppingList now contains 4 items
shoppingList += ["Chocolat Spread","Cheese","Butter"]
//shoppingList now contains 7 items

shoppingList.insert("Maple Syrup", atIndex: 0)
//shoppingList now contains 7 items
//"Maple Sytup" is now the first item in the list

shoppingList.append("Flour")
//shoppingList now contains 3 items, and someone is making pancakes

shoppingList += ["Baking Powder"]

var FirstItem = shoppingList[0]
//firstItem is equal to "Eggs"

shoppingList [4...6] = ["bannanas","Apples"]
//shoppingList now contains 6 items


let array: Array<Int> = [1, 2, 3, 4]
let dictionary: Dictionary<String, Int> = ["dog": 1, "elephant": 2]

var airports: [String: String] = ["TYO":"Tokyo","DUB":"Dublin"]

if airports.isEmpty{
    println("The airports dictionary is empty.")
}else {
    println("The airports dictionary is not empty.")
}
//println("The airports dictionary is not empty.")

println("The airports dictionary contains\(airports.count)items.")

//prints "The airports dictionary contains 2 items."

airports["LHR"]="London"
//the airports dictionary contains 2 items

airports["LHR"] = "London Heathrow"
//the value for "LHR" has been changd to "London Heathrow"

if let oldValue = airports.updateValue("Dublin International", forKey: "DUB"){
    println("The old value for DUB was \(oldValue).")
}
//println "The old value for DUB was Dublin,"


airports["APL"] = "Apple International"
//"Apple International" is not the real airport for APL, so delete it 

airports["APL"] = nil
//

if  let removedValue = airports.removeValueForKey("DUB") {
    println("The removed airport's name is \(removedValue).")
} else {
    println("The airports dictionary dose not contain a value for DUB.")
}
//













