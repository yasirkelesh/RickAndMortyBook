//
//  detailsVC.swift
//  RickAndMortyBook
//
//  Created by Muhammed yasir Keles on 9/28/22.
//

import UIKit

class detailsVC: UIViewController {
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var whatLabel: UILabel!
    
    var selectedRickAndMorty : RickAndMorty?
    

    override func viewDidLoad() {
        super.viewDidLoad()

        nameLabel.text = selectedRickAndMorty?.name
        image.image = selectedRickAndMorty?.image
        whatLabel.text = selectedRickAndMorty?.who
        
        

}
}
