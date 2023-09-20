(declare-fun x1_ack!3109 () (_ BitVec 64))
(declare-fun x0_ack!3115 () (_ BitVec 64))
(declare-fun x2_ack!3110 () (_ BitVec 64))
(declare-fun b_ack!3114 () (_ BitVec 64))
(declare-fun a_ack!3113 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun y0_ack!3111 () (_ BitVec 64))
(declare-fun y1_ack!3112 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!3115) ((_ to_fp 11 53) x1_ack!3109)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!3109) ((_ to_fp 11 53) x2_ack!3110)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3109)
                       ((_ to_fp 11 53) x0_ack!3115))
               ((_ to_fp 11 53) x0_ack!3115))
       ((_ to_fp 11 53) x1_ack!3109)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!3109)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3109)
                       ((_ to_fp 11 53) x0_ack!3115)))
       ((_ to_fp 11 53) x0_ack!3115)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3110)
                       ((_ to_fp 11 53) x1_ack!3109))
               ((_ to_fp 11 53) x1_ack!3109))
       ((_ to_fp 11 53) x2_ack!3110)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!3110)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3110)
                       ((_ to_fp 11 53) x1_ack!3109)))
       ((_ to_fp 11 53) x1_ack!3109)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!3109)
                    ((_ to_fp 11 53) x0_ack!3115))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!3110)
                    ((_ to_fp 11 53) x1_ack!3109))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!3113) ((_ to_fp 11 53) b_ack!3114))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3113) ((_ to_fp 11 53) x0_ack!3115))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!3114) ((_ to_fp 11 53) x2_ack!3110))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!3113) ((_ to_fp 11 53) b_ack!3114))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3113) ((_ to_fp 11 53) x0_ack!3115))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!3113) ((_ to_fp 11 53) x1_ack!3109))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!3114) ((_ to_fp 11 53) x0_ack!3115))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!3114) ((_ to_fp 11 53) x1_ack!3109))))
(assert (FPCHECK_FSUB_ACCURACY y1_ack!3112 y0_ack!3111))

(check-sat)
(exit)
