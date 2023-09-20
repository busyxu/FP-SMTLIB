(declare-fun b_ack!34 () (_ BitVec 64))
(declare-fun a_ack!35 () (_ BitVec 32))
(assert (fp.lt ((_ to_fp 11 53) b_ack!34) ((_ to_fp 11 53) #x0000000000000000)))
(assert (bvslt a_ack!35 #x00000000))

(check-sat)
(exit)
