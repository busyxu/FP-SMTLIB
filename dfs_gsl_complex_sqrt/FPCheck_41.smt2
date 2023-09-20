(declare-fun x_ack!122 () (_ BitVec 64))
(declare-fun y_ack!121 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!122) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.geq (fp.abs ((_ to_fp 11 53) x_ack!122))
             (fp.abs ((_ to_fp 11 53) y_ack!121)))))
(assert (FPCHECK_FADD_OVERFLOW
  (fp.div roundNearestTiesToEven
          (fp.abs ((_ to_fp 11 53) x_ack!122))
          (fp.abs ((_ to_fp 11 53) y_ack!121)))
  #x7ff8000000000001))

(check-sat)
(exit)
