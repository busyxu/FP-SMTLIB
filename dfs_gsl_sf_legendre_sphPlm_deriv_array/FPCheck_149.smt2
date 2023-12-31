(declare-fun b_ack!798 () (_ BitVec 32))
(declare-fun a_ack!800 () (_ BitVec 32))
(declare-fun c_ack!799 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (bvslt b_ack!798 #x00000000)))
(assert (not (bvslt a_ack!800 b_ack!798)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!799) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!799) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (= #x00000000 b_ack!798))
(assert (not (bvslt a_ack!800 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!799) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!799) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (= #x00000000 a_ack!800)))
(assert (not (= #x00000001 a_ack!800)))
(assert (bvsle #x00000002 a_ack!800))
(assert (bvsle #x00000003 a_ack!800))
(assert (bvsle #x00000004 a_ack!800))
(assert (bvsle #x00000005 a_ack!800))
(assert (bvsle #x00000006 a_ack!800))
(assert (FPCHECK_FMUL_ACCURACY c_ack!799 #x4026000000000000))

(check-sat)
(exit)
