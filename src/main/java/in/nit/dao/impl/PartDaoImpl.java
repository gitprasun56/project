package in.nit.dao.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;

import in.nit.dao.IPartDao;
import in.nit.model.Part;

@Repository
public class PartDaoImpl implements IPartDao {
	
	@Autowired
	private HibernateTemplate ht;
	
	@Override
	public Integer savePart(Part ob) {
		
		return (Integer)ht.save(ob);
	}

}
