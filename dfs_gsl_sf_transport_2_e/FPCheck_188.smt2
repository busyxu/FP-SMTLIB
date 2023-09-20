(declare-fun a_ack!260 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!260) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!260) ((_ to_fp 11 53) #x3e68000000000000)))
(assert (FPCHECK_FMUL_UNDERFLOW a_ack!260 a_ack!260))

(check-sat)
(exit)
