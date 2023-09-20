(declare-fun y1_ack!12 () (_ BitVec 64))
(declare-fun x1_ack!13 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ZERO
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.geq (fp.abs ((_ to_fp 11 53) x1_ack!13))
        (fp.abs ((_ to_fp 11 53) y1_ack!12))))
(assert (FPCHECK_FDIV_ZERO
  (fp.abs ((_ to_fp 11 53) y1_ack!12))
  (fp.abs ((_ to_fp 11 53) x1_ack!13))))

(check-sat)
(exit)
