//
//  ContentView.swift
//  LeadScreenApp
//
//  Created by Tyler Wellington on 11/1/19.
//  Copyright © 2019 Tyler Wellington, Matthew Schultz, and Megha Patel. All rights reserved.


import SwiftUI


struct Ven14: View {
    @State private var selection = 0
    
    init(){
            UITableView.appearance().tableFooterView = UIView()
    }
    var body: some View {
        ScrollView{
            VStack(spacing: 10){
                Text("").font(.headline)
                Text("AFTER CONFIRMED VENOUS TEST, all activities above AND:\n- Perform a Clinical Lead Exposure Assessment\n- Provide lead exposure risk reduction education\n- Consider the child at risk for developmental delays and behavior concerns and provide ongoing developmental surveillance with prompt referrals for developmental services if needed\n- Test all children who spend time in the home and refer pregnant women in the home for testing\n -Coordinate care with local or state health department including environmental education and management\n- Notify family of the need for follow-up venous testing on a periodic basis\n- Frequency of follow-up testing for children with previous blood lead level elevations are best guided through consultation with a Regional Lead Resource Center")
                    .font(.subheadline)
                Button(action: {

                    UIApplication.shared.openURL(URL(string: "www.health.ny.gov/publications/2526.pdf")!)
                }) {
                Text("What Your Child’s Blood Lead Test Means").font(.subheadline)
                }
                Button(action: {

                    UIApplication.shared.openURL(URL(string: "www.health.ny.gov/publications/2594.pdf")!)
                }) {
                Text("Lead Poisoning is a Danger for Every Baby and Child").font(.subheadline)
                }
                Button(action: {

                    UIApplication.shared.openURL(URL(string: "www.health.ny.gov/environmental/lead")!)
                }) {
                Text("NYSDOH Website").font(.subheadline)
                }
                Button(action: {

                    UIApplication.shared.openURL(URL(string: "www.health.ny.gov/environmental/lead/resource_centers.htm.")!)
                }) {
                Text("Regional Lead Resource Center").font(.subheadline)
                }
                    
                } .navigationBarTitle(Text("Venous: 5-14 ug/dL"), displayMode: .inline).padding()
            
        }
        
        
    }
}

