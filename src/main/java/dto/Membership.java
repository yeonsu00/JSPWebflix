package dto;

public class Membership {
    private String membershipId;
    private String membershipName; //프리미엄, 스탠다드, 베이직
    private String description;
    private String MonthPrice;

    public Membership() {
        super();
    }

    public String getMembershipId() {
        return membershipId;
    }

    public void setMembershipId(String membershipId) {
        this.membershipId = membershipId;
    }

    public String getMembershipName() {
        return membershipName;
    }

    public void setMembershipName(String membershipName) {
        this.membershipName = membershipName;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getMonthPrice() {
        return MonthPrice;
    }

    public void setMonthPrice(String monthPrice) {
        MonthPrice = monthPrice;
    }

}
