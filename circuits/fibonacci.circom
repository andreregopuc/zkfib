pragma circom  2.0.0;

template fibonacci(n) {
    signal input fib1;
    signal input fib2;
    signal output fibn;

    var a = fib1;
    var b = fib2;
    var c;
    var d;

    // compute fibonacci sequence
    for (var i = 2; i < n; i++) {
        c = a + b;
        a = b;
        b = c;
    }
    fibn <== c * fib1;

    log();
}


component main = fibonacci(1000);