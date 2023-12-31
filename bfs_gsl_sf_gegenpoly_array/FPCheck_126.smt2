(declare-fun b_ack!517 () (_ BitVec 64))
(declare-fun a_ack!518 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!517) ((_ to_fp 11 53) #xbfe0000000000000))))
(assert (not (bvslt a_ack!518 #x00000000)))
(assert (not (= #x00000000 a_ack!518)))
(assert (fp.eq ((_ to_fp 11 53) b_ack!517) ((_ to_fp 11 53) #x0000000000000000)))
(assert (bvsle #x00000002 a_ack!518))
(assert (bvsle #x00000003 a_ack!518))
(assert (bvsle #x00000004 a_ack!518))
(assert (FPCHECK_FMUL_OVERFLOW #x4000000000000000 b_ack!517))

(check-sat)
(exit)
