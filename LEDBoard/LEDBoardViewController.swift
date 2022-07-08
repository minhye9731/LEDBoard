//
//  BoardViewController.swift
//  LEDBoard
//
//  Created by 강민혜 on 7/6/22.
//

import UIKit

class LEDBoardViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var userTextField: UITextField!
    @IBOutlet weak var textColorButton: UIButton!
    @IBOutlet weak var sendButton: UIButton!
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBOutlet weak var searchView: UIView!
    
    @IBOutlet var buttonList: [UIButton]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultLabel.numberOfLines = 0 // 여러줄로 나오도록 라인설정
        designTextField()
        designButton(sendButton, buttonTitle: "전소옹~", HightlightedTitle: "빨리보내앵~", bgColor: .yellow)
        designButton(textColorButton, buttonTitle: "버튼색상", HightlightedTitle: "색상적용햇", bgColor: .white)
        studyOutletCollection()
        
        userTextField.delegate = self
    }
    
    // MARK: - TextField 설정
    func designTextField() {
        userTextField.placeholder = "내용을 작성해주세요."
        userTextField.text = "안녕하세요"
        userTextField.keyboardType = .emailAddress
        userTextField.font = .systemFont(ofSize: 15)
        userTextField.borderStyle = .none
        userTextField.textColor = .blue
        userTextField.returnKeyType = .done
    }
    
    // MARK: - TextField에서 엔터키 누르면 키보드 내려가는 액션 설정
    
    @IBAction func didEndOnExit(_ sender: UITextField) {
        print("엔터키 누르면 키보드가 내려갑니다.")
    }
    
    
    // buttonOutletVariableName: 외부 매개변수, Argument Label
    // buttonName: 내부 매개변수, Parameter Name
    // _ : 와일드 카드 식별자
    func designButton(_ buttonName: UIButton, buttonTitle: String, HightlightedTitle: String, bgColor: UIColor) {
        buttonName.setTitle(buttonTitle, for: .normal)
        buttonName.setTitle(HightlightedTitle, for: .highlighted)
        buttonName.backgroundColor = bgColor
        buttonName.layer.cornerRadius = 8
        buttonName.layer.borderColor = UIColor.black.cgColor
        buttonName.layer.borderWidth = 3
        buttonName.setTitleColor(.red, for: .normal)
        buttonName.setTitleColor(.blue, for: .highlighted)
    }
    
    func studyOutletCollection() {
        // 1. 반복문
        let buttonArray: [UIButton] = [sendButton, textColorButton]
        // 상수의 타입 어노테이션을 통해 옵셔널 값을 없애줄 수 있음
        
        for item in buttonArray {
            item.backgroundColor = .blue
            item.layer.cornerRadius = 2
        }
        
        // 2. 아웃렛 컬렉션
        for item in buttonArray {
            item.backgroundColor = .blue
            item.layer.cornerRadius = 2
        }
    }
    
    @IBAction func tapGestureClicked(_ sender: UITapGestureRecognizer) {
        // 키보드 내리기 (여기서 view는 제스쳐를 설정해준 view)
        view.endEditing(true)
        
        // view의 숨김여부에 따른 view 표기여부 toggle 로직
        if (searchView.isHidden == true) {
            searchView.isHidden = false
        } else {
            searchView.isHidden = true
        }
    }
    
    @IBAction func sendButtonTapped(_ sender: UIButton) {
        // print(userTextField.text?.count)
        // 옵셔널을 판단해야 하는 상황이 생기면 자동으로 ?가 붙음 -> 옵셔널 체이닝의 예시
        
        // print(sendButton.currentTitle)
        // currenttitle, currentimage의 값은 다 타입이 옵셔널이다. 왜일까?
        // 타이틀이나 이미지 등이 없는 버튼일 수도 있어서
        // 타이틀의 경우, 클릭했을 떄의 타이틀을 보냄(highlighted)
        
        resultLabel.text = userTextField.text
    }
    
    
    
    // 연결관계 다 끊어보고 Any
    // 타입에 상관없이 다 같은 기능을 할 때 만들어서 연결 가능
    @IBAction func keyboardDismiss(_ sender: Any) {
        
    }



}
