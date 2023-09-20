(declare-fun a_ack!142 () (_ BitVec 64))
(declare-fun b_ack!141 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!142) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!142))
       (fp.abs ((_ to_fp 11 53) b_ack!141))))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!142))
            (fp.abs ((_ to_fp 11 53) b_ack!141)))))
(assert (FPCHECK_FDIV_OVERFLOW
  (fp.abs ((_ to_fp 11 53) a_ack!142))
  (fp.abs ((_ to_fp 11 53) b_ack!141))))

(check-sat)
(exit)
