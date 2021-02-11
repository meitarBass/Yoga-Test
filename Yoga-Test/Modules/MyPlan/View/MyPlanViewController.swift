//
//  MyPlanViewController.swift
//  Yoga-Test
//
//  Created by Meitar Basson on 11/02/2021.
//

import UIKit

class MyPlanViewController: BaseViewController {
    
    var presenter: MyPlanPresenterProtocol?
    
    private lazy var bgImage: UIImageView = {
        let imageView = UIImageView(frame: .zero)
        imageView.image = #imageLiteral(resourceName: "chapter1_bg")
        return imageView
    }()
    
    private lazy var myPlanLabel: UILabel = {
        let label = UILabel(frame: .zero)
        label.text = "My Plan"
        label.textAlignment = .center
        label.font = UIFont(name: "Avenir-Heavy", size: 16)
        return label
    }()
    
    private lazy var lineView: UIView = {
        let view = UIView(frame: .zero)
        view.backgroundColor = .black
        view.snp.makeConstraints { (make) in
            make.height.equalTo(2)
        }
        return view
    }()
    
    private lazy var chapterLabel: UILabel = {
        let label = UILabel(frame: .zero)
        label.text = "Chapter 1"
        label.textAlignment = .center
        label.font = UIFont(name: "Avenir-Book", size: 16)
        return label
    }()
    
    private lazy var mantraLabel: UILabel = {
        let label = UILabel(frame: .zero)
        label.text = "Sun Salutation Variation"
        label.textAlignment = .center
        label.font = UIFont(name: "Avenir-Heavy", size: 16)
        label.numberOfLines = 2
        return label
    }()
    
    private lazy var labelStack: UIStackView = {
       let stackView = UIStackView(arrangedSubviews:
                                    [myPlanLabel,
                                    lineView,
                                    chapterLabel,
                                    mantraLabel])
        stackView.distribution = .fill
        stackView.spacing = 4
        stackView.axis = .vertical
        return stackView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupUI()
        
        presenter?.viewDidLoad()
    }
    
    override func setupUI() {
        super.setupUI()
        addSubviews()
        makeConstraints()
    }
    
    override func addSubviews() {
        super.addSubviews()
        self.view.addSubview(bgImage)
        self.view.addSubview(labelStack)
    }
    
    override func makeConstraints() {
        super.makeConstraints()
        bgImage.snp.makeConstraints { (make) in
            make.top.bottom.leading.trailing.equalToSuperview()
        }
        
        labelStack.snp.makeConstraints { (make) in
            make.top.equalTo(self.view.safeAreaLayoutGuide.snp.topMargin).inset(36)
            make.centerX.equalToSuperview()
            make.width.equalToSuperview().multipliedBy(0.3)
        }
        
        lineView.snp.makeConstraints { (make) in
            make.width.equalTo(myPlanLabel.snp.width)
        }
        
        chapterLabel.snp.makeConstraints { (make) in
            make.width.equalTo(myPlanLabel.snp.width)
        }
        
        mantraLabel.snp.makeConstraints { (make) in
            make.width.equalTo(myPlanLabel.snp.width)
        }
    }
}

extension MyPlanViewController: MyPlanViewInput {

}
