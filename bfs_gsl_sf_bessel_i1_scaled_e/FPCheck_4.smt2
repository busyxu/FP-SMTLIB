(declare-fun a_ack!5 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) a_ack!5))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!5))
            ((_ to_fp 11 53) #x0020000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!5))
            ((_ to_fp 11 53) #x3e66a09e667f3bcd))))
(assert (fp.leq (fp.abs ((_ to_fp 11 53) a_ack!5)) ((_ to_fp 11 53) #x4008000000000000)))
(assert (FPCHECK_FMUL_UNDERFLOW
  (fp.abs ((_ to_fp 11 53) a_ack!5))
  (fp.abs ((_ to_fp 11 53) a_ack!5))))

(check-sat)
(exit)
