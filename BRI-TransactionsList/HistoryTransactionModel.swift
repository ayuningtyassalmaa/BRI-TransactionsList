//
//  HistoryTransactionModel.swift
//  BRI-TransactionsList
//
//  Created by Salma Ayuningtyas on 10/16/25.
//

import Foundation

struct HistoryTransactionModel: Identifiable {
    let id = UUID()
    let paymentMethod, cardNumber, totalTransaction, dateTransaction, timeTransaction,statusTransaction: String
}
