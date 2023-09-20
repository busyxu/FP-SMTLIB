(declare-fun a_ack!38 () (_ BitVec 64))
(declare-fun x_ack!40 () (_ BitVec 64))
(declare-fun b_ack!39 () (_ BitVec 64))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!40) ((_ to_fp 11 53) a_ack!38))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!40) ((_ to_fp 11 53) b_ack!39))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!39)
                       ((_ to_fp 11 53) a_ack!38))
               ((_ to_fp 11 53) a_ack!38))
       ((_ to_fp 11 53) b_ack!39)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) b_ack!39)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!39)
                       ((_ to_fp 11 53) a_ack!38)))
       ((_ to_fp 11 53) a_ack!38)))

(check-sat)
(exit)
