//
//  CheckoutView.swift
//  iDine
//
//  Created by Richard de Borja on 2019-10-16.
//  Copyright © 2019 Richard de Borja. All rights reserved.
//

import SwiftUI

struct CheckoutView: View {
    // @EnvironmentObject happens for external objects
    @EnvironmentObject var order: Order
    
    static let paymentTypes = ["Cash", "Credit Card", "iDine"]
    
    // Use @State for internal variables, is set to Cash by default
    @State private var paymentType = 0
    
    var body: some View {
        VStack {
            Section {
                Picker("How do you want to pay?", selection: $paymentType) {
                    ForEach(0 ..< Self.paymentTypes.count) {
                        Text(Self.paymentTypes[$0])
                    }
                }
            }
        }
        .navigationBarTitle(Text("Payment"), displayMode: .inline)
    }
}

struct CheckoutView_Previews: PreviewProvider {
    static let order = Order()
    
    static var previews: some View {
        CheckoutView().environmentObject(order)
    }
}
