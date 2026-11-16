package starter

import "testing"

var benchmarkResult int

func TestSquare(t *testing.T) {
	if got := Square(4); got != 16 {
		t.Fatalf("Square(4) = %d, want 16", got)
	}
}

func BenchmarkSquare(b *testing.B) {
	for i := 0; i < b.N; i++ {
		benchmarkResult = Square(i)
	}
}
