(declare-fun a_ack!392 () (_ BitVec 64))
(declare-fun b_ack!390 () (_ BitVec 64))
(declare-fun c_ack!391 () (_ BitVec 64))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!392) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!390) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.lt ((_ to_fp 11 53) c_ack!391) ((_ to_fp 11 53) #x0000000000000000)))

(check-sat)
(exit)
