(declare-fun y_ack!78 () (_ BitVec 64))
(declare-fun x_ack!79 () (_ BitVec 64))
(declare-fun FPCHECK_FINVALID_LOG
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq (fp.abs ((_ to_fp 11 53) x_ack!79))
             (fp.abs ((_ to_fp 11 53) y_ack!78)))))
(assert (FPCHECK_FINVALID_LOG
  (fp.abs ((_ to_fp 11 53) y_ack!78))
  (fp.abs ((_ to_fp 11 53) y_ack!78))))

(check-sat)
(exit)
