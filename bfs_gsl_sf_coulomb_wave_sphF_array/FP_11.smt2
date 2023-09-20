(declare-fun d_ack!160 () (_ BitVec 64))
(declare-fun a_ack!161 () (_ BitVec 64))
(assert (not (fp.lt ((_ to_fp 11 53) d_ack!160) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!161) ((_ to_fp 11 53) #xbfe0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) d_ack!160) ((_ to_fp 11 53) #x0024000000000001))))
(assert (not (fp.eq ((_ to_fp 11 53) d_ack!160) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq ((_ to_fp 11 53) #x3ff0000000000000)
        (fp.mul roundNearestTiesToEven
                (fp.abs ((_ to_fp 11 53) d_ack!160))
                ((_ to_fp 11 53) #x0010000000000000))))

(check-sat)
(exit)
