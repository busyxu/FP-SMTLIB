(declare-fun FPCHECK_FMUL_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun CF_floor ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun a_ack!8 () (_ BitVec 64))
(assert (let ((a!1 (CF_floor (fp.add roundNearestTiesToEven
                             (fp.div roundNearestTiesToEven
                                     ((_ to_fp 11 53) a_ack!8)
                                     ((_ to_fp 11 53) #x400921fb54442d18))
                             ((_ to_fp 11 53) #x3fe0000000000000)))))
  (FPCHECK_FMUL_OVERFLOW a!1 #x400921fb54442d18)))

(check-sat)
(exit)
