package dao;
import java.util.ArrayList;
import dto.Gym;

public class GymRepository {

	private ArrayList<Gym> listOfGyms = new ArrayList<Gym>();
	private static GymRepository instance = new GymRepository();
	
	public static GymRepository getInstance() {
		return instance;
	}

	public GymRepository() {
		Gym ABC = new Gym("G0001","ABC");
		ABC.setGymInfo("국내 최고 헬스장");
		ABC.setFilename("G0001.jpg");
		ABC.setGymOwnerId("test99");
		ABC.setAddress("서울시 동작구 상도동 123");
		ABC.setTime("오전6시 ~ 오후10시");
		
		Gym DEF = new Gym("G0002","DEF");
		DEF.setGymInfo("최신 헬스 기기를 갖춘 헬스장");
		DEF.setFilename("G0002.jpg");
		DEF.setGymOwnerId("test99");
		DEF.setAddress("서울시 동작구 보라매로 5555");
		DEF.setTime("오전10시 ~ 오후10시");
		
		Gym GHI = new Gym("G0003","GHI");
		GHI.setGymInfo("최고 트레이너 선생님들과 함께하는 헬스장");
		GHI.setFilename("G0003.jpg");
		GHI.setGymOwnerId("test999");
		GHI.setAddress("서울시 동작구 보라매로 5555");
		GHI.setTime("오전10시 ~ 오후10시");
	
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
	
	public ArrayList<Gym> getMyGyms(String ownerId) {
		ArrayList<Gym> myGyms = new ArrayList<Gym>();
		for(int i=0; i<listOfGyms.size();i++) {
			Gym gym = listOfGyms.get(i);
			if(gym != null && gym.getGymId() != null && gym.getGymOwnerId().equals(ownerId)){
				myGyms.add(gym);
			}
		}
		return myGyms;
	}
	
	public void addGym(Gym gym) {
		listOfGyms.add(gym);
	}
}
