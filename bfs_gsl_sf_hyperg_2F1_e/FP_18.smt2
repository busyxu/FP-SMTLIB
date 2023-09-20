(declare-fun a_ack!327 () (_ BitVec 64))
(declare-fun b_ack!325 () (_ BitVec 64))
(declare-fun c_ack!326 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) a_ack!327) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!325) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) c_ack!326) ((_ to_fp 11 53) #x0000000000000000)))

(check-sat)
(exit)
