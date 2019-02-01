package pl.coderslab.familytree.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import pl.coderslab.familytree.model.Image;

public interface ImageRepository extends JpaRepository<Image, Long> {
}
