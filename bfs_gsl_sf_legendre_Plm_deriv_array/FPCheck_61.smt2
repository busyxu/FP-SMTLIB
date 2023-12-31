(declare-fun b_ack!226 () (_ BitVec 32))
(declare-fun a_ack!228 () (_ BitVec 32))
(declare-fun c_ack!227 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (bvslt b_ack!226 #x00000000)))
(assert (not (bvslt a_ack!228 b_ack!226)))
(assert (= #x00000000 b_ack!226))
(assert (not (bvslt a_ack!228 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!227) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!227) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (= #x00000000 a_ack!228)))
(assert (= #x00000001 a_ack!228))
(assert (bvsle #x00000000 a_ack!228))
(assert (bvsle #x00000001 a_ack!228))
(assert (FPCHECK_FSUB_UNDERFLOW c_ack!227 #x3ff0000000000000))

(check-sat)
(exit)
