(declare-fun a_ack!5 () (_ BitVec 64))
(declare-fun b_ack!4 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (not (fp.eq ((_ to_fp 11 53) a_ack!5) ((_ to_fp 11 53) #x0000000000000000)))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!4) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!5))
            (fp.abs ((_ to_fp 11 53) b_ack!4)))))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!5))
            (fp.abs ((_ to_fp 11 53) b_ack!4)))))
(assert (FPCHECK_FDIV_OVERFLOW
  (fp.abs ((_ to_fp 11 53) b_ack!4))
  (fp.abs ((_ to_fp 11 53) b_ack!4))))

(check-sat)
(exit)
