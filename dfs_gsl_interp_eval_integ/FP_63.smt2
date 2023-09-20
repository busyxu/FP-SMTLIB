(declare-fun x1_ack!3370 () (_ BitVec 64))
(declare-fun x0_ack!3374 () (_ BitVec 64))
(declare-fun x2_ack!3371 () (_ BitVec 64))
(declare-fun b_ack!3373 () (_ BitVec 64))
(declare-fun a_ack!3372 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!3374) ((_ to_fp 11 53) x1_ack!3370)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!3370) ((_ to_fp 11 53) x2_ack!3371)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3370)
                       ((_ to_fp 11 53) x0_ack!3374))
               ((_ to_fp 11 53) x0_ack!3374))
       ((_ to_fp 11 53) x1_ack!3370)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!3370)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3370)
                       ((_ to_fp 11 53) x0_ack!3374)))
       ((_ to_fp 11 53) x0_ack!3374)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3371)
                       ((_ to_fp 11 53) x1_ack!3370))
               ((_ to_fp 11 53) x1_ack!3370))
       ((_ to_fp 11 53) x2_ack!3371)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!3371)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3371)
                       ((_ to_fp 11 53) x1_ack!3370)))
       ((_ to_fp 11 53) x1_ack!3370)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!3370)
                    ((_ to_fp 11 53) x0_ack!3374))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!3371)
                    ((_ to_fp 11 53) x1_ack!3370))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!3372) ((_ to_fp 11 53) b_ack!3373))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3372) ((_ to_fp 11 53) x0_ack!3374))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!3373) ((_ to_fp 11 53) x2_ack!3371))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!3372) ((_ to_fp 11 53) b_ack!3373))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3372) ((_ to_fp 11 53) x0_ack!3374))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!3372) ((_ to_fp 11 53) x1_ack!3370))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!3373) ((_ to_fp 11 53) x0_ack!3374))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!3373) ((_ to_fp 11 53) x1_ack!3370))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!3370)
                    ((_ to_fp 11 53) x0_ack!3374))
            ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
