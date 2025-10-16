//
//  ContentView.swift
//  BRI-TransactionsList
//
//  Created by Salma Ayuningtyas on 10/15/25.
//

import SwiftUI

struct ContentView: View {
    @State private var isExpanded : Bool = false
    
    //🍃property
    let listTransactionHistory: [HistoryTransactionModel] = [HistoryTransactionModel(paymentMethod: "Kartu Debit BRI", cardNumber: "6024294***451", totalTransaction: "Rp 100.000", dateTransaction: "21 Nov 2025", timeTransaction: "23:01:00", statusTransaction: "Purchase"), HistoryTransactionModel(paymentMethod: "Brizi", cardNumber: "8784294***32", totalTransaction: "Rp 250.000", dateTransaction: "01 Des 2025", timeTransaction: "01:00:22", statusTransaction: "Purchase")]
    
    
    var body: some View {
        
        VStack {
            HStack {
                Image("Card")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100)
                VStack{
                    Text("Bakso Mat solar cabang 1")
                    
                    HStack{
                        Text("Rp 1.000.000.000")
                            .padding(.trailing, 50)
                        Text ("1200 Transaksi")
                    }
                }
                
            }
            
            DisclosureGroup("", isExpanded: $isExpanded) {
                HStack{
                    Text("EDC. 123456")
                        .padding(.trailing, 150)
                    
                    Text ("Ubah Outlet")
                }
            }
        }
        
        //📋 list transactions
        List(listTransactionHistory) { listsHistory in
                HStack {
                    VStack(alignment: .center) {
                        Image("Card")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 100, height: 100)
                    }
                    
                    VStack(alignment: .leading) {
                        Text(listTransactionHistory[0].paymentMethod)
                        Text(listTransactionHistory[0].cardNumber)
                        Text(listTransactionHistory[0].totalTransaction)
                        
                    }
                    .padding()
                    
                    VStack(alignment: .trailing) {
                        Text(listTransactionHistory[0].dateTransaction)
                        Text(listTransactionHistory[0].timeTransaction)
                        Text(listTransactionHistory[0].statusTransaction)
                            .bold()
                            .foregroundStyle(.green)
                    }
                }
                
                HStack {
                    VStack(alignment: .center) {
                        Image("Card")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 100, height: 100)
                    }
                    
                    VStack(alignment: .leading) {
                        Text(listTransactionHistory[1].paymentMethod)
                        Text(listTransactionHistory[1].cardNumber)
                        Text(listTransactionHistory[1].totalTransaction)
                        
                    }
                    .padding()
                    
                    VStack(alignment: .trailing) {
                        Text(listTransactionHistory[1].dateTransaction)
                        Text(listTransactionHistory[1].timeTransaction)
                        Text(listTransactionHistory[1].statusTransaction)
                            .bold()
                            .foregroundStyle(.green)
                    }
                }
            }
        }
    }

#Preview {
    ContentView()
}
