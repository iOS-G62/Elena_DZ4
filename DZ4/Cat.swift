//
//  Cat.swift
//  DZ4
//
//  Created by student on 06.05.18.
//  Copyright © 2018 student. All rights reserved.
//

import Foundation

private enum whoTheBest {
    case ourCat
    case anotherCat
    case  noOne
}
class Cat {
    var name: String
    var color: String
    var weight: Double
    var age: Int
    var alive: Bool = true
    var documents: Bool = false



    init(name: String, color: String, weight: Double, age: Int,  documents: Bool, alive: Bool) {

        self.name = name
        self.color = color
        self.weight = weight
        self.age = age
        self.documents = documents
        self.alive = alive


    }
    var description: String {

        return " name: \(name), color: \(color); weight: \(weight); age: \(age); documents: \(documents); alive: \(alive) "
    }
    func  admissionToTheExhibition(forthe: Cat) {
        if self.color == "blu" , self.documents == true ,  self.weight > 10, self.weight < 15 {

          print("\(self.name) может учавствовать в выставке!!!")
        } else if self.color != "blu" {
                    print("\(self.name) может учавствовать в выставке, если покрасит шерсть!!!")
        }
        else {
            print("\(self.name) к участию в выставке не допускаеться.")
        }

    }


    func chengColor(on: String) {
self.color = on
         print("\(self.name) - new color is \(self.color)")
      }
    

    func confrontation(anotherCat: Cat) {
let winnerResult = conuntResult(with: anotherCat)
        let winner: String?
        switch winnerResult {
        case .ourCat:
            winner = self.name
            print("Победа за \(self.name)")
        case .anotherCat:
            winner = anotherCat.name
             print("Победа за \(anotherCat.name)")
        case .noOne:
            print ("Cилы равны")
        }

    }

    private func conuntResult(with anotherCat: Cat) -> whoTheBest {
        var ourCatBalls = 0
        var anotherCatBalls = 0

        if self.weight > anotherCat.weight {
            ourCatBalls += 1
        } else if self.weight < anotherCat.weight {
            anotherCatBalls += 1
        }

        if self.age > anotherCat.age {
            ourCatBalls += 1
        } else if self.age < anotherCat.age {
            anotherCatBalls += 1
        }
        if self.documents  == true {
            ourCatBalls += 1
        }
        if anotherCat.documents  == true {
            anotherCatBalls += 1
        }
        if ourCatBalls > anotherCatBalls {
            return whoTheBest.ourCat
        } else if anotherCatBalls > ourCatBalls {
            return whoTheBest.anotherCat
        } else  {
            return whoTheBest.noOne
    }





    }
}



