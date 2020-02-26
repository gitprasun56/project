package in.nit.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="usertab")
public class WhUserType {

	@Id
	@GeneratedValue
	@Column(name="utype")
	private String userType;
	private String userCode;
	private String userFor;
	
	
}
