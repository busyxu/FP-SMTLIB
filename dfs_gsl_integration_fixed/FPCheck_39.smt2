(declare-fun b_ack!105 () (_ BitVec 64))
(declare-fun alpha_ack!106 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!105) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) alpha_ack!106)
             ((_ to_fp 11 53) #xbff0000000000000))))
(assert (FPCHECK_FMUL_UNDERFLOW alpha_ack!106 #x3ff0000000000000))

(check-sat)
(exit)
