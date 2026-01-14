public class BankAccount {
    private static String bankName = "MyBank";
    private static int totalAccounts = 0;
    private static int counter = 1000;

    private int accountNumber;
    private String holderName;
    private double balance;

    public BankAccount(String holderName, double balance) {
        this.holderName = holderName;
        this.balance = balance;
        this.accountNumber = ++counter;
        totalAccounts++;
    }

    public static String getBankInfo() {
        return bankName + " - Total Accounts: " + totalAccounts;
    }

    public void deposit(double amount) {
        balance += amount;
    }

    public void withdraw(double amount) {
        if (amount <= balance) {
            balance -= amount;
        }
    }

    public double getBalance() {
        return balance;
    }

    public static void main(String[] args) {
        BankAccount acc1 = new BankAccount("Alice", 1000);
        BankAccount acc2 = new BankAccount("Bob", 500);

        acc1.deposit(200);
        acc2.withdraw(100);

        System.out.println(acc1.getBalance());
        System.out.println(acc2.getBalance());
        System.out.println(BankAccount.getBankInfo());
    }
}
