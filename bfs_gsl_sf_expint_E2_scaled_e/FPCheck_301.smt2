(declare-fun a_ack!389 () (_ BitVec 64))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!389) ((_ to_fp 11 53) #xc085eeaad5511c64))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!389) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!389) ((_ to_fp 11 53) #x4059000000000000))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!389) ((_ to_fp 11 53) #x4085eeaad5511c64)))
(assert (fp.eq ((_ to_fp 11 53) a_ack!389) ((_ to_fp 11 53) #x0000000000000000)))

(check-sat)
(exit)
