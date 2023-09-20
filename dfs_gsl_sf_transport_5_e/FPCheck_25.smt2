(declare-fun a_ack!47 () (_ BitVec 64))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!47) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!47) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!47) ((_ to_fp 11 53) #x3e68000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!47) ((_ to_fp 11 53) #x4010000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!47) ((_ to_fp 11 53) #x404205966f2b4f12))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!47) ((_ to_fp 11 53) #x4348000000000000)))
(assert (fp.eq (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               ((_ to_fp 11 53) a_ack!47))
       ((_ to_fp 11 53) #x0000000000000000)))

(check-sat)
(exit)
