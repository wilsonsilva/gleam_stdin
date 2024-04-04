import gleeunit
import gleeunit/should
import mockth
import app

pub fn main() {
  gleeunit.main()
}

pub fn meet_and_greet_test() {
  let assert Ok(_) = mockth.expect("erlang", "get_line", fn(_) { Ok("Wilson") })

  mockth.validate("erlang@get_line")
  |> should.equal(True)

  app.meet_and_greet()

  // Assuming you have a way to capture or check the output, you would add assertions here
  // For example, asserting that "Hello, Alice" was printed to stdout

  mockth.unload_all()
}
