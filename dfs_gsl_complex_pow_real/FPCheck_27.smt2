(declare-fun x1_ack!127 () (_ BitVec 64))
(declare-fun y1_ack!126 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_INVALID
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.eq ((_ to_fp 11 53) x1_ack!127) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq (fp.abs ((_ to_fp 11 53) x1_ack!127))
        (fp.abs ((_ to_fp 11 53) y1_ack!126))))
(assert (FPCHECK_FDIV_INVALID
  (fp.abs ((_ to_fp 11 53) y1_ack!126))
  (fp.abs ((_ to_fp 11 53) x1_ack!127))))

(check-sat)
(exit)
