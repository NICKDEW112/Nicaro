using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace best_bank_savings_12
{
    class Program
    {
        static void Main(string[] args)
        {//clare Cariables used to store values and assigned vales//
            int continuation_Status, YearMil= 0,choice1 = 0, Year = 0, Year2 = 0 ,X = 0, choice2 = 0, Menu = 0, Status = 0;
            double balance = 0, Realbalance=0, Withdraw_amt = 0, Deposit_amt = 0, BankInherit = 0;
            string Name;

            //displaying to the customer Inputs Required//
            Console.WriteLine("              GOOD Day Gentle Customer        :)  ");
            Console.WriteLine("Please Enter 1 to CONTINUE to the what BEST SAVINGS BANK Has In Store For You or 2 to EXIT");
            continuation_Status = Convert.ToInt16(Console.ReadLine());
            // Program will then select which IF statement is best based on the number entered//
            if (continuation_Status == 2)
            {
                Console.WriteLine(" AWW...Good bye and Please do make every effort to do visit us again");
                Console.ReadLine();
                Environment.Exit(0);
            }
            else
            if (continuation_Status == 1)
            {


                Console.WriteLine(" ********************BEST SAVINGS BANK *******************");
                Console.WriteLine("**So You Want To Be A Millionaire Savings Account Promotion * *");
                Console.WriteLine("Please Choose an Option or Choice Below ");
                Console.WriteLine("Enter 1 to Create a So you want to be a millionaire Savings Account");
                Console.WriteLine("Enter 2 to Make an WITHDRAWAL from the Account");
                Console.WriteLine("Enter 3 to Make an DEPOSIT to  the Account");
                choice1 = Convert.ToInt16(Console.ReadLine());
                Console.Clear();
            }



            // Program will then select which IF statement is best// 
            if (choice1 == 3)
            {
                Console.WriteLine("Checking for Rightful Balance amount >>… and Validity of Account >>…..");
                Console.WriteLine("Analysis Check Completed");
                Console.WriteLine("NO WITHDRAWS CAN BE MADE UNTIL AN ACCOUNT IS CREATED");
                Console.WriteLine("Thank you and have a nice day. Please Press Enter key to Exit ");
                Console.ReadLine();
                Environment.Exit(0);

            }

            else if (choice1 == 2)
            {
                Console.WriteLine("Checking for Rightful Balance amount and Valid Account");
                Console.WriteLine("Analysis Check Complete");
                Console.WriteLine("NO DEPOSIT CAN BE MADE UNTIL AN ACCOUNT IS CREATED");
                Console.WriteLine("Thank you and have a nice day. Please Press Enter key to Exit");
                Console.ReadLine();
                Environment.Exit(0);

            }
            else if (choice1 == 1)
            {

                Console.WriteLine("*******WELCOME **********");
                Console.WriteLine("To BEGIN Account Please Enter Your Name");
                Name = Console.ReadLine();
                Console.WriteLine("And Also Your Starting Balance: ");
                balance = Convert.ToDouble(Console.ReadLine());
                Realbalance += balance;
                Console.Clear();
                Console.WriteLine("Success Account has Been Created");
                Console.WriteLine("*********** BEST SAVINGS BANK *************");
                Console.WriteLine("** So You Want To Be A Millionaire Savings Account Promotion **");
                Console.WriteLine(" You Have Successfully Created a So you want to be a millionaire Savings Account");
                Console.WriteLine("*** Note Carefully*** ");
                Console.WriteLine("No Withdrawal or Deposit Can Be Made until Money reaches Maturity standards($1000000)");
                Console.ReadLine();
                Console.Clear();

                
            }
            if (balance >= 1000000)
            {


                Console.WriteLine(" Congrats!! Your balance Has reached Maturity(1 million dollars");
                Console.WriteLine(" it takes {0}year to reach $1,000,000 ", YearMil);
                Console.WriteLine("Enter 1 To CONTINUE or 999 to Exit and delete Account");
                X = Convert.ToInt16(Console.ReadLine());
                Console.ReadLine();
                Console.Clear();


            }
            else if (balance < 100000)
            {

                do
                {
                    balance = balance * 2;
                    Year = Year + 1;

                } while (balance <= 100000);
                do
                {
                    balance = balance * 2;
                    YearMil = YearMil + Year;
                } while (balance <= 1000000);
                Console.WriteLine("It takes {0}years to reach $100, 000.", Year);
                Console.WriteLine("It takes {0}years to reach $1, 000, 000.", YearMil);
                Console.WriteLine("Enter 1 to return to Main menu or 999 to exit and delete account");
                X = Convert.ToInt16(Console.ReadLine());
                Console.ReadLine();
                Console.Clear();

            }
            else if (balance > 100000 && balance < 1000000)
            { do
                {

                    balance = balance * 2;
                    Year2 = Year2 + 1;
                   
                }
                while (balance > 1000000 && balance <1000000 );
                Console.WriteLine("It takes {0}years to reach $1, 000, 000.", Year2);
                Console.WriteLine("Enter 1 to return to Main menu or 999 to exit and delete account");
                X = Convert.ToInt16(Console.ReadLine());
                Console.ReadLine();
                Console.Clear();

            }
            if (X == 999)
            {
                Console.WriteLine("goodbye dear Customer please do come again");
                Console.ReadLine();
                Environment.Exit(0);
            }
            else if (X == 1)
            {
                do
                {
                    Console.WriteLine("******************** BEST SAVINGS BANK *******************");
                    Console.WriteLine("*** So You Want To Be A Millionaire Savings Account Promotion ***");
                    Console.WriteLine();
                    Console.WriteLine("*********** Your Current and New balance is:{0} *************", Realbalance);
                    Console.WriteLine();
                    Console.WriteLine("Enter 2 to Make an WITHDRAWAL from the Account");
                    Console.WriteLine("Enter 3 to Make a DEPOSIT to  the Account");
                    Console.WriteLine("Or enter 5 to exit and start over a new account");
                    choice2 = Convert.ToInt16(Console.ReadLine());
                    Console.Clear();
                    if (choice2 == 5)
                    {
                        Console.WriteLine("Goodbye Fellow CUstomers we will miss you");
                        Console.ReadLine();
                        Environment.Exit(0);
                    }
                    if (choice2 == 2 && Realbalance < 1000000)
                    {
                        Console.WriteLine("*** NO WITHDRAWAL CAN BE MADE UNTIL YOUR ACCOUNT REACHES MATURITY(1 Million Dollars) ****");
                        Console.WriteLine("Please enter 1 to return to menu");
                        Menu = Convert.ToInt16(Console.ReadLine());
                        Console.ReadLine();
                        Console.Clear();
                    }

                    if (choice2 == 2 && Realbalance >= 1000000)
                    {
                        Console.WriteLine("Checking for Rightful Balance amount and Valid Account");
                        Console.WriteLine("Analysis Check Complete");
                        Console.WriteLine("Please Enter Your status, Enter 7 for Alive, 8 for Dead");
                        Status = Convert.ToInt16(Console.ReadLine());
                        Console.ReadLine();


                        if (Status == 7)
                        {
                            Console.WriteLine("Your Current Balance is:{0}", Realbalance);
                            Console.WriteLine("Enter Amount to be WITHDRAWED from the Account");
                            Withdraw_amt = Convert.ToDouble(Console.ReadLine());
                            Realbalance = Realbalance - Withdraw_amt;
                            Console.WriteLine("The Withdrawal is Completed thank you");
                            Console.WriteLine("Your new current Balance is now:{0}", Realbalance);
                            Console.WriteLine("Thank you and have a nice day");
                            Console.WriteLine("Enter 1 to return to Main menu");
                            Menu = Convert.ToInt16(Console.ReadLine());
                            Console.ReadLine();
                            Console.Clear();
                        }
                        else if (Status == 8)
                        {
                            Console.WriteLine("Sorry But The Costumer is Dead So The Bank Inherits The Money");
                            BankInherit += Realbalance;
                            Realbalance = Realbalance * 0;
                            Console.WriteLine("You currently have Zero dollars{0}", Realbalance);
                            Console.WriteLine("Enter 1 to return to main menu to exit and start over");
                            Menu = Convert.ToInt16(Console.ReadLine());
                            Console.ReadLine();
                            Console.Clear();
                        }
                    }
                    if (choice2 == 3 && Realbalance < 1000000)
                    {
                        Console.WriteLine(" No deposit Can be Made until the Account is Matured(1 Million Dollars)");
                        Console.WriteLine("Please enter 1 to return to main menu");
                        Menu = Convert.ToInt16(Console.ReadLine());
                        Console.Clear();
                    }
                    else if (choice2 == 3 && Realbalance >= 1000000)
                    {
                        Console.WriteLine("Checking for Rightful Balance amount and Valid Account");
                        Console.WriteLine("Analysis Check Complete");
                        Console.WriteLine("Enter Your status,Enter 7 for Alive, 8 for Dead");
                        Status = Convert.ToInt16(Console.ReadLine());

                        if (Status == 7)
                        {
                            Console.WriteLine("Your Current Balance is:{0}", Realbalance);
                            Console.WriteLine("Enter Amount to be Deposited to the Account");
                            Deposit_amt = Convert.ToDouble(Console.ReadLine());
                            Realbalance = Realbalance + Deposit_amt;
                            Console.WriteLine("The Deposit is Completed thank you");
                            Console.ReadLine();
                            Console.Clear();
                            Console.WriteLine("Your new current Balance is now:{0}", Realbalance);
                            Console.WriteLine("Thank you and have a nice day");
                            Console.WriteLine("enter 1 to go back to Mainmenu");
                            Menu = Convert.ToInt16(Console.ReadLine());
                            Console.Clear();

                        }
                        else if (Status == 8)
                        {
                            Console.WriteLine("Sorry But The Costumer is Dead So The Bank Inherits The Money");
                            BankInherit = BankInherit + Realbalance;
                            Realbalance = Realbalance * 0;
                            Console.WriteLine("Your current Balance is Zero dollars", Realbalance);
                            Console.Write("Thank you and have a nice day");
                            Console.WriteLine("Please Enter 1 to exit and start over as Your balance is Zero due to the death of the customer");
                            Menu = Convert.ToInt16(Console.ReadLine());
                        }
                    }
                } while (Menu != 0);
            }
        }
    }
}

