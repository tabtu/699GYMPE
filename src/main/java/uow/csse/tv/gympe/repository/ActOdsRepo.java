package uow.csse.tv.gympe.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import uow.csse.tv.gympe.model.ActOds;

import java.util.List;

/**
 * ActOds Repository Interface
 *
 * @author 	Tab Tu
 * @date	2018-01-30
 * @update  Tab Tu on Jan.30 2018
 * @since	1.0
 *
 */

@Repository
public interface ActOdsRepo extends JpaRepository<ActOds, String> {
    List<ActOds> findActOdsByUser_Id(String id);

    List<ActOds> findActOdsByActivity_Id(String id);
}
