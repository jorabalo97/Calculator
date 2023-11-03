//
//  HomeViewController.swift
//  CALCULADORA
//
//  Created by Jorge Abalo Dieste on 2/11/23.
//

import UIKit

final class HomeViewController: UIViewController {
    //MARK:-Outlets
    
    
    //Number
    @IBOutlet weak var Number9: UIButton!
    @IBOutlet weak var Number8: UIButton!
    @IBOutlet weak var Number7: UIButton!
    @IBOutlet weak var Number6: UIButton!
    @IBOutlet weak var Number5: UIButton!
    @IBOutlet weak var Number4: UIButton!
    @IBOutlet weak var Number3: UIButton!
    @IBOutlet weak var Number2: UIButton!
    @IBOutlet weak var Number1: UIButton!
    @IBOutlet weak var resultLabel: UILabel!
    
    // Operators
    @IBOutlet weak var OperatorDivision: UIButton!
    @IBOutlet weak var OperatorMultiplication: UIButton!
    @IBOutlet weak var OperatorSubstraction: UIButton!
    @IBOutlet weak var OperatorAddition: UIButton!
    @IBOutlet weak var OperatorResults: UIButton!
    @IBOutlet weak var OperatorPercent: UIButton!
    @IBOutlet weak var OperatorPlusMinus: UIButton!
    
    @IBOutlet weak var OperatorAC: UIButton!
    //Mark: -Initialization
    
    @IBOutlet weak var Number0: UIButton!
    init(){
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    // Mark: -Lyfe Cycle
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }



}
