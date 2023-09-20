(declare-fun x1_ack!3155 () (_ BitVec 64))
(declare-fun x0_ack!3159 () (_ BitVec 64))
(declare-fun x2_ack!3156 () (_ BitVec 64))
(declare-fun b_ack!3158 () (_ BitVec 64))
(declare-fun a_ack!3157 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!3159) ((_ to_fp 11 53) x1_ack!3155)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!3155) ((_ to_fp 11 53) x2_ack!3156)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3155)
                       ((_ to_fp 11 53) x0_ack!3159))
               ((_ to_fp 11 53) x0_ack!3159))
       ((_ to_fp 11 53) x1_ack!3155)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!3155)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3155)
                       ((_ to_fp 11 53) x0_ack!3159)))
       ((_ to_fp 11 53) x0_ack!3159)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3156)
                       ((_ to_fp 11 53) x1_ack!3155))
               ((_ to_fp 11 53) x1_ack!3155))
       ((_ to_fp 11 53) x2_ack!3156)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!3156)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3156)
                       ((_ to_fp 11 53) x1_ack!3155)))
       ((_ to_fp 11 53) x1_ack!3155)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!3155)
                    ((_ to_fp 11 53) x0_ack!3159))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!3156)
                    ((_ to_fp 11 53) x1_ack!3155))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!3157) ((_ to_fp 11 53) b_ack!3158))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3157) ((_ to_fp 11 53) x0_ack!3159))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!3158) ((_ to_fp 11 53) x2_ack!3156))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!3157) ((_ to_fp 11 53) b_ack!3158))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3157) ((_ to_fp 11 53) x0_ack!3159))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!3157) ((_ to_fp 11 53) x1_ack!3155)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!3155) ((_ to_fp 11 53) a_ack!3157))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!3158) ((_ to_fp 11 53) x1_ack!3155))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!3158) ((_ to_fp 11 53) x2_ack!3156))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!3156)
                    ((_ to_fp 11 53) x1_ack!3155))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FSUB_ACCURACY b_ack!3158 a_ack!3157))

(check-sat)
(exit)
