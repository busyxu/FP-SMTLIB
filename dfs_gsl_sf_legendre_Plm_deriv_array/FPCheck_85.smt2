(declare-fun b_ack!405 () (_ BitVec 32))
(declare-fun a_ack!407 () (_ BitVec 32))
(declare-fun c_ack!406 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (bvslt b_ack!405 #x00000000)))
(assert (not (bvslt a_ack!407 b_ack!405)))
(assert (= #x00000000 b_ack!405))
(assert (not (bvslt a_ack!407 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!406) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!406) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (= #x00000000 a_ack!407)))
(assert (not (= #x00000001 a_ack!407)))
(assert (bvsle #x00000002 a_ack!407))
(assert (not (bvsle #x00000003 a_ack!407)))
(assert (bvsle #x00000000 a_ack!407))
(assert (bvsle #x00000001 a_ack!407))
(assert (FPCHECK_FSUB_UNDERFLOW c_ack!406 #x3ff0000000000000))

(check-sat)
(exit)
