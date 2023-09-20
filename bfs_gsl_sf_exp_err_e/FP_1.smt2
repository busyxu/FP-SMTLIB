(declare-fun b_ack!32 () (_ BitVec 64))
(declare-fun a_ack!33 () (_ BitVec 64))
(assert (fp.gt (fp.add roundNearestTiesToEven
               ((_ to_fp 11 53) a_ack!33)
               (fp.abs ((_ to_fp 11 53) b_ack!32)))
       ((_ to_fp 11 53) #x40862e42fefa39ef)))

(check-sat)
(exit)
