(declare-fun x1_ack!3095 () (_ BitVec 64))
(declare-fun x0_ack!3101 () (_ BitVec 64))
(declare-fun x2_ack!3096 () (_ BitVec 64))
(declare-fun b_ack!3100 () (_ BitVec 64))
(declare-fun a_ack!3099 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun y0_ack!3097 () (_ BitVec 64))
(declare-fun y1_ack!3098 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!3101) ((_ to_fp 11 53) x1_ack!3095)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!3095) ((_ to_fp 11 53) x2_ack!3096)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3095)
                       ((_ to_fp 11 53) x0_ack!3101))
               ((_ to_fp 11 53) x0_ack!3101))
       ((_ to_fp 11 53) x1_ack!3095)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!3095)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3095)
                       ((_ to_fp 11 53) x0_ack!3101)))
       ((_ to_fp 11 53) x0_ack!3101)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3096)
                       ((_ to_fp 11 53) x1_ack!3095))
               ((_ to_fp 11 53) x1_ack!3095))
       ((_ to_fp 11 53) x2_ack!3096)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!3096)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3096)
                       ((_ to_fp 11 53) x1_ack!3095)))
       ((_ to_fp 11 53) x1_ack!3095)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!3095)
                    ((_ to_fp 11 53) x0_ack!3101))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!3096)
                    ((_ to_fp 11 53) x1_ack!3095))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!3099) ((_ to_fp 11 53) b_ack!3100))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3099) ((_ to_fp 11 53) x0_ack!3101))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!3100) ((_ to_fp 11 53) x2_ack!3096))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!3099) ((_ to_fp 11 53) b_ack!3100))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3099) ((_ to_fp 11 53) x0_ack!3101))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!3099) ((_ to_fp 11 53) x1_ack!3095))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!3100) ((_ to_fp 11 53) x0_ack!3101))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!3100) ((_ to_fp 11 53) x1_ack!3095))))
(assert (FPCHECK_FSUB_UNDERFLOW y1_ack!3098 y0_ack!3097))

(check-sat)
(exit)
