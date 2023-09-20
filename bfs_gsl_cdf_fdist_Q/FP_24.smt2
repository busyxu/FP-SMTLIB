(declare-fun nu1_ack!594 () (_ BitVec 64))
(declare-fun nu2_ack!595 () (_ BitVec 64))
(declare-fun x_ack!596 () (_ BitVec 64))
(assert (not (and (fp.eq ((_ to_fp 11 53) nu2_ack!595)
                 ((_ to_fp 11 53) #x0000000000000000))
          (fp.eq ((_ to_fp 11 53) nu1_ack!594)
                 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (fp.lt ((_ to_fp 11 53) x_ack!596)
       (fp.div roundNearestTiesToEven
               ((_ to_fp 11 53) nu2_ack!595)
               ((_ to_fp 11 53) nu1_ack!594))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) x_ack!596)
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu2_ack!595)
                                   ((_ to_fp 11 53) nu1_ack!594))
                           ((_ to_fp 11 53) x_ack!596)))))
  (not (fp.eq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) x_ack!596)
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu2_ack!595)
                                   ((_ to_fp 11 53) nu1_ack!594))
                           ((_ to_fp 11 53) x_ack!596)))))
  (fp.eq a!1 ((_ to_fp 11 53) #x3ff0000000000000))))

(check-sat)
(exit)
