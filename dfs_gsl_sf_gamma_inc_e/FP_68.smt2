(declare-fun b_ack!1079 () (_ BitVec 64))
(declare-fun a_ack!1080 () (_ BitVec 64))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1079) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!1079) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq ((_ to_fp 11 53) a_ack!1080) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.lt ((_ to_fp 11 53) b_ack!1079) ((_ to_fp 11 53) #xc085eeaad5511c64)))

(check-sat)
(exit)
