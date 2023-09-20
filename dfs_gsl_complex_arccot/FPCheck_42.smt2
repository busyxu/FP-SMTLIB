(declare-fun x_ack!137 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun y_ack!136 () (_ BitVec 64))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!137) ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FSUB_OVERFLOW
  #x8000000000000000
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) y_ack!136)
          ((_ to_fp 11 53) #x7fc0000000000000))))

(check-sat)
(exit)
