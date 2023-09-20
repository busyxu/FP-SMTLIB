(declare-fun x1_ack!1654 () (_ BitVec 64))
(declare-fun x0_ack!1658 () (_ BitVec 64))
(declare-fun x2_ack!1655 () (_ BitVec 64))
(declare-fun b_ack!1657 () (_ BitVec 64))
(declare-fun a_ack!1656 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1658) ((_ to_fp 11 53) x1_ack!1654)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1654) ((_ to_fp 11 53) x2_ack!1655)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1654)
                       ((_ to_fp 11 53) x0_ack!1658))
               ((_ to_fp 11 53) x0_ack!1658))
       ((_ to_fp 11 53) x1_ack!1654)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1654)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1654)
                       ((_ to_fp 11 53) x0_ack!1658)))
       ((_ to_fp 11 53) x0_ack!1658)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1655)
                       ((_ to_fp 11 53) x1_ack!1654))
               ((_ to_fp 11 53) x1_ack!1654))
       ((_ to_fp 11 53) x2_ack!1655)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1655)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1655)
                       ((_ to_fp 11 53) x1_ack!1654)))
       ((_ to_fp 11 53) x1_ack!1654)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1654)
                    ((_ to_fp 11 53) x0_ack!1658))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1655)
                    ((_ to_fp 11 53) x1_ack!1654))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!1656) ((_ to_fp 11 53) b_ack!1657))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1656) ((_ to_fp 11 53) x0_ack!1658))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!1657) ((_ to_fp 11 53) x2_ack!1655))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!1656) ((_ to_fp 11 53) b_ack!1657))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1656) ((_ to_fp 11 53) x0_ack!1658))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!1656) ((_ to_fp 11 53) x1_ack!1654))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!1657) ((_ to_fp 11 53) x0_ack!1658)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1654)
                    ((_ to_fp 11 53) x0_ack!1658))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!1657)
                                  ((_ to_fp 11 53) x0_ack!1658)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1657)
                                   ((_ to_fp 11 53) x0_ack!1658))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1657)
                                   ((_ to_fp 11 53) x0_ack!1658)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!1657)
                           ((_ to_fp 11 53) x0_ack!1658)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) b_ack!1657)
                 ((_ to_fp 11 53) x0_ack!1658)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!1657)
                                  ((_ to_fp 11 53) x0_ack!1658)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1657)
                                   ((_ to_fp 11 53) x0_ack!1658))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1657)
                                   ((_ to_fp 11 53) x0_ack!1658)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!1657)
                           ((_ to_fp 11 53) x0_ack!1658)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) b_ack!1657)
                 ((_ to_fp 11 53) x0_ack!1658)))))

(check-sat)
(exit)
