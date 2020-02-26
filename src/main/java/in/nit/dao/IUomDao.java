package in.nit.dao;

import java.util.List;

import in.nit.model.Uom;

public interface IUomDao {
	
	Integer saveUom(Uom ob);
	List<Uom> getAllUoms();
	public void deleteUom(Integer id);
	
	

}
