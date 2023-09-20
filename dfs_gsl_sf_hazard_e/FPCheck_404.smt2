(declare-fun a_ack!597 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) a_ack!597) ((_ to_fp 11 53) #x4039000000000000)))
(assert (fp.lt (fp.mul roundNearestTiesToEven
               (fp.div roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!597)
                       ((_ to_fp 11 53) #x3ff6a09e667f3bcd))
               (fp.div roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!597)
                       ((_ to_fp 11 53) #x3ff6a09e667f3bcd)))
       ((_ to_fp 11 53) #x3f9932cbb7f0cf30)))
(assert (FPCHECK_FMUL_UNDERFLOW
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x3fe0000000000000)
          ((_ to_fp 11 53) a_ack!597))
  a_ack!597))

(check-sat)
(exit)
