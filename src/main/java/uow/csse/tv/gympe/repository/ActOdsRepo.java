package uow.csse.tv.gympe.repository;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import uow.csse.tv.gympe.model.ActOds;

/**
 * ActOds Repository Interface
 *
 * @author 	Tab Tu
 * @date	2018-01-30
 * @update  Tab Tu on Mar.14 2018
 * @since	1.0
 *
 */

@Repository
public interface ActOdsRepo extends JpaRepository<ActOds, String> {
    Page<ActOds> findActOdsByUser_Id(String id, Pageable page);

    Page<ActOds> findActOdsByActivity_Id(String id, Pageable page);

    Page<ActOds> findActOdsByUser_IdAndIspaid(String usid, boolean paid, Pageable page);
}
