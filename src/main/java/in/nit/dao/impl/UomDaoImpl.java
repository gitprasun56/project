package in.nit.dao.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;

import in.nit.dao.IUomDao;
import in.nit.model.Uom;

@Repository
public class UomDaoImpl implements IUomDao {
	
	@Autowired
	private HibernateTemplate ht;

	
	public Integer saveUom(Uom ob) {
		
		return (Integer)ht.save(ob);
	}
	
	public List<Uom> getAllUoms() {
		
		return ht.loadAll(Uom.class);
	}
	
	public void deleteUom(Integer id) {

		ht.delete(new Uom(id));

	}
	

}
