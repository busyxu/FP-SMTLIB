(declare-fun a_ack!9 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) a_ack!9) ((_ to_fp 11 53) #x4039000000000000)))
(assert (FPCHECK_FMUL_ACCURACY
  (fp.div roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!9)
          ((_ to_fp 11 53) #x3ff6a09e667f3bcd))
  (fp.div roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!9)
          ((_ to_fp 11 53) #x3ff6a09e667f3bcd))))

(check-sat)
(exit)
