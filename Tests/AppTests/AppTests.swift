import HummingbirdTesting
import XCTest

@testable import App

final class AppTests: XCTestCase {
    func testHealthReturnsOK() async throws {
        let app = buildApplication()
        try await app.test(.router) { client in
            try await client.execute(uri: "/health", method: .get) { response in
                XCTAssertEqual(response.status, .ok)
                XCTAssertTrue(String(buffer: response.body).contains("ok"))
            }
        }
    }
}
