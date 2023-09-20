(declare-fun y1_ack!814 () (_ BitVec 64))
(declare-fun x1_ack!815 () (_ BitVec 64))
(declare-fun FPCHECK_FINVALID_LOG
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq (fp.abs ((_ to_fp 11 53) x1_ack!815))
             (fp.abs ((_ to_fp 11 53) y1_ack!814)))))
(assert (FPCHECK_FINVALID_LOG
  (fp.abs ((_ to_fp 11 53) y1_ack!814))
  (fp.abs ((_ to_fp 11 53) y1_ack!814))))

(check-sat)
(exit)
