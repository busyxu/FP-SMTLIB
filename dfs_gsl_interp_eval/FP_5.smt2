(declare-fun x1_ack!94 () (_ BitVec 64))
(declare-fun x0_ack!96 () (_ BitVec 64))
(declare-fun x2_ack!95 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!96) ((_ to_fp 11 53) x1_ack!94)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!94) ((_ to_fp 11 53) x2_ack!95)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!94)
                       ((_ to_fp 11 53) x0_ack!96))
               ((_ to_fp 11 53) x0_ack!96))
       ((_ to_fp 11 53) x1_ack!94)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!94)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!94)
                       ((_ to_fp 11 53) x0_ack!96)))
       ((_ to_fp 11 53) x0_ack!96)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!95)
                       ((_ to_fp 11 53) x1_ack!94))
               ((_ to_fp 11 53) x1_ack!94))
       ((_ to_fp 11 53) x2_ack!95)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!95)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!95)
                       ((_ to_fp 11 53) x1_ack!94)))
       ((_ to_fp 11 53) x1_ack!94)))

(check-sat)
(exit)
