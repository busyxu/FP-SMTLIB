(declare-fun a_ack!18 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) a_ack!18) ((_ to_fp 11 53) #xc085eeaad5511c64)))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!18) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!18) ((_ to_fp 11 53) #x4059000000000000)))
(assert (fp.lt ((_ to_fp 11 53) a_ack!18) ((_ to_fp 11 53) #xc085eeaad5511c64)))
(assert (fp.leq ((_ to_fp 11 53) a_ack!18) ((_ to_fp 11 53) #xc024000000000000)))

(check-sat)
(exit)
