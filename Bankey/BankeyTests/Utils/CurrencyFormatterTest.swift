//
//  CurrencyFormatterTest.swift
//  BankeyTests
//
//  Created by Avanade on 06/04/22.
//

import XCTest
@testable import Bankey

class Test: XCTestCase {
    
    var formatter: CurrencyFormatter!
    
    override func setUp() {
        super.setUp()
        formatter = CurrencyFormatter()

    }
    
    func test_break_dollars_into_cents() throws {
        let result = formatter.breakIntoDollarsAndCents(929466.23)
        XCTAssertEqual(result.0, "929,466")
        XCTAssertEqual(result.1, "23")
    }
 
    func test_dollars_formatted() throws {
        let result = formatter.dollarsFormatted(929466.23)
        XCTAssertEqual(result, "$929,466.23")
    }
    
    func test_zero_dollars_formatted() throws {
        let result = formatter.dollarsFormatted(000000)
        XCTAssertEqual(result, "$0.00")
    }
    
    func test_dollars_formatted_with_currency_symbol() throws {
        let locale = Locale(identifier: "en_US")
        let currencySymbol = locale.currencySymbol!
        
        let result = formatter.dollarsFormatted(929466.23)
        XCTAssertEqual(result, "\(currencySymbol)929,466.23")
    }
}
