(declare-fun y1_ack!82 () (_ BitVec 64))
(declare-fun x1_ack!85 () (_ BitVec 64))
(declare-fun y2_ack!84 () (_ BitVec 64))
(declare-fun x2_ack!83 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq (fp.abs ((_ to_fp 11 53) x1_ack!85))
             (fp.abs ((_ to_fp 11 53) y1_ack!82)))))
(assert (not (fp.eq ((_ to_fp 11 53) x1_ack!85) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq (fp.abs ((_ to_fp 11 53) x2_ack!83))
        (fp.abs ((_ to_fp 11 53) y2_ack!84))))
(assert (FPCHECK_FDIV_ACCURACY
  (fp.abs ((_ to_fp 11 53) y2_ack!84))
  (fp.abs ((_ to_fp 11 53) x2_ack!83))))

(check-sat)
(exit)
