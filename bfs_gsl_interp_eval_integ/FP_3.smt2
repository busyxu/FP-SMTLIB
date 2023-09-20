(declare-fun x1_ack!38 () (_ BitVec 64))
(declare-fun x0_ack!40 () (_ BitVec 64))
(declare-fun x2_ack!39 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!40) ((_ to_fp 11 53) x1_ack!38)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!38) ((_ to_fp 11 53) x2_ack!39)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!38)
                       ((_ to_fp 11 53) x0_ack!40))
               ((_ to_fp 11 53) x0_ack!40))
       ((_ to_fp 11 53) x1_ack!38)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!38)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!38)
                       ((_ to_fp 11 53) x0_ack!40)))
       ((_ to_fp 11 53) x0_ack!40)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!39)
                       ((_ to_fp 11 53) x1_ack!38))
               ((_ to_fp 11 53) x1_ack!38))
       ((_ to_fp 11 53) x2_ack!39)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!39)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!39)
                       ((_ to_fp 11 53) x1_ack!38)))
       ((_ to_fp 11 53) x1_ack!38)))

(check-sat)
(exit)
