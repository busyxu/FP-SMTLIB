(declare-fun a_ack!48 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun b_ack!47 () (_ BitVec 64))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!48) ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_UNDERFLOW b_ack!47 b_ack!47))

(check-sat)
(exit)
