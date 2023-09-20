(declare-fun a_ack!194 () (_ BitVec 64))
(declare-fun b_ack!193 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!194) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!194))
            (fp.abs ((_ to_fp 11 53) b_ack!193)))))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!194))
            (fp.abs ((_ to_fp 11 53) b_ack!193)))))
(assert (FPCHECK_FDIV_OVERFLOW
  (fp.abs ((_ to_fp 11 53) b_ack!193))
  (fp.abs ((_ to_fp 11 53) b_ack!193))))

(check-sat)
(exit)
