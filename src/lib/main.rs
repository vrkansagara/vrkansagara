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

fn main() {
    let origin: Point = Point { x: 0, y: 0 };
    let up = Direction::Up;
    println!("Silent is golden !");
}
