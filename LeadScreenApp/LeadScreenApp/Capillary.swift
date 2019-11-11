//
//  ContentView.swift
//  LeadScreenApp
//
//  Created by Tyler Wellington on 11/1/19.
//  Copyright © 2019 Tyler Wellington, Matthew Schultz, and Megha Patel. All rights reserved.


import SwiftUI


struct Capillary: View {
    @State private var selection = 0
    
    init(){
            UITableView.appearance().tableFooterView = UIView()
    }
    var body: some View {
        
            VStack(spacing: 20){
                Text("\n")
                Text("Select the lead level result (ug/dL):")
                    .font(.subheadline)
                List{
                    NavigationLink(destination: LeadScreenView()){
                        Text("< 5 ug/dL")
                            .font(.body)
                    }
                    NavigationLink(destination: ExposureSurvey()){
                        Text("Venous Test")
                            .font(.body)
                    }
                   
                    
                } .navigationBarTitle(Text("Capillary sample"), displayMode: .inline)
                Text("*  Subsequently, Blood Lead Level frequently abbreviated BLL")
                
            }
            
        
        
    }
}

