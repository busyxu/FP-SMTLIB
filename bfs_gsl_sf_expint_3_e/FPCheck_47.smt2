(declare-fun a_ack!75 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!75) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!75) ((_ to_fp 11 53) #x3ee4519884312501))))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!75) ((_ to_fp 11 53) #x4000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!75) ((_ to_fp 11 53) #x400a6d14485c38d5)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4030000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!75)
                                   ((_ to_fp 11 53) a_ack!75))
                           ((_ to_fp 11 53) a_ack!75)))))
  (FPCHECK_FMUL_ACCURACY
    #x4000000000000000
    (fp.sub roundNearestTiesToEven a!1 ((_ to_fp 11 53) #x3ff0000000000000)))))

(check-sat)
(exit)
