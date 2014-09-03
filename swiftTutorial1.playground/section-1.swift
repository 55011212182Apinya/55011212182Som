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


