(declare-fun b_ack!2028 () (_ BitVec 32))
(declare-fun a_ack!2030 () (_ BitVec 32))
(declare-fun c_ack!2029 () (_ BitVec 64))
(assert (not (bvslt b_ack!2028 #x00000000)))
(assert (not (bvslt a_ack!2030 b_ack!2028)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!2029) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!2029) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (= #x00000000 b_ack!2028))
(assert (not (bvslt a_ack!2030 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!2029) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!2029) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (= #x00000000 a_ack!2030)))
(assert (not (= #x00000001 a_ack!2030)))
(assert (not (= #x00000002 a_ack!2030)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!2029) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!2029) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (bvslt a_ack!2030 #x000186a0))
(assert (bvsle #x00000002 a_ack!2030))
(assert (bvsle #x00000003 a_ack!2030))

(check-sat)
(exit)
