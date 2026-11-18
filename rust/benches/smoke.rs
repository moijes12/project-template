use project_template::add;
use std::hint::black_box;
use std::time::Instant;

fn main() {
    let started = Instant::now();
    for value in 0..1_000_000 {
        black_box(add(black_box(value), black_box(1)));
    }
    println!("1,000,000 additions: {:?}", started.elapsed());
}
