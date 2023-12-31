(declare-fun b_ack!407 () (_ BitVec 32))
(declare-fun a_ack!409 () (_ BitVec 32))
(declare-fun c_ack!408 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (bvslt b_ack!407 #x00000000)))
(assert (not (bvslt a_ack!409 #x00000000)))
(assert (not (= #x00000000 b_ack!407)))
(assert (not (= #x00000001 b_ack!407)))
(assert (not (= #x00000000 a_ack!409)))
(assert (= #x00000001 a_ack!409))
(assert (not (bvslt b_ack!407 #x00000000)))
(assert (not (= #x00000000 b_ack!407)))
(assert (not (= #x00000001 b_ack!407)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!408) ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_UNDERFLOW #x4000000000000000 c_ack!408))

(check-sat)
(exit)
