package Assignment2;

import java.util.HashSet;
import java.util.Map;
import java.util.Random;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Semaphore;

public class Gym implements Runnable {
	private static final int GYM_SIZE = 30;
	private static final int GYM_REGISTERED_CLIENTS = 10000;
	private static Map<WeightPlateSize, Integer> noOfWeightPlates = WeightPlateSize.noOfWeightPlates;
	private Set<Integer> clients; // for generating fresh client ids
	private ExecutorService executor; // eggs are cuter

	// LEGPRESSMACHINE, BARBELL, HACKSQUATMACHINE, LEGEXTENSIONMACHINE,
	// LEGCURLMACHINE, LATPULLDOWNMACHINE, PECDECKMACHINE,
	// CABLECROSSOVERMACHINE;
	static Semaphore a_lpm = new Semaphore(5);
	static Semaphore a_bb = new Semaphore(5);
	static Semaphore a_hsm = new Semaphore(5);
	static Semaphore a_lem = new Semaphore(5);
	static Semaphore a_lcm = new Semaphore(5);
	static Semaphore a_lpdm = new Semaphore(5);
	static Semaphore a_pdm = new Semaphore(5);
	static Semaphore a_ccm = new Semaphore(5);

	static Semaphore a_sm = new Semaphore(
			noOfWeightPlates.get(WeightPlateSize.SMALL_3KG));
	static Semaphore a_m = new Semaphore(
			noOfWeightPlates.get(WeightPlateSize.MEDIUM_5KG));
	static Semaphore a_lg = new Semaphore(
			noOfWeightPlates.get(WeightPlateSize.LARGE_10KG));
	static Semaphore mutex = new Semaphore(1);

	// various semaphores - declaration omitted
	// availability for apparatusType: eight
	// availability for weightPlateSize: sm, m, lg
	// mutex

	public Gym() {
		this.clients = new HashSet<Integer>();
		for (int i = 0; i < GYM_SIZE; i++) {
			clients.add(new Random().nextInt(GYM_REGISTERED_CLIENTS));
		}

	}
	
	public static void resourceStat(){
		System.out.println("LPM: " + Gym.a_lpm.toString());
		System.out.println("BB: " + Gym.a_bb.toString());
		System.out.println("HSM: " + Gym.a_hsm.toString());
		System.out.println("LEM: " + Gym.a_lem.toString());
		System.out.println("LCM: " + Gym.a_lcm.toString());
		System.out.println("LPDM: " + Gym.a_lpdm.toString());
		System.out.println("PDM: " + Gym.a_pdm.toString());
		System.out.println("CCM: " + Gym.a_ccm.toString());
		System.out.println("SM" + Gym.a_sm.toString());
		System.out.println("MED" + Gym.a_m.toString());
		System.out.println("LG" + Gym.a_lg.toString());
		System.out.println("Mutex: "+Gym.mutex.toString());
		
		
	}

	public void run() {
		executor = Executors.newFixedThreadPool(GYM_SIZE);
		for (final int id : clients)
			executor.execute(new Runnable() {
				public void run() {
					Client c = Client.generateRandom(id,
							WeightPlateSize.noOfWeightPlates);
					try {
						c.runRoutine();
					} catch (InterruptedException e) {
						e.printStackTrace();
					}
				}
			});
		executor.shutdown();
	};

	public static void main(String[] args) {

	}

}
