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
    func search(name:String)->String{
        for (var i=0;i<nameanimal.count;i++){
            if(nameanimal[i]==name){
                var st=foodanimal[i]
                return name+="eating>> "+st
                
            }
            else if (foodanimal[i]==name){
                ไม่เสร็จคะ
            }
        
        }
    }
    
}

let test = zoozoo(name:"zeebra", food:"pai")
test.zooname()





