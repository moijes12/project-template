package starter

import "testing"

var benchmarkSink int

func TestAdd(t *testing.T) {
	if got := Add(2, 3); got != 5 {
		t.Fatalf("Add(2, 3) = %d, want 5", got)
	}
}

func BenchmarkAdd(b *testing.B) {
	for b.Loop() {
		benchmarkSink = Add(benchmarkSink, 1)
	}
}
