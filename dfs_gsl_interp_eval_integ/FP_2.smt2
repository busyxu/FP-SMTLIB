(declare-fun x1_ack!20 () (_ BitVec 64))
(declare-fun x0_ack!22 () (_ BitVec 64))
(declare-fun x2_ack!21 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!22) ((_ to_fp 11 53) x1_ack!20)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!20) ((_ to_fp 11 53) x2_ack!21)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!20)
                       ((_ to_fp 11 53) x0_ack!22))
               ((_ to_fp 11 53) x0_ack!22))
       ((_ to_fp 11 53) x1_ack!20)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!20)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!20)
                       ((_ to_fp 11 53) x0_ack!22)))
       ((_ to_fp 11 53) x0_ack!22)))

(check-sat)
(exit)
