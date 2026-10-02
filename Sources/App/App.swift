import Hummingbird

/// The health payload every board's GET /health returns.
struct HealthResponse: ResponseEncodable {
    let status: String
}

/// Builds the router. Kept separate from `main` so tests can drive it without a live server.
func buildRouter() -> Router<BasicRequestContext> {
    let router = Router()
    router.get("health") { _, _ -> HealthResponse in
        HealthResponse(status: "ok")
    }
    return router
}

/// Builds the application on 127.0.0.1:8080.
func buildApplication() -> some ApplicationProtocol {
    Application(
        router: buildRouter(),
        configuration: .init(address: .hostname("127.0.0.1", port: 8080))
    )
}

@main
struct App {
    static func main() async throws {
        try await buildApplication().runService()
    }
}
