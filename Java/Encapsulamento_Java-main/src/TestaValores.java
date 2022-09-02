public class TestaValores {
    public static void main(String[] args) {
        int total = 0;
        Conta conta = new Conta(1337, 24226);

        Conta conta2 = new Conta(1337, 24289);

        Conta conta3 = new Conta(1374, 35489);

        System.out.println("O total de contas e: "+ Conta.getTotal());

    }
}
