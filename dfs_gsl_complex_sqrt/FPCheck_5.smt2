(declare-fun x_ack!13 () (_ BitVec 64))
(declare-fun y_ack!12 () (_ BitVec 64))
(declare-fun FPCHECK_FINVALID_SQRT
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.eq ((_ to_fp 11 53) x_ack!13) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.eq ((_ to_fp 11 53) y_ack!12) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.geq (fp.abs ((_ to_fp 11 53) x_ack!13))
             (fp.abs ((_ to_fp 11 53) y_ack!12)))))
(assert (FPCHECK_FINVALID_SQRT
  (fp.abs ((_ to_fp 11 53) y_ack!12))
  (fp.abs ((_ to_fp 11 53) y_ack!12))))

(check-sat)
(exit)
