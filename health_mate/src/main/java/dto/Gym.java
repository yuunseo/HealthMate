package dto;
import java.io.Serializable;

public class Gym {
	
	private String gymId; //헬스장 아이디
	private String gymName; //헬스장 이름
	private String gymInfo; //헬스장 정보
	private String filename; //이미지 파일명
	
	public Gym() {
		super();
	}
	
	public Gym(String gymId, String gymName) {
		this.gymId = gymId;
		this.gymName = gymName;
	}
	
	
	
	public String getFilename() {
		return filename;
	}

	public void setFilename(String filename) {
		this.filename = filename;
	}

	public String getGymId() {
		return gymId;
	}

	public void setGymId(String gymId) {
		this.gymId = gymId;
	}

	public String getGymName() {
		return gymName;
	}

	public void setGymName(String gymName) {
		this.gymName = gymName;
	}

	public String getGymInfo() {
		return gymInfo;
	}

	public void setGymInfo(String gymInfo) {
		this.gymInfo = gymInfo;
	}

}
