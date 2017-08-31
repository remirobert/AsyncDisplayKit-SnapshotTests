import UIKit
import XCTest
import AsyncDisplayKitSnapshotTests
import FBSnapshotTestCase

class Tests: FBSnapshotTestCase {
    override func setUp() {
        super.setUp()
        recordMode = true
    }

    func testWithUnlimitedSize() {
        let node = TextNode(text: "If you support iOS 7 use FBSnapshotTestCase/Core instead")
        let textNode = node.testNode()
        FBSnapshotVerifyView(textNode.view)
    }

    func testWithFixWidth() {
        let node = TextNode(text: "A snapshot test case takes a configured UIView or CALayer and uses the renderInContext: method to get an image snapshot of its contents. It compares this snapshot to a reference image stored in your source code repository and fails the test if the two images don't match.")
        let textNode = node.testNode(sizeRange: CGSize(width: 100, height: CGFloat.infinity))

        FBSnapshotVerifyView(textNode.view)
    }

    func testWithFixedHeight() {
        let node = TextNode(text: "It's straightforward to test logic code, but less obvious how you should test views. You can do a lot of rectangle asserts, but these are hard to understand or visualize. Looking at an image diff shows you exactly what changed and how it will look to users.")
        let textNode = node.testNode(sizeRange: CGSize(width: CGFloat.infinity, height: 50))

        FBSnapshotVerifyView(textNode.view)
    }

    func testWithDeviceSize() {
        let node = TextNode(text: "Your unit test must be an application test, not a logic test. (That is, it must be run within the Simulator so that it has access to UIKit.) In Xcode 5 and later new projects only offer application tests, but older projects will have separate targets for the two types.")
        let textNode = node.testNode(sizeRange: CGSize.phone4_7inch)

        FBSnapshotVerifyView(textNode.view)
    }
}
