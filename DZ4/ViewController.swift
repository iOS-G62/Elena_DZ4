//
//  ViewController.swift
//  DZ4
//
//  Created by student on 06.05.18.
//  Copyright © 2018 student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

let Vilik = Cat.init(name: "Vilik" ,color: "gray", weight: 20, age: 5, documents: true, alive: true)

    @IBOutlet weak var colorLabel: UILabel!

    @IBOutlet weak var wightLabel: UILabel!

    @IBOutlet weak var documentsLabel: UILabel!

    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var aliveLabel: UILabel!




    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
}

    func updateUI() {
        colorLabel.text = Vilik.name
        wightLabel.text = "\(Vilik.weight)"
        documentsLabel.text = "\(Vilik.documents)"
        ageLabel.text = "\(Vilik.age)"
        aliveLabel.text = "\(Vilik.alive)"


    }

    @IBAction func wightButton(_ sender: Any) {
      fet()
        updateUI()
    }

    @IBAction func aliveButton(_ sender: Any) {
        oldest()
        updateUI()
    }
    
    func tasks () {
        let Prince = Cat.init(name: "Prince" ,color: "gray", weight: 13, age: 2, documents: true, alive: true)
        let  Semen = Cat.init(name: "Semen",color: "blu", weight: 10, age: 6,  documents: false, alive: true)
        let Pinch = Cat.init(name: "Pinch", color: "blu", weight: 11, age: 4, documents: true, alive: true)

        //        Метод 1 - отбор на виставку


        Prince.admissionToTheExhibition(forthe: Prince)
        Semen.admissionToTheExhibition(forthe: Semen)
        Pinch.admissionToTheExhibition(forthe: Pinch)


        print("--------------------------")


        // Метод 2 - кот меняет цвет
        Prince.chengColor(on: "blu")
        Prince.admissionToTheExhibition(forthe: Prince)

        print("--------------------------")

        //       Метод 3 - противостояние двух котов)

        Pinch.confrontation(anotherCat: Semen)

    }
    func fet () {
        Vilik.weight += 1
}
    func oldest () {
        Vilik.alive = true
        Vilik.age += 1
        if Vilik.age == 15 {
            Vilik.alive = false
        } else if Vilik.age > 15 {
            Vilik.age = 0

        }

        }
}



