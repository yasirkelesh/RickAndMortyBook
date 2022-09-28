//
//  ViewController.swift
//  RickAndMortyBook
//
//  Created by Muhammed yasir Keles on 9/28/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    

    @IBOutlet weak var TableView: UITableView!
    
    var myRickAndMorty = [RickAndMorty]()
    var characters : RickAndMorty?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        TableView.dataSource = self
        TableView.delegate = self
        
        
        
        
        let Rick = RickAndMorty(RickAndMortyName: "Rick Sanchez", RickAndMortyWho: "Sanchez is a misanthropic alcoholic scientist.", RickAndMortyİmage: UIImage(named: "Rick")!)
        
        let Beth = RickAndMorty(RickAndMortyName: "Beth Smith", RickAndMortyWho: "She is the level-headed and assertive daughter of mad scientist Rick Sanchez, mother of Morty and Summer Smith, wife of Jerry Smith, and .", RickAndMortyİmage: UIImage(named: "Beth")!)
        
        
        let Jerry = RickAndMorty(RickAndMortyName: "Jerry Smith", RickAndMortyWho: "He is the son-in-law of mad scientist Rick Sanchez, father of Morty and Summer Smith and husband of Beth Smith.", RickAndMortyİmage: UIImage(named: "Jerry")!)
        
        let Morty = RickAndMorty(RickAndMortyName: "Morty Smith", RickAndMortyWho: "He is the good-natured and impressionable grandson of mad scientist Rick Sanchez, the son of Jerry and Beth Smith, the younger brother of Summer Smith, and the father of Morty Jr. and Naruto Smith, who can be easily manipulated.", RickAndMortyİmage: UIImage(named: "Morty")!)
        
        let Summer = RickAndMorty(RickAndMortyName: "Summer Smith", RickAndMortyWho: "Known for her smart and humorous personality and for her high dexterity, the character has been well-received. She is the well-meaning and intelligent older sister of Morty Smith, the daughter of Jerry and Beth Smith, the granddaughter of mad scientist Rick Sanchez, and mother-aunt of Naruto Smith.", RickAndMortyİmage: UIImage(named: "Summer")!)
        
        
        myRickAndMorty.append(Rick)
        myRickAndMorty.append(Beth)
        myRickAndMorty.append(Jerry)
        myRickAndMorty.append(Morty)
        myRickAndMorty.append(Summer)
        
        
         
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myRickAndMorty.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell()
        cell.textLabel?.text = myRickAndMorty[indexPath.row].name
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        characters = myRickAndMorty[indexPath.row]
        self .performSegue(withIdentifier: "toDetailsVC", sender: nil)
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsVC"{
            let destinationVC = segue.destination as! detailsVC
            destinationVC.selectedRickAndMorty = characters
        }
    }


}

