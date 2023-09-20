(declare-fun a_ack!84 () (_ BitVec 64))
(declare-fun b_ack!83 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!84) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!84))
            (fp.abs ((_ to_fp 11 53) b_ack!83)))))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!84)) (fp.abs ((_ to_fp 11 53) b_ack!83))))
(assert (FPCHECK_FDIV_OVERFLOW
  (fp.abs ((_ to_fp 11 53) b_ack!83))
  (fp.abs ((_ to_fp 11 53) a_ack!84))))

(check-sat)
(exit)
