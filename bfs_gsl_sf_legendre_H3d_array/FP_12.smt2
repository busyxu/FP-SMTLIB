(declare-fun c_ack!110 () (_ BitVec 64))
(declare-fun a_ack!111 () (_ BitVec 32))
(assert (fp.lt ((_ to_fp 11 53) c_ack!110) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (bvsle #x00000000 a_ack!111)))

(check-sat)
(exit)
