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
    
    // MARK: - Variables
    
    private var total : Double = 0 // Total
    private var temp : Double = 0 // Valor por pantalla
    private var operating = false // Indicar si se ha seleccionado un operador
    private var decimal = false // Indicar si el valor es decimal
    private var operation : OperationType = .none // Operacion actual
    
    
    // Constantes
    
    private let kDecimalSeparators = Locale.current.decimalSeparator
    private let KMaxLength = 9
    private let KMaxValue:Double = 999999999
    private let KMinValue:Double = 0.00000001
    private enum OperationType{
        case none, addiction, substraction, multiplication, division, percent
    }
    
    // Formateo de valores auxiliar
    
    private let auxFormatter: NumberFormatter = {
    let formatter = NumberFormatter()
    let locale = Locale.current
    formatter.groupingSeparator = ""
    formatter.decimalSeparator = locale.decimalSeparator
    formatter.numberStyle = .decimal
    return formatter
}()
    
    // Formateo de valores por pantalla por defecto
    
    private let printFormatter: NumberFormatter = {
        let formatter = NumberFormatter()
        let locale = Locale.current
        formatter.groupingSeparator = locale.groupingSeparator
        formatter.decimalSeparator = locale.decimalSeparator
        formatter.numberStyle = .decimal
        formatter.maximumFractionDigits = 9
        formatter.minimumFractionDigits = 0
        formatter.maximumFractionDigits = 8
        return formatter
    }()
    
    


    
    init(){
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    // Mark: -Lyfe Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        Number0.round()
        Number1.round()
        Number2.round()
        Number3.round()
        Number4.round()
        Number5.round()
        Number6.round()
        Number7.round()
        Number8.round()
        Number9.round()
   
        
               OperatorAC.round()
               OperatorPlusMinus.round()
               OperatorPercent.round()
               OperatorResults.round()
               OperatorAddition.round()
               OperatorSubstraction.round()
               OperatorMultiplication.round()
               OperatorDivision.round()
        
        // Do any additional setup after loading the view.
    }
// MARK: -Button Acctions
    
    @IBAction func operatorResultAction(_ sender: UIButton) {
        sender.shine()
    }
    
    @IBAction func operatorAdditionAction(_ sender: UIButton) {
        sender.shine()
    }
    
    @IBAction func operatorSubstractionAction(_ sender: UIButton) {
        sender.shine()
    }
    
    @IBAction func operatorMultiplicationAction(_ sender: UIButton) {
        sender.shine()
    }
    
    @IBAction func operatorDivisionAction(_ sender: UIButton) {
        sender.shine()
    }
    
    @IBAction func operatorPercentAction(_ sender: UIButton) {
        sender.shine()
    }
    
    @IBAction func operatorPlusMinusAction(_ sender: UIButton) {
        sender.shine()
    }
    
    @IBAction func operatorACAction(_ sender: UIButton) {
        sender.shine()
    }
    
    @IBAction func operatorDecimalAction(_ sender: UIButton) {
        sender.shine()
    }
    
    @IBAction func numberAction(_ sender: UIButton) {
        sender.shine()
        print(sender.tag)
        
        
    }

}
