# AsyncDisplayKit-SnapshotTests
ASDisplayNode extension, for generating a test node, to perform snapshot testing with AsyncDisplayKit (Texture) easily.

```Swift
    func testWithFixWidth() {
        let node = TextNode(text: "A snapshot test case.")
        
        //create a test node. 
        //The child node, will automatically fits to the layout, corresponding to the size passed.
        let textNode = node.testNode(sizeRange: CGSize(width: 100, height: CGFloat.infinity))
        
        //verify your view
        FBSnapshotVerifyView(textNode.view)
    }
```
