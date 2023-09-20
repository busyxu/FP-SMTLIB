(declare-fun x_ack!30 () (_ BitVec 64))
(declare-fun y_ack!29 () (_ BitVec 64))
(declare-fun FPCHECK_FINVALID_SQRT
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.eq ((_ to_fp 11 53) x_ack!30) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.eq ((_ to_fp 11 53) y_ack!29) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.geq (fp.abs ((_ to_fp 11 53) x_ack!30))
             (fp.abs ((_ to_fp 11 53) y_ack!29)))))
(assert (FPCHECK_FINVALID_SQRT
  (fp.abs ((_ to_fp 11 53) y_ack!29))
  (fp.abs ((_ to_fp 11 53) y_ack!29))))

(check-sat)
(exit)
