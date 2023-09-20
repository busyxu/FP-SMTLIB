(declare-fun c_ack!37 () (_ BitVec 64))
(declare-fun a_ack!38 () (_ BitVec 64))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!37) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!38) ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
