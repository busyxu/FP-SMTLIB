(declare-fun y1_ack!798 () (_ BitVec 64))
(declare-fun x1_ack!799 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq (fp.abs ((_ to_fp 11 53) x1_ack!799))
             (fp.abs ((_ to_fp 11 53) y1_ack!798)))))
(assert (FPCHECK_FDIV_UNDERFLOW
  (fp.abs ((_ to_fp 11 53) x1_ack!799))
  (fp.abs ((_ to_fp 11 53) y1_ack!798))))

(check-sat)
(exit)
