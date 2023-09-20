(declare-fun a_ack!30 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun CF_exp ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!30) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!30))
            ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!30) ((_ to_fp 11 53) #x403205966f2b4f12)))
(assert (FPCHECK_FSUB_ACCURACY
  #x3ff0000000000000
  (CF_exp (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) #xc000000000000000)
                  ((_ to_fp 11 53) a_ack!30)))))

(check-sat)
(exit)
