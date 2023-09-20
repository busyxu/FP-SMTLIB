(declare-fun a_ack!274 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!274))
            ((_ to_fp 11 53) #x3e50000000000000))))
(assert (not (fp.leq (fp.abs ((_ to_fp 11 53) a_ack!274))
             ((_ to_fp 11 53) #x4010000000000000))))
(assert (fp.leq (fp.abs ((_ to_fp 11 53) a_ack!274))
        ((_ to_fp 11 53) #x401c48c6001f1ea6)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!274))
                           (fp.abs ((_ to_fp 11 53) a_ack!274))))))
  (FPCHECK_FMUL_OVERFLOW
    #x4000000000000000
    (fp.div roundNearestTiesToEven
            (fp.sub roundNearestTiesToEven
                    a!1
                    ((_ to_fp 11 53) #x3fa51eb851eb851f))
            ((_ to_fp 11 53) #x3f95c28f5c28f5c3)))))

(check-sat)
(exit)
