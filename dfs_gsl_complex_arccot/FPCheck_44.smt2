(declare-fun x_ack!145 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun y_ack!144 () (_ BitVec 64))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!145) ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FSUB_ACCURACY
  #x8000000000000000
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) y_ack!144)
          ((_ to_fp 11 53) #x7fc0000000000000))))

(check-sat)
(exit)
