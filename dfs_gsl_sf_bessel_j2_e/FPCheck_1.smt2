(declare-fun a_ack!5 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!5) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!5))
            ((_ to_fp 11 53) #x2020000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!5))
            ((_ to_fp 11 53) #x3ff4cccccccccccd))))
(assert (FPCHECK_FMUL_UNDERFLOW a_ack!5 a_ack!5))

(check-sat)
(exit)
