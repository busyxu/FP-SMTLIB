(declare-fun nu1_ack!795 () (_ BitVec 64))
(declare-fun nu2_ack!796 () (_ BitVec 64))
(declare-fun x_ack!797 () (_ BitVec 64))
(assert (not (and (fp.eq ((_ to_fp 11 53) nu2_ack!796)
                 ((_ to_fp 11 53) #x0000000000000000))
          (fp.eq ((_ to_fp 11 53) nu1_ack!795)
                 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!797)
            (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) nu2_ack!796)
                    ((_ to_fp 11 53) nu1_ack!795)))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) nu2_ack!796)
                           ((_ to_fp 11 53) nu1_ack!795))
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu2_ack!796)
                                   ((_ to_fp 11 53) nu1_ack!795))
                           ((_ to_fp 11 53) x_ack!797)))))
  (not (fp.eq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) nu2_ack!796)
                           ((_ to_fp 11 53) nu1_ack!795))
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu2_ack!796)
                                   ((_ to_fp 11 53) nu1_ack!795))
                           ((_ to_fp 11 53) x_ack!797)))))
  (not (fp.eq a!1 ((_ to_fp 11 53) #x3ff0000000000000)))))
(assert (fp.gt (fp.div roundNearestTiesToEven
               ((_ to_fp 11 53) nu2_ack!796)
               ((_ to_fp 11 53) #x4000000000000000))
       ((_ to_fp 11 53) #x40f86a0000000000)))
(assert (fp.lt (fp.div roundNearestTiesToEven
               ((_ to_fp 11 53) nu1_ack!795)
               ((_ to_fp 11 53) #x4000000000000000))
       ((_ to_fp 11 53) #x4024000000000000)))

(check-sat)
(exit)
