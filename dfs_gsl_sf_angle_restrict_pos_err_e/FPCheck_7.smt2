(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(declare-fun CF_floor ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun a_ack!10 () (_ BitVec 64))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (CF_floor (fp.div roundNearestTiesToEven
                                     ((_ to_fp 11 53) a_ack!10)
                                     ((_ to_fp 11 53) #x401921fb54442d18))))))
  (FPCHECK_FMUL_UNDERFLOW a!1 #x400921fb40000000)))

(check-sat)
(exit)
