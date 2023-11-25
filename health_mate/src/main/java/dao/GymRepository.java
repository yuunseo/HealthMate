package dao;
import java.util.ArrayList;
import dto.Gym;

public class GymRepository {

	private ArrayList<Gym> listOfGyms = new ArrayList<Gym>();

	public GymRepository() {
		Gym ABC = new Gym("G0001","ABC");
		ABC.setGymInfo("국내 최고 헬스장");
	
		listOfGyms.add(ABC);
	}

	public ArrayList<Gym> getAllGyms(){
		return listOfGyms;
	}
}
