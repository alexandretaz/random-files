import javax.swing.*;

public class Principal
{
    
    public static void main(String[] args)
    {
        Integer op;
        Integer p=0;
        String nome;
        String msg ="";
        Double saldo;
        ContaBancaria c[] = new ContaBancaria[10];
        
        do 
        { 
            String menu = "1 Abrir Conta\n2 Sacar\n3 Deposito\n4 Extrato\n5 Finalizar";
            op = Integer.parseInt(JOptionPane.showInputDialog(menu));
            
            switch (op) {
                case 1:
                    nome = JOptionPane.showInputDialog("Qual seu nome ?");
                    saldo =  Double.parseDouble(JOptionPane.showInputDialog("Qual saldo ?"));
                    c[p] = new ContaBancaria(nome, saldo);
                    p++;
                    break;
                case 4:
                    for(int i=0; i<p;i++){
                        msg = msg + c[i].getSaldo() + "\n";
                    }
                    JOptionPane.showMessageDialog(null,msg);
                    break;
            }
                
                 
                
            
        
        } while(op != 5);
    }

}
