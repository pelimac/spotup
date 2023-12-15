//
//  ContentView.swift
//  MAPTEST
//
//  Created by Oscar Bruno on 12/14/23.
//

import SwiftUI
import TomTomSDKMapDisplay



struct ContentView: View {
    var body: some View {
        NavigationView{
            //destination is to the map class wrapper 
            NavigationLink(destination: ViewControllerWrapper()){
                VStack {
                    
                    Image(systemName: "globe")
                        .imageScale(.large)
                        .foregroundStyle(.tint)
                    Text("Hello, world!")
                } // end vstack
                .padding()
           } // end navlink
            
            
        } // end NavigationView
       
    } // end view
} // end contentview

#Preview {
    ContentView()
}
