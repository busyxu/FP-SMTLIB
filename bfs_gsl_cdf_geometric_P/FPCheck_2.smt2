(declare-fun x_ack!3 () (_ BitVec 32))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.lt ((_ to_fp 11 53) roundNearestTiesToEven x_ack!3)
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FSUB_ACCURACY
  #x8000000000000000
  ((_ to_fp 11 53) roundNearestTiesToEven x_ack!3)))

(check-sat)
(exit)
