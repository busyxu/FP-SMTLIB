(declare-fun nu1_ack!291 () (_ BitVec 64))
(declare-fun nu2_ack!292 () (_ BitVec 64))
(declare-fun x_ack!293 () (_ BitVec 64))
(assert (not (and (fp.eq ((_ to_fp 11 53) nu2_ack!292)
                 ((_ to_fp 11 53) #x0000000000000000))
          (fp.eq ((_ to_fp 11 53) nu1_ack!291)
                 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!293)
            (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) nu2_ack!292)
                    ((_ to_fp 11 53) nu1_ack!291)))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) nu2_ack!292)
                           ((_ to_fp 11 53) nu1_ack!291))
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu2_ack!292)
                                   ((_ to_fp 11 53) nu1_ack!291))
                           ((_ to_fp 11 53) x_ack!293)))))
  (fp.eq a!1 ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
