package dao;

import dto.Membership;
import java.util.ArrayList;

public class MembershipRepository {
    ArrayList<Membership> listOfMemberships = new ArrayList<Membership>();
    private static MembershipRepository instance = new MembershipRepository();

    public MembershipRepository() {
        Membership membership1 = new Membership();
        membership1.setMembershipId("1");
        membership1.setMembershipName("프리미엄");
        membership1.setDescription("1080p + 4K 화질 | 동시 시청 4명 | 모든 디바이스");
        membership1.setMonthPrice("13,900");
        listOfMemberships.add(membership1);

        Membership membership2 = new Membership();
        membership2.setMembershipId("2");
        membership2.setMembershipName("스탠다드");
        membership2.setDescription("1080p 화질 | 동시 시청 2명 | 모든 디바이스");
        membership2.setMonthPrice("10,900");
        listOfMemberships.add(membership2);

        Membership membership3 = new Membership();
        membership3.setMembershipId("3");
        membership3.setMembershipName("베이직");
        membership3.setDescription("720p 화질 | 동시 시청 1명 | 모바일 + PC");
        membership3.setMonthPrice("7,900");
        listOfMemberships.add(membership3);
    }

    public ArrayList<Membership> getAllMemberships() {
        return listOfMemberships;
    }

    public static MembershipRepository getInstance() {
        return instance;
    }

    public Membership getMembershipById(String membershipId) {
        Membership membershipById = null;
        for (int i = 0; i < listOfMemberships.size(); i++) {
            Membership movie = listOfMemberships.get(i);
            if (movie != null && movie.getMembershipId() != null && movie.getMembershipId().equals(membershipId)) {
                membershipById = movie;
                break;
            }
        }
        return membershipById;
    }
}
