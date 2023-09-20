(declare-fun b_ack!45 () (_ BitVec 64))
(declare-fun a_ack!46 () (_ BitVec 64))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x8000000000000000)
               ((_ to_fp 11 53) b_ack!45))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.geq (fp.sub roundNearestTiesToEven
                ((_ to_fp 11 53) #x3ff0000000000000)
                ((_ to_fp 11 53) a_ack!46))
        ((_ to_fp 11 53) #x3ff0000000000000)))

(check-sat)
(exit)
