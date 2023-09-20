(declare-fun a_ack!122 () (_ BitVec 64))
(declare-fun b_ack!120 () (_ BitVec 64))
(declare-fun c_ack!121 () (_ BitVec 64))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!122) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!120) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) c_ack!121) ((_ to_fp 11 53) #x0000000000000000)))

(check-sat)
(exit)
