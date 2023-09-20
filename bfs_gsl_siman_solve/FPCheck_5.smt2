(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_pow
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             (_ FloatingPoint 11 53))
(declare-fun x_initial_ack!9 () (_ BitVec 64))
(assert (FPCHECK_FSUB_UNDERFLOW
  #x8000000000000000
  (CF_pow (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x_initial_ack!9)
                  ((_ to_fp 11 53) #x3ff0000000000000))
          #x4000000000000000)))

(check-sat)
(exit)
