//
//  ViewController.swift
//  LoginProject
//
//  Created by 김서연 on 2023/08/05.
//

// 코드로 모든 ui 제작

import UIKit

class ViewController: UIViewController {
    
    let emailTextFieldView: UIView = { //클로저 방식으로 생성
        let view = UIView()
        view.backgroundColor = UIColor.darkGray
        //뷰 모서리를 둥글게
        view.layer.cornerRadius = 8
        view.layer.masksToBounds = true
        return view
    }()   //메모리에 올라감
    let passwordTextFieldView = UIView()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        makeUI()
    }

    func makeUI(){
        passwordTextFieldView.backgroundColor = UIColor.darkGray
        
        // 뷰에 보여져야 함
        view.addSubview(emailTextFieldView) // 뷰의 하위 뷰로 emailTextFieldView가 설정 됨
        
        // 코드로 짠 view는 자동으로 frame 기준으로 오토레이아웃을 잡음
        // 그 기능을 끔
        emailTextFieldView.translatesAutoresizingMaskIntoConstraints = false
        
        // 오토레이아웃 설정
        emailTextFieldView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30.0).isActive = true    //왼쪽
        emailTextFieldView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30.0).isActive = true   //오른쪽
        emailTextFieldView.topAnchor.constraint(equalTo: view.topAnchor, constant: 200.0).isActive = true    // 위쪽
        emailTextFieldView.heightAnchor.constraint(equalToConstant: 40).isActive = true //높이
    }

}

