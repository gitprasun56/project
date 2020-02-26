package in.nit.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="parttab")
public class Part {
	
	@Id
	@GeneratedValue
	@Column(name="pid")
	private Integer partId;
	@Column(name="pcode")
	private String partCode;
	@Column(name="pweight")
	private Double  partWeight;
	@Column(name="plength")
	private Double partLength;
	@Column(name="pheight")
	private Double partHeight;
	@Column(name="pbcost")
	private Double baseCost;
	@Column(name="pbcurrency")
	private String  baseCurrency;
	@Column(name="pdesc")
	private String partDesc;
	public Part() {
		super();
	}
	public Integer getPartId() {
		return partId;
	}
	public void setPartId(Integer partId) {
		this.partId = partId;
	}
	public String getPartCode() {
		return partCode;
	}
	public void setPartCode(String partCode) {
		this.partCode = partCode;
	}
	public Double getPartWeight() {
		return partWeight;
	}
	public void setPartWeight(Double partWeight) {
		this.partWeight = partWeight;
	}
	public Double getPartLength() {
		return partLength;
	}
	public void setPartLength(Double partLength) {
		this.partLength = partLength;
	}
	public Double getPartHeight() {
		return partHeight;
	}
	public void setPartHeight(Double partHeight) {
		this.partHeight = partHeight;
	}
	public Double getBaseCost() {
		return baseCost;
	}
	public void setBaseCost(Double baseCost) {
		this.baseCost = baseCost;
	}
	public String getBaseCurrency() {
		return baseCurrency;
	}
	public void setBaseCurrency(String baseCurrency) {
		this.baseCurrency = baseCurrency;
	}
	public String getPartDesc() {
		return partDesc;
	}
	public void setPartDesc(String partDesc) {
		this.partDesc = partDesc;
	}
	@Override
	public String toString() {
		return "Part [partId=" + partId + ", partCode=" + partCode + ", partWeight=" + partWeight + ", partLength="
				+ partLength + ", partHeight=" + partHeight + ", baseCost=" + baseCost + ", baseCurrency="
				+ baseCurrency + ", partDesc=" + partDesc + "]";
	}
	
	

}
