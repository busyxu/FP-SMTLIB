(declare-fun c_ack!41 () (_ BitVec 64))
(declare-fun a_ack!42 () (_ BitVec 32))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!41) ((_ to_fp 11 53) #x0000000000000000))))
(assert (bvslt a_ack!42 #x00000000))

(check-sat)
(exit)
