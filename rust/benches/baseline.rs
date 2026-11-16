use std::hint::black_box;
use std::time::Instant;

use project_template::square;

fn main() {
    let iterations = 1_000_000;
    let start = Instant::now();

    for _ in 0..iterations {
        black_box(square(black_box(42)));
    }

    println!("{iterations} iterations in {:?}", start.elapsed());
}
