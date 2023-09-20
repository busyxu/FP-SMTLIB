(declare-fun b_ack!31 () (_ BitVec 64))
(declare-fun a_ack!32 () (_ BitVec 64))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!31) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt ((_ to_fp 11 53) a_ack!32) ((_ to_fp 11 53) #x0000000000000000)))

(check-sat)
(exit)
