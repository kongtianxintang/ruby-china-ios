//
//  NotFoundView.swift
//  RubyChina
//
//  Created by Jianqiu Xiao on 2018/3/23.
//  Copyright © 2018 Jianqiu Xiao. All rights reserved.
//

import UIKit

class NotFoundView: UIStackView {

    public  var textLabel: UILabel!

    override init(frame: CGRect) {
        super.init(frame: frame)

        alignment = .center

        isHidden = true

        textLabel = UILabel()
        textLabel.font = .preferredFont(forTextStyle: .title1)
        textLabel.textColor = .lightGray
        addArrangedSubview(textLabel)
    }

    @available(*, unavailable)
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func didMoveToSuperview() {
        super.didMoveToSuperview()

        if let superview = self.superview {
            snp.makeConstraints { $0.center.equalTo(superview.safeAreaLayoutGuide) }
        }
    }
}
