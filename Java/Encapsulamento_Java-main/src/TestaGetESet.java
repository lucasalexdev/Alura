public class TestaGetESet {
    public static void main(String[] args) {
        Conta conta = new Conta(1337,24226);

        System.out.println(conta.getNumero());

        Cliente lucas = new Cliente();
//        conta.titular=lucas;

        conta.setTitular(lucas);
//        lucas.cpf = "108-923-026-58";
        lucas.setCpf("108-923-026-58");
        lucas.setNome("Lucas Alex");
        lucas.setProfissao("Arqueologo-Supremo");

        System.out.println(conta.getTitular().getProfissao());

        conta.getTitular().setProfissao("Mago");
        System.out.println(conta.getTitular().getProfissao());
    }
}

