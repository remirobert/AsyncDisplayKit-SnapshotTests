//
//  TextNode.swift
//  AsyncDisplayKit-SnapshotTests
//
//  Created by Remi Robert on 31/08/2017.
//  Copyright © 2017 CocoaPods. All rights reserved.
//

import AsyncDisplayKit

class TextNode: ASDisplayNode {
    fileprivate let textNode: ASTextNode

    init(text: String) {
        textNode = ASTextNode()
        textNode.attributedText = NSAttributedString(string: text)
        super.init()
        setupViews()
        setupHierarchy()
    }

    private func setupViews() {
        backgroundColor = UIColor.white
    }

    private func setupHierarchy() {
        addSubnode(textNode)
    }
}

extension TextNode {
    override func layoutSpecThatFits(_ constrainedSize: ASSizeRange) -> ASLayoutSpec {
        let insets = UIEdgeInsets(top: 5, left: 5, bottom: 5, right: 5)
        return ASInsetLayoutSpec(insets: insets, child: textNode)
    }
}
