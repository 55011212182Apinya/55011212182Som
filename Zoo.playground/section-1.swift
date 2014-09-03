class zoozoo{
    
    let name:String
    let food:String
    
    var nameanimal:[String] = ["Elephant","Brid","monky","Tiger"];
    var foodanimal:[String] = ["Cane","Rice","Banana","Beef"];
    
    init (name:String,food:String){
        self.name = name
        self.food = food
        
    }
    
    func  zooname(){
        
        nameanimal += name
        foodanimal += food
        
    }
}

let test =zoozoo(name:"zeebra", food:"pai")
test.zooname()





