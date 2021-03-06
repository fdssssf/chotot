package com.group4.Repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.group4.entity.Distric;
import com.group4.entity.City;
import java.util.List;
@Repository
public interface DistricRepository extends JpaRepository<Distric, Integer> {

	Distric findByName(String name);
	List<Distric> findByCity(City city);
//	findby
}
