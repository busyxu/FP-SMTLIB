(declare-fun a_ack!89 () (_ BitVec 64))
(declare-fun c_ack!88 () (_ BitVec 64))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!89) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!88) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) c_ack!88)
                       ((_ to_fp 11 53) #x3ff0000000000000)))
       ((_ to_fp 11 53) #x3f847ae147ae147b)))

(check-sat)
(exit)
