//
//  OrderView.swift
//  iDine
//
//  Created by Triumph on 08/12/2022.
//

import SwiftUI

struct OrderView: View {
    @EnvironmentObject var order: Order

    var body: some View {
        List {
            Section {
                ForEach(order.items) { item in
                    HStack {
                        Text(item.name)
                        Spacer()
                        Text("£\(item.price)")
                    }
                }
            }
            Section {
                NavigationLink("Place Order") {
                    Text("Check out")
                }
            }
        }
    }
}

struct OrderView_Previews: PreviewProvider {
    static var previews: some View {
        OrderView()
            .environmentObject(Order())
    }
}
