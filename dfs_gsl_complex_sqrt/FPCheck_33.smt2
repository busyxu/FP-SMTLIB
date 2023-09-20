(declare-fun x_ack!96 () (_ BitVec 64))
(declare-fun y_ack!95 () (_ BitVec 64))
(declare-fun FPCHECK_FINVALID_SQRT
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!96) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.geq (fp.abs ((_ to_fp 11 53) x_ack!96))
             (fp.abs ((_ to_fp 11 53) y_ack!95)))))
(assert (FPCHECK_FINVALID_SQRT
  (fp.abs ((_ to_fp 11 53) y_ack!95))
  (fp.abs ((_ to_fp 11 53) y_ack!95))))

(check-sat)
(exit)
