//
//  SessionCollectionViewCell.swift
//  Yoga-Test
//
//  Created by Meitar Basson on 11/02/2021.
//

import UIKit
import SnapKit


struct SessionCellViewModel {
    let session: Array?
}

class MyPlanCollectionViewCell: UICollectionViewCell {
    
    var viewModel: SessionCellViewModel? {
        didSet {
            guard let viewModel = viewModel, let session = viewModel.session else { return }
            titleLabel.text = "2"
            timeLabel.text = "\(session.length)"
            levelLabel.text = session.difficulty
            quote.text = session.quote
            quoteAuthor.text = session.quoteAuthor
            
            switch session.difficulty {
            case "Easy":
                expertyLevelImage.image = #imageLiteral(resourceName: "intensity_1_dark")
            case "Medium":
                expertyLevelImage.image = #imageLiteral(resourceName: "intensity_2_dark")
            case "Hard":
                expertyLevelImage.image = #imageLiteral(resourceName: "intensity_3_dark")
            default:
                break
            }
        }
    }
    
    private lazy var titleLabel: UILabel = {
        let label = UILabel(frame: .zero)
        return label
    }()
    
    private lazy var border: UIView = {
        let view = UIView(frame: .zero)
        view.backgroundColor = #colorLiteral(red: 0.7540688515, green: 0.7540867925, blue: 0.7540771365, alpha: 1)
        view.snp.makeConstraints { (make) in
            make.height.equalTo(1)
        }
        return view
    }()
    
    private lazy var clockImage: UIImageView = {
        let imageView = UIImageView(frame: .zero)
        imageView.image = #imageLiteral(resourceName: "session_duration")
        return imageView
    }()
    
    private lazy var timeLabel: UILabel = {
        let label = UILabel(frame: .zero)
        return label
    }()
    
    private lazy var expertyLevelImage: UIImageView = {
        let imageView = UIImageView(frame: .zero)
        return imageView
    }()
    
    private lazy var levelLabel: UILabel = {
        let label = UILabel(frame: .zero)
        return label
    }()
    
    private lazy var infoStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews:
                                     [clockImage,
                                     timeLabel,
                                     expertyLevelImage,
                                     levelLabel])
         stackView.distribution = .fill
         stackView.spacing = 2
         stackView.axis = .horizontal
         return stackView
    }()
    
    private lazy var quote: UILabel = {
        let label = UILabel(frame: .zero)
        return label
    }()
    
    private lazy var quoteAuthor: UILabel = {
        let label = UILabel(frame: .zero)
        return label
    }()
    
    private lazy var quoteStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews:
                                     [quote,
                                      quoteAuthor])
         stackView.distribution = .fill
         stackView.spacing = 4
         stackView.axis = .vertical
         return stackView
    }()
    
    private lazy var button: UIButton = {
        let button = UIButton(frame: .zero)
        return button
    }()
    
    private lazy var mainStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews:
                                     [titleLabel,
                                      border,
                                     infoStackView,
                                     quoteStackView,
                                     button])
         stackView.distribution = .fill
         stackView.spacing = 6
         stackView.axis = .vertical
         return stackView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUpUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setUpUI() {
        addSubviews()
        makeConstraints()
    }
    
    private func addSubviews() {
        self.contentView.addSubview(mainStackView)
    }
    
    private func makeConstraints() {
        mainStackView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }
    
}
