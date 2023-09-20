(declare-fun P_ack!31 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (fp.eq ((_ to_fp 11 53) P_ack!31) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) P_ack!31) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.leq (fp.abs (fp.sub roundNearestTiesToEven
                        ((_ to_fp 11 53) P_ack!31)
                        ((_ to_fp 11 53) #x3fe0000000000000)))
        ((_ to_fp 11 53) #x3fdb333333333333)))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) P_ack!31)
                                  ((_ to_fp 11 53) #x3fe0000000000000)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) P_ack!31)
                                   ((_ to_fp 11 53) #x3fe0000000000000))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) P_ack!31)
                                   ((_ to_fp 11 53) #x3fe0000000000000)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) P_ack!31)
                           ((_ to_fp 11 53) #x3fe0000000000000)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) P_ack!31)
                 ((_ to_fp 11 53) #x3fe0000000000000)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) P_ack!31)
                                  ((_ to_fp 11 53) #x3fe0000000000000)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) P_ack!31)
                                   ((_ to_fp 11 53) #x3fe0000000000000))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) P_ack!31)
                                   ((_ to_fp 11 53) #x3fe0000000000000)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) P_ack!31)
                           ((_ to_fp 11 53) #x3fe0000000000000)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) P_ack!31)
                 ((_ to_fp 11 53) #x3fe0000000000000)))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fc71eb851eb851f)
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) P_ack!31)
                                   ((_ to_fp 11 53) #x3fe0000000000000))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) P_ack!31)
                                   ((_ to_fp 11 53) #x3fe0000000000000))))))
  (FPCHECK_FMUL_OVERFLOW a!1 #x40a39a296f7d925e)))

(check-sat)
(exit)
