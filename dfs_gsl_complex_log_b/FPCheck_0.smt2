(declare-fun y1_ack!0 () (_ BitVec 64))
(declare-fun x1_ack!1 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.geq (fp.abs ((_ to_fp 11 53) x1_ack!1)) (fp.abs ((_ to_fp 11 53) y1_ack!0))))
(assert (FPCHECK_FDIV_OVERFLOW
  (fp.abs ((_ to_fp 11 53) y1_ack!0))
  (fp.abs ((_ to_fp 11 53) x1_ack!1))))

(check-sat)
(exit)
