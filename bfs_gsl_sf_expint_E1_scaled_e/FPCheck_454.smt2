(declare-fun a_ack!598 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!598) ((_ to_fp 11 53) #xc085eeaad5511c64))))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!598) ((_ to_fp 11 53) #xc024000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!598) ((_ to_fp 11 53) #xc010000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!598) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!598) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!598) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!598) ((_ to_fp 11 53) #x4010000000000000))))
(assert (fp.leq ((_ to_fp 11 53) a_ack!598) ((_ to_fp 11 53) #x4085eeaad5511c64)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4020000000000000)
                                   ((_ to_fp 11 53) a_ack!598))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
  (fp.eq a!1
         (fp.div roundNearestTiesToEven
                 ((_ to_fp 11 53) #x4020000000000000)
                 ((_ to_fp 11 53) a_ack!598)))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4020000000000000)
                           ((_ to_fp 11 53) a_ack!598))
                   (fp.sub roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4020000000000000)
                                   ((_ to_fp 11 53) a_ack!598))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (fp.eq a!1 ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4020000000000000)
                                   ((_ to_fp 11 53) a_ack!598))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (FPCHECK_FDIV_OVERFLOW
    (fp.sub roundNearestTiesToEven
            (fp.sub roundNearestTiesToEven
                    a!1
                    ((_ to_fp 11 53) #xbff0000000000000))
            ((_ to_fp 11 53) #x3ff0000000000000))
    #x4000000000000000)))

(check-sat)
(exit)
