(declare-fun c_ack!114 () (_ BitVec 64))
(declare-fun a_ack!115 () (_ BitVec 32))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!114) ((_ to_fp 11 53) #x0000000000000000))))
(assert (bvslt a_ack!115 #x00000000))
(assert (bvsle #x00000000 a_ack!115))

(check-sat)
(exit)
