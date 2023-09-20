(declare-fun b_ack!31 () (_ BitVec 64))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!31))
            ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!31))
            ((_ to_fp 11 53) #x3cc0000000000000))))
(assert (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!31)
                       ((_ to_fp 11 53) #x3ff0000000000000)))
       ((_ to_fp 11 53) #x3cc0000000000000)))

(check-sat)
(exit)
