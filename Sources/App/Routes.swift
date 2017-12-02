import Vapor

final class Routes: RouteCollection {
    let view: ViewRenderer
    init(_ view: ViewRenderer) {
        self.view = view
    }

    func build(_ builder: RouteBuilder) throws {
        /// GET /
        builder.get { req in
            return try self.view.make("welcome")
        }

        builder.get("layout") { (req: Request) -> ResponseRepresentable in
            return try self.view.make("layout")
        }
        builder.get("alerts") { (req: Request) -> ResponseRepresentable in
            return try self.view.make("alerts")
        }
        builder.get("buttons") { (req: Request) -> ResponseRepresentable in
            return try self.view.make("buttons")
        }
        builder.get("button_group") { (req: Request) -> ResponseRepresentable in
            return try self.view.make("button_group")
        }


    }
}
