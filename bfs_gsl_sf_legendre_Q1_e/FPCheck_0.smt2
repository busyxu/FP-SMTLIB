(declare-fun a_ack!0 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!0) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!0) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (FPCHECK_FMUL_OVERFLOW a_ack!0 a_ack!0))

(check-sat)
(exit)
