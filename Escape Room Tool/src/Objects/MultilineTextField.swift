//
//  MultilineTextField.swift
//  Escape Room Tool
//
//  Created by Eric Schulze on 5/20/20.
//  Copyright © 2020 WE Develop. All rights reserved.
//

import SwiftUI
import os

class  EditorCoordinator : NSObject, NSTextViewDelegate {
    let textView: NSTextView;
    let scrollView : NSScrollView
    let text : Binding<NSAttributedString>

    init(binding: Binding<NSAttributedString>, disabled: Bool) {
        print("init EditorCoordinator; disabled: \(disabled)")
        text = binding

        textView = NSTextView(frame: .zero)
        textView.autoresizingMask = [.height, .width]
        textView.textStorage?.setAttributedString(text.wrappedValue)
        textView.textContainerInset = NSSize(width: 3, height: 5)
        textView.isSelectable = !disabled
        textView.isEditable = !disabled
        textView.textColor = !disabled ? NSColor.init(red: 217/255, green: 217/255, blue: 217/255, alpha: 1) : NSColor.init(red: 143/255, green: 143/255, blue: 148/255, alpha: 1)
        textView.backgroundColor = !disabled ? NSColor.init(red: 45/255, green: 46/255, blue: 46/255, alpha: 1) : NSColor.init(red: 42/255, green: 42/255, blue: 42/255, alpha: 1)

        scrollView = NSScrollView(frame: .zero)
        scrollView.hasVerticalScroller = true
        scrollView.autohidesScrollers = false
        scrollView.autoresizingMask = [.height, .width]
        scrollView.documentView = textView

        super.init()
        textView.delegate = self
    }
    
    func setEnabled(enabled: Bool){
        textView.isSelectable = enabled
        textView.isEditable = enabled
        textView.textColor = enabled ? NSColor.init(red: 217/255, green: 217/255, blue: 217/255, alpha: 1) : NSColor.init(red: 143/255, green: 143/255, blue: 148/255, alpha: 1)
        textView.backgroundColor = enabled ? NSColor.init(red: 60/255, green: 60/255, blue: 60/255, alpha: 1) : NSColor.init(red: 55/255, green: 55/255, blue: 55/255, alpha: 1)
        
    }

  func textDidChange(_ notification: Notification) {
    switch  notification.name {
    case NSText.didChangeNotification :
        text.wrappedValue = (notification.object as? NSTextView)?.textStorage ?? NSAttributedString(string: "")
    default:
        print("Default")
    }
  }

}

struct MutliLineTextField: View, NSViewRepresentable {
    typealias Coordinator = EditorCoordinator
    typealias NSViewType = NSScrollView

    var text : Binding<NSAttributedString>
    var disabled: Binding<Bool>
    
    init(text: Binding<NSAttributedString>, disabled: Binding<Bool> = Binding.constant(false)){
        self.disabled = disabled
        self.text = text
    }

    func makeNSView(context: NSViewRepresentableContext<MutliLineTextField>) -> MutliLineTextField.NSViewType {
        return context.coordinator.scrollView
    }

    func updateNSView(_ nsView: NSScrollView, context: NSViewRepresentableContext<MutliLineTextField>) {
        
        context.coordinator.setEnabled(enabled: disabled.wrappedValue)
    }

    func makeCoordinator() -> EditorCoordinator {
        let coordinator =  EditorCoordinator(binding: text, disabled: disabled.wrappedValue)
        return coordinator
    }
}

struct MutliLineTextField_Previews: PreviewProvider {
    static var previews: some View {
        MutliLineTextField(text: Binding.constant(NSMutableAttributedString(string: "")), disabled: Binding.constant(false))
    }
}
