class Elem {
    public Node inf;
    public Elem next;

    public Elem() {}

    public Elem(Node n) {
        inf = n;
    }

    public void print() {
        inf.print();
    }
}