(declare-fun x_ack!126 () (_ BitVec 64))
(declare-fun y_ack!125 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!126) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.geq (fp.abs ((_ to_fp 11 53) x_ack!126))
             (fp.abs ((_ to_fp 11 53) y_ack!125)))))
(assert (FPCHECK_FADD_UNDERFLOW
  (fp.div roundNearestTiesToEven
          (fp.abs ((_ to_fp 11 53) x_ack!126))
          (fp.abs ((_ to_fp 11 53) y_ack!125)))
  #x7ff8000000000001))

(check-sat)
(exit)
