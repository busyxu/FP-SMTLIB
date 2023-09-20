(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_floor ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun b_ack!4 () (_ BitVec 64))
(assert (let ((a!1 (bvmul #x00000002
                  (ite (fp.geq ((_ to_fp 11 53) b_ack!4)
                               ((_ to_fp 11 53) #x0000000000000000))
                       #x00000001
                       #xffffffff)))
      (a!2 (CF_floor (fp.div roundNearestTiesToEven
                             (fp.abs ((_ to_fp 11 53) b_ack!4))
                             ((_ to_fp 11 53) #x401921fb54442d18)))))
  (FPCHECK_FMUL_OVERFLOW ((_ to_fp 11 53) roundNearestTiesToEven a!1) a!2)))

(check-sat)
(exit)
