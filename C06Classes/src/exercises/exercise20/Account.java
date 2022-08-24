package exercises.exercise20;

public class Account {
	private String ano;     // 계좌번호
	private String owner;   // 예금주
	private int balance;    // 잔고
	
	public Account(String ano, String owner, int balance) {
		this.ano = ano;
		this.owner = owner;
		this.balance = balance;
	}
	
	public String getAno() {
		return this.ano;
	}
	
	public void setAno(String ano) {
		this.ano = ano;
	}
	
	public String getOwner() {
		return this.owner;
	}

	public void setOwner(String owner) {
		this.owner = owner;
	}
	
	public int getBalance() {
		return this.balance;
	}
	
	public void setBalance(int balance) {
		this.balance = balance;
	}
	
	public void addBalance(int balance) {
		this.balance += balance;
	}
	
	public void delBalance(int balance) {
		this.balance -= balance;
	}
}
