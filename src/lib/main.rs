#![allow(dead_code, unused)]

// Struct
struct Point {
    x: i32,
    y: i32,
}

enum Direction {
    Left,
    Right,
    Up,
    Down,
}


const START_DATE: &str = "2022-12-19 12:08:37";
const AUTHOR_GITHUB_PROFILE: &str = "https://github.com/vrkansagara/vrkansagara";

pub fn author(name: &str, email: &str) {
    println!("Project owner is {}<{}>", name, email);
    println!("This project started at {0}", START_DATE);
    println!("Your github homepage is {0}", AUTHOR_GITHUB_PROFILE);
}

fn main() {
    let origin: Point = Point { x: 0, y: 0 };
    let up = Direction::Up;
    println!("Silent is golden !");
}
