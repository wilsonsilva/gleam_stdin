import gleam/erlang
import gleam/io

pub fn main() {
  let input = erlang.get_line("Enter your name: ")

  case input {
    Ok(name) -> io.println("Hello, " <> name)
    Error(_) -> io.println("Error reading from STDIN")
  }
}
