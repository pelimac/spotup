//
//  MapView.swift
//  MAPTEST
//
//  Created by Oscar Bruno on 12/14/23.
//

import Foundation
import SwiftUI
import UIKit
import TomTomSDKMapDisplay

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Set your API key
        MapsDisplayService.apiKey = "pWI7Dr5DVGpMawBMYfHLy30i9lcG16m0"

        // Create a MapView instance
        let mapView = MapView()

        // Add MapView to the view hierarchy
        view.addSubview(mapView)
        
        mapView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            view.leftAnchor.constraint(equalTo: mapView.leftAnchor),
            view.rightAnchor.constraint(equalTo: mapView.rightAnchor),
            view.topAnchor.constraint(equalTo: mapView.topAnchor),
            view.bottomAnchor.constraint(equalTo: mapView.bottomAnchor),
        ])
    }
}

struct ViewControllerWrapper: UIViewControllerRepresentable {
    func makeUIViewController(context: Context) -> ViewController {
        let viewController = ViewController()
        return viewController
    }

    func updateUIViewController(_ uiViewController: ViewController, context: Context) {
        // Update UI if needed
    }
}

