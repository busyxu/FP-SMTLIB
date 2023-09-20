(declare-fun x1_ack!2672 () (_ BitVec 64))
(declare-fun x0_ack!2679 () (_ BitVec 64))
(declare-fun x2_ack!2673 () (_ BitVec 64))
(declare-fun b_ack!2678 () (_ BitVec 64))
(declare-fun a_ack!2677 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun y0_ack!2674 () (_ BitVec 64))
(declare-fun y1_ack!2675 () (_ BitVec 64))
(declare-fun y2_ack!2676 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!2679) ((_ to_fp 11 53) x1_ack!2672)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!2672) ((_ to_fp 11 53) x2_ack!2673)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2672)
                       ((_ to_fp 11 53) x0_ack!2679))
               ((_ to_fp 11 53) x0_ack!2679))
       ((_ to_fp 11 53) x1_ack!2672)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!2672)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2672)
                       ((_ to_fp 11 53) x0_ack!2679)))
       ((_ to_fp 11 53) x0_ack!2679)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!2673)
                       ((_ to_fp 11 53) x1_ack!2672))
               ((_ to_fp 11 53) x1_ack!2672))
       ((_ to_fp 11 53) x2_ack!2673)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!2673)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!2673)
                       ((_ to_fp 11 53) x1_ack!2672)))
       ((_ to_fp 11 53) x1_ack!2672)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!2672)
                    ((_ to_fp 11 53) x0_ack!2679))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2673)
                    ((_ to_fp 11 53) x1_ack!2672))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!2677) ((_ to_fp 11 53) b_ack!2678))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2677) ((_ to_fp 11 53) x0_ack!2679))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!2678) ((_ to_fp 11 53) x2_ack!2673))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!2677) ((_ to_fp 11 53) b_ack!2678))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2677) ((_ to_fp 11 53) x0_ack!2679))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!2677) ((_ to_fp 11 53) x1_ack!2672)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!2672) ((_ to_fp 11 53) a_ack!2677))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!2678) ((_ to_fp 11 53) x1_ack!2672))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!2678) ((_ to_fp 11 53) x2_ack!2673))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2673)
                    ((_ to_fp 11 53) x1_ack!2672))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!2676)
                           ((_ to_fp 11 53) y1_ack!2675))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!2673)
                                   ((_ to_fp 11 53) x1_ack!2672)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!2675)
                           ((_ to_fp 11 53) y0_ack!2674))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!2672)
                                   ((_ to_fp 11 53) x0_ack!2679)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!2673)
                                   ((_ to_fp 11 53) x1_ack!2672))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!2672)
                                   ((_ to_fp 11 53) x0_ack!2679))))))
  (FPCHECK_FMUL_ACCURACY
    #x3fd5555555555555
    (fp.div roundNearestTiesToEven
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4008000000000000)
                    (fp.sub roundNearestTiesToEven a!1 a!2))
            a!3))))

(check-sat)
(exit)
