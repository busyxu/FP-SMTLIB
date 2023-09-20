(declare-fun a_ack!25 () (_ BitVec 32))
(declare-fun b_ack!24 () (_ BitVec 64))
(assert (not (bvslt a_ack!25 #x00000000)))
(assert (fp.lt ((_ to_fp 11 53) b_ack!24) ((_ to_fp 11 53) #x0000000000000000)))
(assert (bvsle #x00000000 a_ack!25))
(assert (bvsle #x00000001 a_ack!25))

(check-sat)
(exit)
