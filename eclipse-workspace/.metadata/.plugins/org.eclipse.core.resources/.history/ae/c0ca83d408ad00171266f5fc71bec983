package Assignment2;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Random;

public class Client {
	private int id;
	private List<Exercise> routine;

	public Client(int id) {
		this.id = id;
		this.routine = new ArrayList<>();
	}

	public void addExercise(Exercise e) {
		this.routine.add(e);
	}

	// map<K,V> K -> the type of keys, V = mapped values

	/**
	 * Builds a client with given id and noOfWeightPlates map
	 * 
	 * @param id
	 * @param noOfWeightPlates
	 * @return
	 */
	public static Client generateRandom(int id,
			Map<WeightPlateSize, Integer> noOfWeightPlates) {
		Client bigbaby = new Client(id);
		int numE = 15 + new Random().nextInt(6);
		for (int i = 0; i < numE; i++) {
			bigbaby.addExercise(Exercise.generateRandom(noOfWeightPlates));
		}

		return bigbaby;
	}

	public String toString() {
		String out = "";
		out += "Client ID: " + this.id + "\n";
		for (Exercise e : routine)
			out += e.toString() + '\n';
		out += "Length: " + this.routine.size();
		return out;

	}

	public void runRoutine() throws InterruptedException {
		for (Exercise e : routine) {
			Gym.mutex.acquire();
			System.out.println("Client "+this.id+" is boutta do: "+e.toString());
			switch (e.getAt()) {
			case LEGPRESSMACHINE:
				Gym.a_lpm.acquire();
			case BARBELL:
				Gym.a_bb.acquire();
			case HACKSQUATMACHINE:
				Gym.a_hsm.acquire();
			case LEGEXTENSIONMACHINE:
				Gym.a_lem.acquire();
			case LEGCURLMACHINE:
				Gym.a_lcm.acquire();
			case LATPULLDOWNMACHINE:
				Gym.a_lpm.acquire();
			case PECDECKMACHINE:
				Gym.a_pdm.acquire();
			case CABLECROSSOVERMACHINE:
				Gym.a_ccm.acquire();
			}
			for (WeightPlateSize w : e.getWeightSet().keySet()) {
				switch (w) {
				case SMALL_3KG:
					for (int i = 0; i < e.getWeightSet().get(w); i++) {
						Gym.a_sm.acquire();
					}
				case MEDIUM_5KG:
					for (int i = 0; i < e.getWeightSet().get(w); i++) {
						Gym.a_m.acquire();
					}
				case LARGE_10KG:
					for (int i = 0; i < e.getWeightSet().get(w); i++) {
						Gym.a_lg.acquire();
					}
				}
			}
			Gym.mutex.release();
			Thread.sleep(e.getDuration());
//			Gym.mutex.acquire();
			switch (e.getAt()) {
			case LEGPRESSMACHINE:
				Gym.a_lpm.release();
			case BARBELL:
				Gym.a_bb.release();
			case HACKSQUATMACHINE:
				Gym.a_hsm.release();
			case LEGEXTENSIONMACHINE:
				Gym.a_lem.release();
			case LEGCURLMACHINE:
				Gym.a_lcm.release();
			case LATPULLDOWNMACHINE:
				Gym.a_lpm.release();
			case PECDECKMACHINE:
				Gym.a_pdm.release();
			case CABLECROSSOVERMACHINE:
				Gym.a_ccm.release();
			}
			for (WeightPlateSize w : e.getWeightSet().keySet()) {
				switch (w) {
				case SMALL_3KG:
					for (int i = 0; i < e.getWeightSet().get(w); i++) {
						Gym.a_sm.release();
					}
				case MEDIUM_5KG:
					for (int i = 0; i < e.getWeightSet().get(w); i++) {
						Gym.a_m.release();
					}
				case LARGE_10KG:
					for (int i = 0; i < e.getWeightSet().get(w); i++) {
						Gym.a_lg.release();
					}
				}
			}
//			Gym.mutex.release();
			Gym.resourceStat();
		}
	}

	public static void main(String[] args) {
		Client e = Client.generateRandom(20, WeightPlateSize.noOfWeightPlates);
		System.out.println(e.toString());
	}

}