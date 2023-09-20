(declare-fun a_ack!29 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!29)) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a_ack!29))
                           ((_ to_fp 11 53) a_ack!29))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
  (FPCHECK_FADD_UNDERFLOW
    a_ack!29
    (fp.div roundNearestTiesToEven
            (fp.mul roundNearestTiesToEven ((_ to_fp 11 53) a_ack!29) a!1)
            ((_ to_fp 11 53) #x4008000000000000)))))

(check-sat)
(exit)
