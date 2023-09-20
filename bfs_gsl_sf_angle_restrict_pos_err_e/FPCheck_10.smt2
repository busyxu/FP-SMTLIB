(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_floor ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun a_ack!15 () (_ BitVec 64))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (CF_floor (fp.div roundNearestTiesToEven
                                     ((_ to_fp 11 53) a_ack!15)
                                     ((_ to_fp 11 53) #x401921fb54442d18))))))
  (FPCHECK_FSUB_UNDERFLOW
    a_ack!15
    (fp.mul roundNearestTiesToEven a!1 ((_ to_fp 11 53) #x400921fb40000000)))))

(check-sat)
(exit)
