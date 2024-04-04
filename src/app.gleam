import gleam/erlang.{type GetLineError}
import gleam/io

pub fn main() {
  meet_and_greet()
}

pub fn meet_and_greet() {
  read_name()
  |> greet
}

pub fn read_name() -> Result(String, GetLineError) {
  erlang.get_line("Enter your name: ")
}

pub fn greet(name_result: Result(String, GetLineError)) {
  case name_result {
    Ok("\n") -> io.println("Hello, stranger")
    Ok(name) -> io.println("Hello, " <> name)
    Error(_) -> io.println("Error reading from STDIN")
  }
}
