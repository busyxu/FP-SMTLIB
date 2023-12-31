(declare-fun b_ack!312 () (_ BitVec 32))
(declare-fun a_ack!314 () (_ BitVec 32))
(declare-fun c_ack!313 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (bvslt b_ack!312 #x00000000)))
(assert (not (bvslt a_ack!314 b_ack!312)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!313) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!313) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (= #x00000000 b_ack!312))
(assert (not (bvslt a_ack!314 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!313) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!313) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (= #x00000000 a_ack!314)))
(assert (not (= #x00000001 a_ack!314)))
(assert (not (= #x00000002 a_ack!314)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!313) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!313) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (bvslt a_ack!314 #x000186a0))
(assert (bvsle #x00000002 a_ack!314))
(assert (FPCHECK_FMUL_OVERFLOW c_ack!313 #x4008000000000000))

(check-sat)
(exit)
