(declare-fun x1_ack!6689 () (_ BitVec 64))
(declare-fun x0_ack!6696 () (_ BitVec 64))
(declare-fun x2_ack!6690 () (_ BitVec 64))
(declare-fun b_ack!6695 () (_ BitVec 64))
(declare-fun a_ack!6694 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun y0_ack!6691 () (_ BitVec 64))
(declare-fun y1_ack!6692 () (_ BitVec 64))
(declare-fun y2_ack!6693 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!6696) ((_ to_fp 11 53) x1_ack!6689)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!6689) ((_ to_fp 11 53) x2_ack!6690)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6689)
                       ((_ to_fp 11 53) x0_ack!6696))
               ((_ to_fp 11 53) x0_ack!6696))
       ((_ to_fp 11 53) x1_ack!6689)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!6689)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6689)
                       ((_ to_fp 11 53) x0_ack!6696)))
       ((_ to_fp 11 53) x0_ack!6696)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6690)
                       ((_ to_fp 11 53) x1_ack!6689))
               ((_ to_fp 11 53) x1_ack!6689))
       ((_ to_fp 11 53) x2_ack!6690)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!6690)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6690)
                       ((_ to_fp 11 53) x1_ack!6689)))
       ((_ to_fp 11 53) x1_ack!6689)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!6689)
                    ((_ to_fp 11 53) x0_ack!6696))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!6690)
                    ((_ to_fp 11 53) x1_ack!6689))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!6694) ((_ to_fp 11 53) b_ack!6695))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6694) ((_ to_fp 11 53) x0_ack!6696))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!6695) ((_ to_fp 11 53) x2_ack!6690))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!6694) ((_ to_fp 11 53) b_ack!6695))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6694) ((_ to_fp 11 53) x0_ack!6696))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!6694) ((_ to_fp 11 53) x1_ack!6689))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!6695) ((_ to_fp 11 53) x0_ack!6696))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!6695) ((_ to_fp 11 53) x1_ack!6689)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!6689) ((_ to_fp 11 53) b_ack!6695))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!6689)
                    ((_ to_fp 11 53) x0_ack!6696))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!6690)
                    ((_ to_fp 11 53) x1_ack!6689))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!6693)
                           ((_ to_fp 11 53) y1_ack!6692))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!6690)
                                   ((_ to_fp 11 53) x1_ack!6689)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!6692)
                           ((_ to_fp 11 53) y0_ack!6691))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!6689)
                                   ((_ to_fp 11 53) x0_ack!6696)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!6690)
                                   ((_ to_fp 11 53) x1_ack!6689))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!6689)
                                   ((_ to_fp 11 53) x0_ack!6696))))))
  (FPCHECK_FMUL_ACCURACY
    #x4000000000000000
    (fp.div roundNearestTiesToEven
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4008000000000000)
                    (fp.sub roundNearestTiesToEven a!1 a!2))
            a!3))))

(check-sat)
(exit)
