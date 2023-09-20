(declare-fun y1_ack!794 () (_ BitVec 64))
(declare-fun x1_ack!795 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq (fp.abs ((_ to_fp 11 53) x1_ack!795))
             (fp.abs ((_ to_fp 11 53) y1_ack!794)))))
(assert (FPCHECK_FDIV_OVERFLOW
  (fp.abs ((_ to_fp 11 53) x1_ack!795))
  (fp.abs ((_ to_fp 11 53) y1_ack!794))))

(check-sat)
(exit)
