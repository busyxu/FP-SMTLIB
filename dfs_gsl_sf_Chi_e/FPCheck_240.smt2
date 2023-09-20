(declare-fun a_ack!315 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    ((_ to_fp 11 53) a_ack!315))
            ((_ to_fp 11 53) #xc085eeaad5511c64))))
(assert (not (fp.leq (fp.sub roundNearestTiesToEven
                     ((_ to_fp 11 53) #x8000000000000000)
                     ((_ to_fp 11 53) a_ack!315))
             ((_ to_fp 11 53) #xc024000000000000))))
(assert (not (fp.leq (fp.sub roundNearestTiesToEven
                     ((_ to_fp 11 53) #x8000000000000000)
                     ((_ to_fp 11 53) a_ack!315))
             ((_ to_fp 11 53) #xc010000000000000))))
(assert (fp.leq (fp.sub roundNearestTiesToEven
                ((_ to_fp 11 53) #x8000000000000000)
                ((_ to_fp 11 53) a_ack!315))
        ((_ to_fp 11 53) #xbff0000000000000)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a_ack!315)))
                   ((_ to_fp 11 53) #x4014000000000000))))
  (FPCHECK_FMUL_OVERFLOW
    #x4000000000000000
    (fp.div roundNearestTiesToEven a!1 ((_ to_fp 11 53) #x4008000000000000)))))

(check-sat)
(exit)
