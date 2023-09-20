(declare-fun y1_ack!38 () (_ BitVec 64))
(declare-fun x1_ack!39 () (_ BitVec 64))
(declare-fun FPCHECK_FINVALID_LOG
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq (fp.abs ((_ to_fp 11 53) x1_ack!39))
             (fp.abs ((_ to_fp 11 53) y1_ack!38)))))
(assert (FPCHECK_FINVALID_LOG
  (fp.abs ((_ to_fp 11 53) y1_ack!38))
  (fp.abs ((_ to_fp 11 53) y1_ack!38))))

(check-sat)
(exit)
