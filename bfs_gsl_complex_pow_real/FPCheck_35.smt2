(declare-fun x1_ack!142 () (_ BitVec 64))
(declare-fun y1_ack!141 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.eq ((_ to_fp 11 53) x1_ack!142) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.geq (fp.abs ((_ to_fp 11 53) x1_ack!142))
             (fp.abs ((_ to_fp 11 53) y1_ack!141)))))
(assert (FPCHECK_FDIV_ACCURACY
  (fp.abs ((_ to_fp 11 53) x1_ack!142))
  (fp.abs ((_ to_fp 11 53) y1_ack!141))))

(check-sat)
(exit)
