(declare-fun b_ack!141 () (_ BitVec 32))
(declare-fun a_ack!143 () (_ BitVec 32))
(declare-fun c_ack!142 () (_ BitVec 64))
(assert (not (bvslt b_ack!141 #x00000000)))
(assert (not (bvslt a_ack!143 b_ack!141)))
(assert (fp.lt ((_ to_fp 11 53) c_ack!142) ((_ to_fp 11 53) #xbff0000000000000)))

(check-sat)
(exit)
