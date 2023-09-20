(declare-fun x1_ack!7857 () (_ BitVec 64))
(declare-fun x0_ack!7861 () (_ BitVec 64))
(declare-fun x2_ack!7858 () (_ BitVec 64))
(declare-fun b_ack!7860 () (_ BitVec 64))
(declare-fun a_ack!7859 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!7861) ((_ to_fp 11 53) x1_ack!7857)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!7857) ((_ to_fp 11 53) x2_ack!7858)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7857)
                       ((_ to_fp 11 53) x0_ack!7861))
               ((_ to_fp 11 53) x0_ack!7861))
       ((_ to_fp 11 53) x1_ack!7857)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!7857)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7857)
                       ((_ to_fp 11 53) x0_ack!7861)))
       ((_ to_fp 11 53) x0_ack!7861)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7858)
                       ((_ to_fp 11 53) x1_ack!7857))
               ((_ to_fp 11 53) x1_ack!7857))
       ((_ to_fp 11 53) x2_ack!7858)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!7858)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7858)
                       ((_ to_fp 11 53) x1_ack!7857)))
       ((_ to_fp 11 53) x1_ack!7857)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7857)
                    ((_ to_fp 11 53) x0_ack!7861))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!7858)
                    ((_ to_fp 11 53) x1_ack!7857))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!7859) ((_ to_fp 11 53) b_ack!7860))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7859) ((_ to_fp 11 53) x0_ack!7861))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!7860) ((_ to_fp 11 53) x2_ack!7858))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!7859) ((_ to_fp 11 53) b_ack!7860))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7859) ((_ to_fp 11 53) x0_ack!7861))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!7859) ((_ to_fp 11 53) x1_ack!7857))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!7860) ((_ to_fp 11 53) x0_ack!7861))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!7860) ((_ to_fp 11 53) x1_ack!7857)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!7857) ((_ to_fp 11 53) b_ack!7860))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7857)
                    ((_ to_fp 11 53) x0_ack!7861))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!7858)
                    ((_ to_fp 11 53) x1_ack!7857))
            ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
