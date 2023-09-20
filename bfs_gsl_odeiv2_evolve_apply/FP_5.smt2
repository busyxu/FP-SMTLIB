(declare-fun t_ack!7130 () (_ BitVec 64))
(declare-fun t1_ack!7131 () (_ BitVec 64))
(assert (fp.lt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) t1_ack!7131)
               ((_ to_fp 11 53) t_ack!7130))
       ((_ to_fp 11 53) #x0000000000000000)))

(check-sat)
(exit)
