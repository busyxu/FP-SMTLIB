(declare-fun x_ack!938 () (_ BitVec 64))
(declare-fun nu1_ack!936 () (_ BitVec 64))
(declare-fun nu2_ack!937 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!938) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) x_ack!938) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!938) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!938) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) nu1_ack!936) ((_ to_fp 11 53) #x40f86a0000000000))))
(assert (fp.gt ((_ to_fp 11 53) nu2_ack!937) ((_ to_fp 11 53) #x40f86a0000000000)))
(assert (fp.lt ((_ to_fp 11 53) nu1_ack!936) ((_ to_fp 11 53) #x4024000000000000)))
(assert (fp.lt ((_ to_fp 11 53) x_ack!938)
       (fp.div roundNearestTiesToEven
               ((_ to_fp 11 53) nu2_ack!937)
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) nu1_ack!936)
                       ((_ to_fp 11 53) nu2_ack!937)))))
(assert (not (fp.leq ((_ to_fp 11 53) nu1_ack!936) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) nu2_ack!937)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu1_ack!936)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x4000000000000000)))))
  (fp.lt (fp.mul roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) #x8000000000000000)
                         a!1)
                 ((_ to_fp 11 53) #x8020000000000000))
         ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
