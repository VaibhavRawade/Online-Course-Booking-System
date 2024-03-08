package in.sp.main.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import in.sp.main.entity.Product;
import in.sp.main.entity.CustomerEnq;

@Repository
public interface CustomerRepository extends JpaRepository<CustomerEnq,Integer>
{
	@Query("SELECT intrestedcourse, COUNT(status) FROM  CustomerEnq GROUP BY intrestedcourse")
	public List<Object[]> countByPurchasedCourse();
	
	@Query("DELETE FROM CustomerEnq WHERE status='0' ")
	public boolean deleteNotPurchesedCustomer();
}

