(declare-fun mu_ack!189 () (_ BitVec 64))
(declare-fun x_ack!190 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (fp.gt ((_ to_fp 11 53) mu_ack!189) ((_ to_fp 11 53) #x403e000000000000)))
(assert (fp.lt (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) x_ack!190)
               ((_ to_fp 11 53) x_ack!190))
       (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #x4024000000000000)
               ((_ to_fp 11 53) mu_ack!189))))
(assert (FPCHECK_FMUL_UNDERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) mu_ack!189)
          ((_ to_fp 11 53) #x3fe0000000000000))
  #x0000000000000000))

(check-sat)
(exit)
