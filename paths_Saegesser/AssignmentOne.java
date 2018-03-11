//Zach Saegesser, worked with Khayaam Saleem
import java.util.*;

public class AssignmentOne {
  private List<Integer> results;

  //Constructor
  AssignmentOne(){
    results = new ArrayList<Integer>();
  }

  //run the threads, get the primes
  public List<Integer> lprimes(List<Integer[]> intervals){
  //  List<Integer> temp = new ArrayList<Integer>();
    List<Thread> threads = new ArrayList<Thread>();
    List<PrimeFinder> finders = new ArrayList<PrimeFinder>();
    for(Integer[] e : intervals){
      PrimeFinder finder = new PrimeFinder(e[0],e[1]);
      finders.add(finder);
      Thread thrd = new Thread(finder);
      threads.add(thrd);
      thrd.start();
    }
    for(Thread e : threads){
      try{
        e.join();
      }
      catch(InterruptedException w) {
        System.out.println("No Idea");
      }
    }
    for(PrimeFinder e : finders){
      results.addAll(e.getPrimesList());
    }
    return results;
  }

  public static void main(String args[]){
    if(args.length < 2){
      throw new IllegalArgumentException();
    }
    else if(Integer.parseInt(args[0]) < 2){
      throw new IllegalArgumentException();
    }
    List<Integer[]> intervalTemp = new ArrayList<Integer[]>();
    for(int i = 0; i < args.length-1; i++){
      if(Integer.parseInt(args[i+1]) <= Integer.parseInt(args[i]))
        throw new IllegalArgumentException();
      intervalTemp.add(new Integer[] {Integer.parseInt(args[i]),
        Integer.parseInt(args[i+1])});
    }
    AssignmentOne a1 = new AssignmentOne();
    System.out.println(a1.lprimes(intervalTemp));
  }
}
