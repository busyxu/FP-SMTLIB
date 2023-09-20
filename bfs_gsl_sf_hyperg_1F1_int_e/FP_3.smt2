(declare-fun c_ack!20 () (_ BitVec 64))
(declare-fun b_ack!19 () (_ BitVec 32))
(declare-fun a_ack!21 () (_ BitVec 32))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!20) ((_ to_fp 11 53) #x0000000000000000))))
(assert (= a_ack!21 b_ack!19))
(assert (fp.gt ((_ to_fp 11 53) c_ack!20) ((_ to_fp 11 53) #x40862e42fefa39ef)))

(check-sat)
(exit)
