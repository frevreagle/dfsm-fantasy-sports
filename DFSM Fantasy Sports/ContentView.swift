//
//  ContentView.swift
//  DFSM Fantasy Sports
//
//  Created by Dawks on 1/9/25.
//

import SwiftUI
import UIKit
import WebKit

struct WebView: UIViewRepresentable {
    let url: URL
    
    func makeUIView(context: Context) -> WKWebView {
        let webConfig = WKWebViewConfiguration()
        let wkwebView = WKWebView(frame: .zero, configuration: webConfig)
        let request = URLRequest(url: url)
        wkwebView.scrollView.backgroundColor = UIColor.black
        wkwebView.scrollView.contentInsetAdjustmentBehavior = .never
        
        wkwebView.load(request)
        return wkwebView
    }
    func updateUIView(_ uiView: WKWebView, context: Context) {
        
    }
    
    
}

struct ContentView: View {
    var body: some View {
        WebView(url: URL(string: "https://player.dfs-mafia.com")!)
            .edgesIgnoringSafeArea(.all)
        
        
        }
}

#Preview {
    ContentView()
}
