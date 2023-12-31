(declare-fun alpha1_ack!2282 () (_ BitVec 64))
(declare-fun beta_ack!2283 () (_ BitVec 64))
(declare-fun mu_ack!2284 () (_ BitVec 32))
(declare-fun nu_ack!2285 () (_ BitVec 32))
(declare-fun FPCHECK_FADD_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.lt ((_ to_fp 11 53) alpha1_ack!2282)
            ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) beta_ack!2283)
            ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (= #x00000000 mu_ack!2284)))
(assert (= #x00000001 mu_ack!2284))
(assert (= #x00000000 nu_ack!2285))
(assert (FPCHECK_FADD_UNDERFLOW alpha1_ack!2282 #x4000000000000000))

(check-sat)
(exit)
