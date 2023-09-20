(declare-fun a_ack!289 () (_ BitVec 64))
(declare-fun b_ack!288 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) a_ack!289) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.lt ((_ to_fp 11 53) b_ack!288) ((_ to_fp 11 53) #x0000000000000000)))

(check-sat)
(exit)
