//Zach Saegesser
//I pledge my honor that I have abided by the Stevens Honor System
import java.util.*;

public class PrimeFinder implements Runnable{
  private Integer start;
  private Integer end;
  private List<Integer> primes;

  //Constructor
  PrimeFinder(Integer startNum, Integer endNum){
    start = startNum;
    end = endNum;
    primes = new ArrayList<Integer>();
  }

  //getter for primes
  public List<Integer>  getPrimesList(){
    return primes;
  }

  //returns true if n is prime, false otherwise
  public static boolean isPrime(int n){
    for(int i = 2; i < n; i++){
      if(n % i == 0){
        return false;
      }
    }
    return true;
  }

  public void run(){
    for(int i = start; i< end; i++){
      if(isPrime(i)){
        primes.add(i);
      }
    }
  }
}
