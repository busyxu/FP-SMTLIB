(declare-fun a_ack!36 () (_ BitVec 64))
(assert (not (fp.geq (fp.mul roundNearestTiesToEven
                     ((_ to_fp 11 53) a_ack!36)
                     ((_ to_fp 11 53) a_ack!36))
             ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.geq (fp.mul roundNearestTiesToEven
                ((_ to_fp 11 53) a_ack!36)
                ((_ to_fp 11 53) a_ack!36))
        ((_ to_fp 11 53) #x3feffffff8000000)))

(check-sat)
(exit)
