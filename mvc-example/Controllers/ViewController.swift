//
//  ViewController.swift
//  mvc-example
//
//  Created by Luiza Menezes Vieira de Souza on 01/04/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var nameContentLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var ageContentLabel: UILabel!
    @IBOutlet weak var genderLabel: UILabel!
    @IBOutlet weak var genderContentLabel: UILabel!
    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var countryLabel: UILabel!
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var numberLabel: UILabel!
    @IBOutlet weak var streetLabel: UILabel!
    
    let person = Person(firstName: "Paul", lastName: "MacCartney", gender: "Male", age: 2, location: Location(country: "Brazil", city: "Vargem Grande Paulista", street: "Silverstone", number: 107))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        identificationLabel()
        showInfo()
    }
    
    private func identificationLabel() {
        nameLabel.text = "Name: "
        ageLabel.text = "Age: "
        genderLabel.text = "Gender: "
        locationLabel.text = "Location"
    }
    
    private func showInfo() {
        nameContentLabel.text = person.firstName + " " + person.lastName
        ageContentLabel.text = String(person.age)
        genderContentLabel.text = person.gender
        countryLabel.text = person.location.country
        cityLabel.text = person.location.city
        numberLabel.text = String(person.location.number)
        streetLabel.text = person.location.street
        
        
    }
}


