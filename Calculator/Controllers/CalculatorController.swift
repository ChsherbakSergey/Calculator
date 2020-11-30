//
//  ViewController.swift
//  Calculator
//
//  Created by Sergey on 11/30/20.
//

import UIKit

class CalculatorController: UIViewController {
    
    //Constants and variables
    var firstNumber: Double = 0
    var secondNumber: Double = 0
    var resultNumber: Double = 0
    
    var currentOperation : Operation?

    //Views that will be displayed on this controller
    @IBOutlet weak var holderView: UIView!
    
    private let zeroButton : UIButton = {
        let button = UIButton()
        button.setTitle("    0", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 40, weight: .semibold)
        button.contentHorizontalAlignment = .leading
        button.backgroundColor = .lightGray
        button.tag = 1
        return button
    }()
    
    private let oneButton : UIButton = {
        let button = UIButton()
        button.setTitle("1", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 40, weight: .semibold)
        button.backgroundColor = .lightGray
        button.tag = 2
        return button
    }()
    
    private let twoButton : UIButton = {
        let button = UIButton()
        button.setTitle("2", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 40, weight: .semibold)
        button.backgroundColor = .lightGray
        button.tag = 3
        return button
    }()
    
    private let threeButton : UIButton = {
        let button = UIButton()
        button.setTitle("3", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 40, weight: .semibold)
        button.backgroundColor = .lightGray
        button.tag = 4
        return button
    }()
    
    private let fourButton : UIButton = {
        let button = UIButton()
        button.setTitle("4", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 40, weight: .semibold)
        button.backgroundColor = .lightGray
        button.tag = 5
        return button
    }()
    
    private let fiveButton : UIButton = {
        let button = UIButton()
        button.setTitle("5", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 40, weight: .semibold)
        button.backgroundColor = .lightGray
        button.tag = 6
        return button
    }()
    
    private let sixButton : UIButton = {
        let button = UIButton()
        button.setTitle("6", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 40, weight: .semibold)
        button.backgroundColor = .lightGray
        button.tag = 7
        return button
    }()
    
    private let sevenButton : UIButton = {
        let button = UIButton()
        button.setTitle("7", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 40, weight: .semibold)
        button.backgroundColor = .lightGray
        button.tag = 8
        return button
    }()
    
    private let eightButton : UIButton = {
        let button = UIButton()
        button.setTitle("8", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 40, weight: .semibold)
        button.backgroundColor = .lightGray
        button.tag = 9
        return button
    }()
    
    private let nineButton : UIButton = {
        let button = UIButton()
        button.setTitle("9", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 40, weight: .semibold)
        button.backgroundColor = .lightGray
        button.tag = 10
        return button
    }()
    
    private let commaButton : UIButton = {
        let button = UIButton()
        button.setTitle(",", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 40, weight: .semibold)
        button.backgroundColor = .lightGray
        return button
    }()
    
    private let equalButton : UIButton = {
        let button = UIButton()
        button.setTitle("=", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 40, weight: .semibold)
        button.backgroundColor = .systemOrange
        button.tag = 6
        return button
    }()
    
    private let plusButton : UIButton = {
        let button = UIButton()
        button.setTitle("+", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 40, weight: .semibold)
        button.backgroundColor = .systemOrange
        button.tag = 2
        return button
    }()
    
    private let minusButton : UIButton = {
        let button = UIButton()
        button.setTitle("-", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 40, weight: .semibold)
        button.backgroundColor = .systemOrange
        button.tag = 3
        return button
    }()
    
    private let multiplyButton : UIButton = {
        let button = UIButton()
        button.setTitle("X", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 40, weight: .semibold)
        button.backgroundColor = .systemOrange
        button.tag = 4
        return button
    }()
    
    private let allClearButton : UIButton = {
        let button = UIButton()
        button.setTitle("AC", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 40, weight: .semibold)
        button.backgroundColor = .lightGray
        return button
    }()
    
    private let plusOrMinusButton : UIButton = {
        let button = UIButton()
        button.setTitle("+/-", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 40, weight: .semibold)
        button.backgroundColor = .lightGray
        return button
    }()
    
    private let percentButton : UIButton = {
        let button = UIButton()
        button.setTitle("%", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 40, weight: .semibold)
        button.backgroundColor = .lightGray
        return button
    }()
    
    private let divideButton : UIButton = {
        let button = UIButton()
        button.setTitle("÷", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 40, weight: .semibold)
        button.backgroundColor = .systemOrange
        button.tag = 5
        return button
    }()
    
    private var resultLabel : UILabel = {
        let label = UILabel()
        label.numberOfLines = 1
        label.minimumScaleFactor = 0.5
        label.text = "0"
        label.textColor = .white
        label.font = .systemFont(ofSize: 80, weight: .regular)
        label.textAlignment = .right
        label.adjustsFontSizeToFitWidth = true
        return label
    }()
    
    
    //Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setInitialUI()
        setTargetsToButtons()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        setNumberPad()
    }
    
    ///Sets initial UI
    private func setInitialUI() {
        //Background color of the main view
        view.backgroundColor = .black
        //Adding subviews
        view.addSubview(zeroButton)
        view.addSubview(commaButton)
        view.addSubview(equalButton)
        view.addSubview(oneButton)
        view.addSubview(twoButton)
        view.addSubview(threeButton)
        view.addSubview(plusButton)
        view.addSubview(fourButton)
        view.addSubview(fiveButton)
        view.addSubview(sixButton)
        view.addSubview(minusButton)
        view.addSubview(sevenButton)
        view.addSubview(eightButton)
        view.addSubview(nineButton)
        view.addSubview(multiplyButton)
        view.addSubview(allClearButton)
        view.addSubview(plusOrMinusButton)
        view.addSubview(percentButton)
        view.addSubview(divideButton)
        view.addSubview(resultLabel)
    }

    private func setNumberPad() {
        let buttonWidth = (holderView.width - 60) / 4
        let buttonHeight = holderView.height / 10
        //Frames of the buttons
        //Zero button
        zeroButton.frame = CGRect(x: 15,
                                  y: holderView.height - buttonHeight,
                                  width: buttonWidth * 2 + 10,
                                  height: buttonWidth)
        zeroButton.layer.cornerRadius = zeroButton.height / 2
        //Comma button
        commaButton.frame = CGRect(x: zeroButton.right + Constants().leftPadding,
                                   y: holderView.height - buttonHeight,
                                   width: buttonWidth,
                                   height: buttonWidth)
        commaButton.layer.cornerRadius = commaButton.height / 2
        //Equal Button
        equalButton.frame = CGRect(x: commaButton.right + Constants().leftPadding,
                                   y: holderView.height - buttonHeight,
                                   width: buttonWidth,
                                   height: buttonWidth)
        equalButton.layer.cornerRadius = equalButton.height / 2
        //One Button
        oneButton.frame = CGRect(x: 15,
                                  y: holderView.height - buttonHeight * 2 - 20,
                                  width: buttonWidth,
                                  height: buttonWidth)
        oneButton.layer.cornerRadius = zeroButton.height / 2
        //Two button
        twoButton.frame = CGRect(x: oneButton.right + Constants().leftPadding,
                                  y: holderView.height - buttonHeight * 2 - 20,
                                  width: buttonWidth,
                                  height: buttonWidth)
        twoButton.layer.cornerRadius = zeroButton.height / 2
        //Three Button
        threeButton.frame = CGRect(x: twoButton.right + Constants().leftPadding,
                                  y: holderView.height - buttonHeight * 2 - 20,
                                  width: buttonWidth,
                                  height: buttonWidth)
        threeButton.layer.cornerRadius = zeroButton.height / 2
        //Plus Button
        plusButton.frame = CGRect(x: threeButton.right + Constants().leftPadding,
                                   y: holderView.height - buttonHeight * 2 - 20,
                                   width: buttonWidth,
                                   height: buttonWidth)
        plusButton.layer.cornerRadius = equalButton.height / 2
        //Four button
        fourButton.frame = CGRect(x: 15,
                                  y: holderView.height - buttonHeight * 3 - 40,
                                  width: buttonWidth,
                                  height: buttonWidth)
        fourButton.layer.cornerRadius = zeroButton.height / 2
        //Five Button
        fiveButton.frame = CGRect(x: fourButton.right + Constants().leftPadding,
                                  y: holderView.height - buttonHeight * 3 - 40,
                                  width: buttonWidth,
                                  height: buttonWidth)
        fiveButton.layer.cornerRadius = zeroButton.height / 2
        //Six Button
        sixButton.frame = CGRect(x: fiveButton.right + Constants().leftPadding,
                                  y: holderView.height - buttonHeight * 3 - 40,
                                  width: buttonWidth,
                                  height: buttonWidth)
        sixButton.layer.cornerRadius = zeroButton.height / 2
        //Minus Button
        minusButton.frame = CGRect(x: sixButton.right + Constants().leftPadding,
                                   y: holderView.height - buttonHeight * 3 - 40,
                                   width: buttonWidth,
                                   height: buttonWidth)
        minusButton.layer.cornerRadius = equalButton.height / 2
        //seven Button
        sevenButton.frame = CGRect(x: 15,
                                  y: holderView.height - buttonHeight * 4 - 60,
                                  width: buttonWidth,
                                  height: buttonWidth)
        sevenButton.layer.cornerRadius = zeroButton.height / 2
        //Eight button
        eightButton.frame = CGRect(x: sevenButton.right + Constants().leftPadding,
                                  y: holderView.height - buttonHeight * 4 - 60,
                                  width: buttonWidth,
                                  height: buttonWidth)
        eightButton.layer.cornerRadius = zeroButton.height / 2
        //Nine Button
        nineButton.frame = CGRect(x: eightButton.right + Constants().leftPadding,
                                  y: holderView.height - buttonHeight * 4 - 60,
                                  width: buttonWidth,
                                  height: buttonWidth)
        nineButton.layer.cornerRadius = zeroButton.height / 2
        //Multiply button
        multiplyButton.frame = CGRect(x: nineButton.right + Constants().leftPadding,
                                   y: holderView.height - buttonHeight * 4 - 60,
                                   width: buttonWidth,
                                   height: buttonWidth)
        multiplyButton.layer.cornerRadius = equalButton.height / 2
        //all clear Button
        allClearButton.frame = CGRect(x: 15,
                                  y: holderView.height - buttonHeight * 5 - 80,
                                  width: buttonWidth,
                                  height: buttonWidth)
        allClearButton.layer.cornerRadius = zeroButton.height / 2
        //plusOrMinus button
        plusOrMinusButton.frame = CGRect(x: allClearButton.right + Constants().leftPadding,
                                  y: holderView.height - buttonHeight * 5 - 80,
                                  width: buttonWidth,
                                  height: buttonWidth)
        plusOrMinusButton.layer.cornerRadius = zeroButton.height / 2
        //percent button
        percentButton.frame = CGRect(x: plusOrMinusButton.right + Constants().leftPadding,
                                  y: holderView.height - buttonHeight * 5 - 80,
                                  width: buttonWidth,
                                  height: buttonWidth)
        percentButton.layer.cornerRadius = zeroButton.height / 2
        //divide button
        divideButton.frame = CGRect(x: percentButton.right + Constants().leftPadding,
                                   y: holderView.height - buttonHeight * 5 - 80,
                                   width: buttonWidth,
                                   height: buttonWidth)
        divideButton.layer.cornerRadius = equalButton.height / 2
        //Frame of the result label
        resultLabel.frame = CGRect(x: 15, y: holderView.height - buttonHeight * 6 - 100, width: view.width - buttonWidth / 2, height: buttonHeight)
    }
    
    ///setsTargetsToButtons
    private func setTargetsToButtons() {
        allClearButton.addTarget(self, action: #selector(didTapAllClearButton), for: .touchUpInside)
        zeroButton.addTarget(self, action: #selector(numberIsPressed(_:)), for: .touchUpInside)
        oneButton.addTarget(self, action: #selector(numberIsPressed(_:)), for: .touchUpInside)
        twoButton.addTarget(self, action: #selector(numberIsPressed(_:)), for: .touchUpInside)
        threeButton.addTarget(self, action: #selector(numberIsPressed(_:)), for: .touchUpInside)
        fourButton.addTarget(self, action: #selector(numberIsPressed(_:)), for: .touchUpInside)
        fiveButton.addTarget(self, action: #selector(numberIsPressed(_:)), for: .touchUpInside)
        sixButton.addTarget(self, action: #selector(numberIsPressed(_:)), for: .touchUpInside)
        sevenButton.addTarget(self, action: #selector(numberIsPressed(_:)), for: .touchUpInside)
        eightButton.addTarget(self, action: #selector(numberIsPressed(_:)), for: .touchUpInside)
        nineButton.addTarget(self, action: #selector(numberIsPressed(_:)), for: .touchUpInside)
        plusButton.addTarget(self, action: #selector(operationIsPressed(_:)), for: .touchUpInside)
        minusButton.addTarget(self, action: #selector(operationIsPressed(_:)), for: .touchUpInside)
        multiplyButton.addTarget(self, action: #selector(operationIsPressed(_:)), for: .touchUpInside)
        divideButton.addTarget(self, action: #selector(operationIsPressed(_:)), for: .touchUpInside)
        equalButton.addTarget(self, action: #selector(operationIsPressed), for: .touchUpInside)
    }

    @objc private func didTapAllClearButton() {
        resultLabel.text = "0"
        currentOperation = nil
        firstNumber = 0
    }
    
    @objc private func zeroIsTapped() {
        if resultLabel.text != "0" {
            if let text = resultLabel.text {
                resultLabel.text = "\(text)\(0)"
            }
        }
    }
    
    @objc func numberIsPressed(_ sender: UIButton) {
        let tag = sender.tag - 1
        if resultLabel.text == "0" {
            resultLabel.text = "\(tag)"
        } else if let text = resultLabel.text {
            resultLabel.text = "\(text)\(tag)"
        }
    }
    
    @objc func operationIsPressed(_ sender: UIButton) {
        let tag = sender.tag - 1
        if let text = resultLabel.text, let value = Double(text), firstNumber == 0 {
            firstNumber = value
            resultLabel.text = "0"
        }
        
        if tag == 1 {
            currentOperation = .add
        } else if tag == 2 {
            currentOperation = .subtract
        } else if tag == 3 {
            currentOperation = .multiply
        } else if tag == 4 {
            currentOperation = .divide
        } else if tag == 5 {
            if let operation = currentOperation {
                var secondNumber: Double = 0
                if let text = resultLabel.text, let value = Double(text) {
                    secondNumber = value
                }
                switch operation {
                case .add:
                    let result = firstNumber + secondNumber
                    resultLabel.text = "\(result)"
                case .subtract:
                    let result = firstNumber - secondNumber
                    resultLabel.text = "\(result)"
                case .multiply:
                    let result = firstNumber * secondNumber
                    resultLabel.text = "\(result)"
                case .divide:
                    let result = firstNumber / secondNumber
                    resultLabel.text = "\(result)"
                }
            }
        }
        
        
    }

}
