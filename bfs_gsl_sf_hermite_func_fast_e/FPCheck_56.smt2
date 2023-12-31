(declare-fun a_ack!243 () (_ BitVec 32))
(declare-fun b_ack!242 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (bvslt a_ack!243 #x000003e8))
(assert (not (bvslt a_ack!243 #x00000000)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!242) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #x00000000 a_ack!243)))
(assert (not (= #x00000001 a_ack!243)))
(assert (bvsle #x00000002 a_ack!243))
(assert (FPCHECK_FMUL_OVERFLOW #x3ff0000000000000 b_ack!242))

(check-sat)
(exit)
