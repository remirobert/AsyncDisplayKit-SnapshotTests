//
//  ASDisplayNodeSnapshots.swift
//  TwitterStream
//
//  Created by Remi Robert on 12/08/2017.
//  Copyright © 2017 Remi Robert. All rights reserved.
//

import AsyncDisplayKit

extension CGSize {
    public static var infinity: CGSize {
        return CGSize(width: Double.infinity, height: Double.infinity)
    }

    public static var phone3_5inch: CGSize {
        return CGSize(width: 320, height: 480)
    }

    public static var phone4inch: CGSize {
        return CGSize(width: 320, height: 568)
    }

    public static var phone4_7inch: CGSize {
        return CGSize(width: 375, height: 667)
    }

    public static var phone5_5inch: CGSize {
        return CGSize(width: 414, height: 736)
    }

    public static var pad: CGSize {
        return CGSize(width: 768, height: 1024)
    }

    public static var pad12_9inch: CGSize {
        return CGSize(width: 1024, height: 1366)
    }
}

public extension ASDisplayNode {
    public func testNode(sizeRange: CGSize = CGSize.infinity) -> ASDisplayNode {
        let node = ASDisplayNode()
        node.automaticallyManagesSubnodes = true
        node.addSubnode(self)
        node.backgroundColor = UIColor.black
        node.layoutSpecBlock = { node, constrainedSize in
            let edgeInsetLaout = UIEdgeInsets(top: 5, left: 5, bottom: 5, right: 5)
            return ASInsetLayoutSpec(insets: edgeInsetLaout, child: self)
        }
        let sizeRange = ASSizeRangeMake(CGSize.zero, sizeRange)
        let fitsSize = node.layoutThatFits(sizeRange).size
        node.bounds = CGRect(origin: CGPoint.zero, size: fitsSize)

        ASDisplayNodePerformBlockOnEveryNode(nil, node, true) { node in
            node.layer.setNeedsDisplay()
        }
        node.recursivelyEnsureDisplaySynchronously(true)
        return node
    }
}
