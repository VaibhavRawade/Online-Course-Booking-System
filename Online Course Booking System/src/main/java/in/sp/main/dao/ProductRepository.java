package in.sp.main.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import in.sp.main.entity.Product;

@Repository
public interface ProductRepository extends JpaRepository<Product,Integer>
{
	@Query("SELECT coursename FROM Product")
	public List<String> getAllCourse();
}
