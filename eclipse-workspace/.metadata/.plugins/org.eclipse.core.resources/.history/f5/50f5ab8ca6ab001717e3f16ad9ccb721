package Assignment2;

import java.util.HashMap;
import java.util.Map;
import java.util.Random;

public enum WeightPlateSize {
	SMALL_3KG, MEDIUM_5KG, LARGE_10KG;

	public static WeightPlateSize RandomWeightPlateSize() {
		return WeightPlateSize.values()[new Random().nextInt()
				% WeightPlateSize.values().length];
	}
	static Map<WeightPlateSize, Integer> noOfWeightPlates = new HashMap<>();
	static {
		noOfWeightPlates.put(SMALL_3KG, 110);
		noOfWeightPlates.put(MEDIUM_5KG, 90);
		noOfWeightPlates.put(LARGE_10KG, 75);
	}
}
