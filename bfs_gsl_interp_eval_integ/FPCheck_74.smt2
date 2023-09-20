(declare-fun x1_ack!789 () (_ BitVec 64))
(declare-fun x0_ack!796 () (_ BitVec 64))
(declare-fun x2_ack!790 () (_ BitVec 64))
(declare-fun b_ack!795 () (_ BitVec 64))
(declare-fun a_ack!794 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun y0_ack!791 () (_ BitVec 64))
(declare-fun y1_ack!792 () (_ BitVec 64))
(declare-fun y2_ack!793 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!796) ((_ to_fp 11 53) x1_ack!789)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!789) ((_ to_fp 11 53) x2_ack!790)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!789)
                       ((_ to_fp 11 53) x0_ack!796))
               ((_ to_fp 11 53) x0_ack!796))
       ((_ to_fp 11 53) x1_ack!789)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!789)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!789)
                       ((_ to_fp 11 53) x0_ack!796)))
       ((_ to_fp 11 53) x0_ack!796)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!790)
                       ((_ to_fp 11 53) x1_ack!789))
               ((_ to_fp 11 53) x1_ack!789))
       ((_ to_fp 11 53) x2_ack!790)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!790)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!790)
                       ((_ to_fp 11 53) x1_ack!789)))
       ((_ to_fp 11 53) x1_ack!789)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!789)
                    ((_ to_fp 11 53) x0_ack!796))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!790)
                    ((_ to_fp 11 53) x1_ack!789))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!794) ((_ to_fp 11 53) b_ack!795))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!794) ((_ to_fp 11 53) x0_ack!796))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!795) ((_ to_fp 11 53) x2_ack!790))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!794) ((_ to_fp 11 53) b_ack!795))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!794) ((_ to_fp 11 53) x0_ack!796))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!794) ((_ to_fp 11 53) x1_ack!789))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!795) ((_ to_fp 11 53) x0_ack!796)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!789)
                    ((_ to_fp 11 53) x0_ack!796))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!793)
                           ((_ to_fp 11 53) y1_ack!792))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!790)
                                   ((_ to_fp 11 53) x1_ack!789)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!792)
                           ((_ to_fp 11 53) y0_ack!791))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!789)
                                   ((_ to_fp 11 53) x0_ack!796)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!790)
                                   ((_ to_fp 11 53) x1_ack!789))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!789)
                                   ((_ to_fp 11 53) x0_ack!796))))))
  (FPCHECK_FSUB_ACCURACY
    (fp.div roundNearestTiesToEven
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4008000000000000)
                    (fp.sub roundNearestTiesToEven a!1 a!2))
            a!3)
    #x0000000000000000)))

(check-sat)
(exit)
