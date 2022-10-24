//
//  FirstViewController.swift
//  AgregandoElementosAlLienzo
//
//  Created by TEO on 21/10/22.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var principalTitleLabel: UILabel!
    @IBOutlet weak var telephoneNumberLabel: UILabel!
    @IBOutlet weak var hideButton: UIButton!
    
    @IBOutlet weak var profilePictureImageView: UIImageView!
    //Variable de estado
    var isTelephoneVisible = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        principalTitleLabel.text = "Ya se cargó"
    }


    @IBAction func hideButtonPressed(_ sender: UIButton) {
        if( isTelephoneVisible ){
            telephoneNumberLabel.text = "*** *** ****"
            isTelephoneVisible = false
            hideButton.setTitle("Mostrar", for: .normal)
            profilePictureImageView.image = UIImage(named: "anonymus")
        }else{
            telephoneNumberLabel.text = "+57 3127723718"
            isTelephoneVisible = true
            hideButton.setTitle("Ocultar", for: .normal)
            profilePictureImageView.image = UIImage(named: "foto")
        }
    }
    
}

  
  
