package in.nit.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import in.nit.dao.IUomDao;
import in.nit.model.Uom;
import in.nit.service.IUomService;

@Service
public class UomServiceImpl implements IUomService {

	@Autowired
	private IUomDao dao;
	
	@Transactional
	public Integer saveUom(Uom ob) {
		
		return dao.saveUom(ob);
	}
	@Transactional(readOnly=true)
	public List<Uom> getAllUoms() {
		
		List<Uom> list=dao.getAllUoms();
		return list;
	}
	
	@Transactional
	public void deleteUom(Integer id) {
	
		dao.deleteUom(id);
	}
}