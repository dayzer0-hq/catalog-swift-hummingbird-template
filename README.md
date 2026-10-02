# Swift + Hummingbird starter

A minimal [Hummingbird 2](https://github.com/hummingbird-project/hummingbird) service used as the
DayZer0 catalog starter for Swift backend briefs. It is the clone-and-build starting point: the
package, Hummingbird and a health route already exist, so your first ticket builds a feature on top.

## What's here

- `Package.swift` — Hummingbird 2.x pinned.
- `Sources/App/App.swift` — a `Router` with `GET /health` returning `{"status":"ok"}`, served on `127.0.0.1:8080`.
- `Tests/AppTests/AppTests.swift` — one test that drives the router and asserts `/health` is `200`.

## Run it

Requires Swift 5.9+ (or Xcode on macOS).

```bash
swift build          # resolve Hummingbird and compile
swift test           # the /health test passes
swift run            # starts the server on http://127.0.0.1:8080
```

With the server running:

```bash
curl http://127.0.0.1:8080/health   # -> {"status":"ok"}
```
