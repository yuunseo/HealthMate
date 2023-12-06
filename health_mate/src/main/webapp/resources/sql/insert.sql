delete from gymProduct;
delete from gym;
delete from user;

INSERT INTO user VALUES('test99', 'khj','010-9999-9999',20, 'FEMALE','test12345^',true);
INSERT INTO user VALUES('test999', 'khj','010-9999-9999',20, 'FEMALE','test12345^',true);
INSERT INTO gym VALUES('test99', "G0001","ABC","국내 최고 헬스장", "06:00 ~ 22:00","서울시 동작구 상도동 123",'G0001.jpg');
INSERT INTO gym VALUES('test99', "G0002","DEF","최신 헬스 기기를 갖춘 헬스장", "10:00 ~ 22:00","서울시 동작구 보라매로 5555",'G0002.jpg');
INSERT INTO gym VALUES('test999', "G0003","GHI","최고 트레이너 선생님들과 함께하는 헬스장", "06:00 ~ 22:00","서울시 동작구 보라매로 5555",'G0003.jpg');

INSERT INTO gymProduct VALUES("G0001","GP0001","12개월권",12, "300000",'GP0001.jpg');
