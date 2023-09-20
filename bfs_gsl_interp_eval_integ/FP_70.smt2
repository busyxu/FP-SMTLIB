(declare-fun x1_ack!3804 () (_ BitVec 64))
(declare-fun x0_ack!3808 () (_ BitVec 64))
(declare-fun x2_ack!3805 () (_ BitVec 64))
(declare-fun b_ack!3807 () (_ BitVec 64))
(declare-fun a_ack!3806 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!3808) ((_ to_fp 11 53) x1_ack!3804)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!3804) ((_ to_fp 11 53) x2_ack!3805)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3804)
                       ((_ to_fp 11 53) x0_ack!3808))
               ((_ to_fp 11 53) x0_ack!3808))
       ((_ to_fp 11 53) x1_ack!3804)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!3804)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3804)
                       ((_ to_fp 11 53) x0_ack!3808)))
       ((_ to_fp 11 53) x0_ack!3808)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3805)
                       ((_ to_fp 11 53) x1_ack!3804))
               ((_ to_fp 11 53) x1_ack!3804))
       ((_ to_fp 11 53) x2_ack!3805)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!3805)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3805)
                       ((_ to_fp 11 53) x1_ack!3804)))
       ((_ to_fp 11 53) x1_ack!3804)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!3804)
                    ((_ to_fp 11 53) x0_ack!3808))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!3805)
                    ((_ to_fp 11 53) x1_ack!3804))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!3806) ((_ to_fp 11 53) b_ack!3807))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3806) ((_ to_fp 11 53) x0_ack!3808))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!3807) ((_ to_fp 11 53) x2_ack!3805))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!3806) ((_ to_fp 11 53) b_ack!3807))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3806) ((_ to_fp 11 53) x0_ack!3808))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!3806) ((_ to_fp 11 53) x1_ack!3804)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!3804) ((_ to_fp 11 53) a_ack!3806))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!3807) ((_ to_fp 11 53) x1_ack!3804))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!3807) ((_ to_fp 11 53) x2_ack!3805)))
(assert (let ((a!1 (not (fp.eq (fp.sub roundNearestTiesToEven
                               ((_ to_fp 11 53) x2_ack!3805)
                               ((_ to_fp 11 53) x1_ack!3804))
                       ((_ to_fp 11 53) #x0000000000000000)))))
  (not a!1)))

(check-sat)
(exit)
