(declare-fun a_ack!133 () (_ BitVec 64))
(declare-fun b_ack!132 () (_ BitVec 64))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!133) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!133))
       ((_ to_fp 11 53) #x3cb0000000000000)))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!132))
            ((_ to_fp 11 53) #x3cb0000000000000))))
(assert (fp.gt (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #x401921fb54442d18)
               ((_ to_fp 11 53) b_ack!132))
       ((_ to_fp 11 53) #x40862e42fefa39ef)))

(check-sat)
(exit)
