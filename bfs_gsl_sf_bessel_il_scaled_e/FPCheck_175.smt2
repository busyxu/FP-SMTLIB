(declare-fun b_ack!646 () (_ BitVec 64))
(declare-fun a_ack!647 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!646) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt a_ack!647 #x00000000)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!646) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #x00000000 a_ack!647)))
(assert (not (= #x00000001 a_ack!647)))
(assert (not (= #x00000002 a_ack!647)))
(assert (FPCHECK_FMUL_ACCURACY b_ack!646 b_ack!646))

(check-sat)
(exit)
