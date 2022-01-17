//
//  ViewController.swift
//  DelegateAndProtocols
//
//  Created by Mac on 17.01.2022.
//

import UIKit

class ViewController: UIViewController,SelectASide{

    

    @IBOutlet weak var resultSelectionButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view
    }

    func letSelectASide(selectedSide:String) {
        if selectedSide == "Dark" {
            resultSelectionButton.backgroundColor = .black
            resultSelectionButton.setTitle("Dark side selected", for: .normal)
            resultSelectionButton.tintColor = .white
        }else{
            resultSelectionButton.backgroundColor = .white
            resultSelectionButton.setTitle("Light side selected", for: .normal)
            resultSelectionButton.tintColor = .black
        }
    }
    @IBAction func gotoSelectionVCButtonPressed(_ sender: UIButton) {
        let selectionVC = storyboard?.instantiateViewController(withIdentifier: "ToSelection")  as! SelectionViewController
        selectionVC.selectASideProtocol = self
        present(selectionVC, animated: true, completion: nil)
    }
}

