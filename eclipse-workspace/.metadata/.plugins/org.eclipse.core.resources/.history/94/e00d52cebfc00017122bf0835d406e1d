package Assignment2;

//Zach Saegesser and Ryan Edelstein
//I pledge my honor that I have abided by the Stevens honor System

import java.util.HashMap;
import java.util.Map;
import java.util.Random;


public class Exercise {
	private ApparatusType at;
	private Map<WeightPlateSize, Integer> weight;
	private int duration;
	
	public Exercise(ApparatusType at, Map<WeightPlateSize, Integer> weight, int duration){
		this.at = at;
		this.weight = weight;
		this.duration = duration;
		
	};
	//generates a random exercise using the maximum number of plates given in the argument.
	public static Exercise generateRandom(Map<WeightPlateSize, Integer> weight){
		ApparatusType at= ApparatusType.RandomApparatusType();
		Map<WeightPlateSize, Integer> weightSet = new HashMap<>();
		for(WeightPlateSize wps : weight.keySet()){
			weightSet.put(wps, 0);
		}
		for(int i =0; i < 1 + new Random().nextInt(10); i++){
			WeightPlateSize a = WeightPlateSize.RandomWeightPlateSize();
			weightSet.replace(a, weightSet.get(a)+1);
		}
		int duration = 300 + new Random().nextInt(500);
		return new Exercise(at, weightSet, duration);
	};
	
	public String toString(){
		return "Apparatus: " + this.getAt().toString() +", WeightSet: " + this.getWeightSet().toString() + ", Duration: " + this.getDuration();
	}
	public ApparatusType getAt() {
		return at;
	}
	public Map<WeightPlateSize, Integer> getWeightSet() {
		return weight;
	}
	public int getDuration() {
		return duration;
	}


	
//	public static void main(String[] args){
//		Exercise e = generateRandom(WeightPlateSize.noOfWeightPlates);
//		System.out.println(e);
//	}
}