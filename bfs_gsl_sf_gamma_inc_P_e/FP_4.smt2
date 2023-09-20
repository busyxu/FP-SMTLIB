(declare-fun a_ack!44 () (_ BitVec 64))
(declare-fun b_ack!43 () (_ BitVec 64))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!44) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!43) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!43) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!43) ((_ to_fp 11 53) #x4034000000000000)))

(check-sat)
(exit)
