(declare-fun x_ack!160 () (_ BitVec 64))
(declare-fun y_ack!159 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!160) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.geq (fp.abs ((_ to_fp 11 53) x_ack!160))
             (fp.abs ((_ to_fp 11 53) y_ack!159)))))
(assert (FPCHECK_FADD_UNDERFLOW
  (fp.div roundNearestTiesToEven
          (fp.abs ((_ to_fp 11 53) x_ack!160))
          (fp.abs ((_ to_fp 11 53) y_ack!159)))
  #x7ff8000000000001))

(check-sat)
(exit)
