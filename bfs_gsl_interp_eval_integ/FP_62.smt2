(declare-fun x1_ack!3245 () (_ BitVec 64))
(declare-fun x0_ack!3249 () (_ BitVec 64))
(declare-fun x2_ack!3246 () (_ BitVec 64))
(declare-fun b_ack!3248 () (_ BitVec 64))
(declare-fun a_ack!3247 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!3249) ((_ to_fp 11 53) x1_ack!3245)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!3245) ((_ to_fp 11 53) x2_ack!3246)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3245)
                       ((_ to_fp 11 53) x0_ack!3249))
               ((_ to_fp 11 53) x0_ack!3249))
       ((_ to_fp 11 53) x1_ack!3245)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!3245)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3245)
                       ((_ to_fp 11 53) x0_ack!3249)))
       ((_ to_fp 11 53) x0_ack!3249)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3246)
                       ((_ to_fp 11 53) x1_ack!3245))
               ((_ to_fp 11 53) x1_ack!3245))
       ((_ to_fp 11 53) x2_ack!3246)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!3246)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3246)
                       ((_ to_fp 11 53) x1_ack!3245)))
       ((_ to_fp 11 53) x1_ack!3245)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!3245)
                    ((_ to_fp 11 53) x0_ack!3249))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!3246)
                    ((_ to_fp 11 53) x1_ack!3245))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!3247) ((_ to_fp 11 53) b_ack!3248))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3247) ((_ to_fp 11 53) x0_ack!3249))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!3248) ((_ to_fp 11 53) x2_ack!3246))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!3247) ((_ to_fp 11 53) b_ack!3248))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3247) ((_ to_fp 11 53) x0_ack!3249))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!3247) ((_ to_fp 11 53) x1_ack!3245)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!3245) ((_ to_fp 11 53) a_ack!3247))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!3248) ((_ to_fp 11 53) x1_ack!3245))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!3248) ((_ to_fp 11 53) x2_ack!3246))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!3246)
                    ((_ to_fp 11 53) x1_ack!3245))
            ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
