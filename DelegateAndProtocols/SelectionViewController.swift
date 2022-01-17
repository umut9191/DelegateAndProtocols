//
//  SelectionViewController.swift
//  DelegateAndProtocols
//
//  Created by Mac on 17.01.2022.
//

import UIKit

protocol SelectASide{
    func letSelectASide(selectedSide:String)
}

class SelectionViewController: UIViewController {
   var selectASideProtocol:SelectASide!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func darkButtonPressed(_ sender: UIButton) {
        selectASideProtocol.letSelectASide(selectedSide: "Dark")
        dismiss(animated: true, completion: nil)
    }
    @IBAction func lightButtonPressed(_ sender: UIButton) {
        selectASideProtocol.letSelectASide(selectedSide: "Light")
        dismiss(animated: true, completion: nil)

    }
}
