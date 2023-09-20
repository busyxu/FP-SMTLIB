(declare-fun t_ack!45 () (_ BitVec 64))
(declare-fun t1_ack!44 () (_ BitVec 64))
(assert (fp.lt (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) t1_ack!44)
                       ((_ to_fp 11 53) t_ack!45)))
       ((_ to_fp 11 53) #x0000000000000000)))

(check-sat)
(exit)
