(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_floor ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun b_ack!14 () (_ BitVec 64))
(assert (FPCHECK_FSUB_UNDERFLOW
  b_ack!14
  (CF_floor (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) b_ack!14)
                    ((_ to_fp 11 53) #x3fe0000000000000)))))

(check-sat)
(exit)
