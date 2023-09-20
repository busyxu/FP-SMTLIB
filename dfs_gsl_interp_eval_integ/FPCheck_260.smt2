(declare-fun x1_ack!3081 () (_ BitVec 64))
(declare-fun x0_ack!3087 () (_ BitVec 64))
(declare-fun x2_ack!3082 () (_ BitVec 64))
(declare-fun b_ack!3086 () (_ BitVec 64))
(declare-fun a_ack!3085 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun y0_ack!3083 () (_ BitVec 64))
(declare-fun y1_ack!3084 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!3087) ((_ to_fp 11 53) x1_ack!3081)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!3081) ((_ to_fp 11 53) x2_ack!3082)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3081)
                       ((_ to_fp 11 53) x0_ack!3087))
               ((_ to_fp 11 53) x0_ack!3087))
       ((_ to_fp 11 53) x1_ack!3081)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!3081)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3081)
                       ((_ to_fp 11 53) x0_ack!3087)))
       ((_ to_fp 11 53) x0_ack!3087)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3082)
                       ((_ to_fp 11 53) x1_ack!3081))
               ((_ to_fp 11 53) x1_ack!3081))
       ((_ to_fp 11 53) x2_ack!3082)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!3082)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3082)
                       ((_ to_fp 11 53) x1_ack!3081)))
       ((_ to_fp 11 53) x1_ack!3081)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!3081)
                    ((_ to_fp 11 53) x0_ack!3087))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!3082)
                    ((_ to_fp 11 53) x1_ack!3081))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!3085) ((_ to_fp 11 53) b_ack!3086))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3085) ((_ to_fp 11 53) x0_ack!3087))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!3086) ((_ to_fp 11 53) x2_ack!3082))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!3085) ((_ to_fp 11 53) b_ack!3086))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3085) ((_ to_fp 11 53) x0_ack!3087))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!3085) ((_ to_fp 11 53) x1_ack!3081))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!3086) ((_ to_fp 11 53) x0_ack!3087))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!3086) ((_ to_fp 11 53) x1_ack!3081))))
(assert (FPCHECK_FSUB_OVERFLOW y1_ack!3084 y0_ack!3083))

(check-sat)
(exit)
