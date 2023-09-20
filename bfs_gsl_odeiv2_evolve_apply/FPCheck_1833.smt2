(declare-fun t_ack!10493 () (_ BitVec 64))
(declare-fun t1_ack!10494 () (_ BitVec 64))
(declare-fun h_ack!10497 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun y0_ack!10495 () (_ BitVec 64))
(declare-fun y1_ack!10496 () (_ BitVec 64))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!10494)
                    ((_ to_fp 11 53) t_ack!10493))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!10494)
                    ((_ to_fp 11 53) t_ack!10493))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq (fp.sub roundNearestTiesToEven
                ((_ to_fp 11 53) t1_ack!10494)
                ((_ to_fp 11 53) t_ack!10493))
        ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.gt ((_ to_fp 11 53) h_ack!10497)
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!10494)
                    ((_ to_fp 11 53) t_ack!10493)))))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!10494)
                    ((_ to_fp 11 53) t_ack!10493))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4024000000000000)
                           ((_ to_fp 11 53) y1_ack!10496))
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) y0_ack!10495)
                                   ((_ to_fp 11 53) y0_ack!10495))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (FPCHECK_FMUL_ACCURACY
    #x3fa887ad701404ac
    (fp.sub roundNearestTiesToEven
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    ((_ to_fp 11 53) y0_ack!10495))
            a!1))))

(check-sat)
(exit)
