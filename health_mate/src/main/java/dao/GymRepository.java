package dao;
import java.util.ArrayList;
import dto.Gym;

public class GymRepository {

	private ArrayList<Gym> listOfGyms = new ArrayList<Gym>();

	public GymRepository() {
		Gym ABC = new Gym("G0001","ABC");
		ABC.setGymInfo("국내 최고 헬스장");
		ABC.setFilename("G0001.jpg");
		
		Gym DEF = new Gym("G0002","DEF");
		DEF.setGymInfo("최신 헬스 기기를 갖춘 헬스장");
		DEF.setFilename("G0002.jpg");
		
		Gym GHI = new Gym("G0003","GHI");
		GHI.setGymInfo("최고 트레이너 선생님들과 함께하는 헬스장");
		GHI.setFilename("G0003.jpg");
	
		listOfGyms.add(ABC);
		listOfGyms.add(DEF);
		listOfGyms.add(GHI);
	}

	public ArrayList<Gym> getAllGyms(){
		return listOfGyms;
	}
	
	public Gym getGymById(String gymId) {
		Gym gymById = null;
		
		for(int i=0; i<listOfGyms.size(); i++) {
			Gym gym = listOfGyms.get(i);
			if(gym != null && gym.getGymId() != null && gym.getGymId().equals(gymId)){
				gymById = gym;
				break;
			}
		}
		return gymById;
	}
}
