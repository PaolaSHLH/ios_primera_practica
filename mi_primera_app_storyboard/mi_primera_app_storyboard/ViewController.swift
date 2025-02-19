//
//  ViewController.swift
//  mi_primera_app_storyboard
//
//  Created by alumno on 19/2/25.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print("Ya cargo la pantalla inicial")
        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var cajon_de_txt: UILabel!
    
    @IBOutlet weak var entrada_txt: UITextField!
    
    @IBAction func cuando_le_picamos(_ sender: Any) {
        cajon_de_txt.text = entrada_txt.text
        entrada_txt.text = ""
    }
}

