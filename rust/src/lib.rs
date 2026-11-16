pub fn square(value: i32) -> i32 {
    value * value
}

#[cfg(test)]
mod tests {
    use super::square;

    #[test]
    fn squares_a_value() {
        assert_eq!(square(4), 16);
    }
}
