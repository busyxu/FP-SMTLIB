(declare-fun x1_ack!2640 () (_ BitVec 64))
(declare-fun x0_ack!2647 () (_ BitVec 64))
(declare-fun x2_ack!2641 () (_ BitVec 64))
(declare-fun b_ack!2646 () (_ BitVec 64))
(declare-fun a_ack!2645 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun y0_ack!2642 () (_ BitVec 64))
(declare-fun y1_ack!2643 () (_ BitVec 64))
(declare-fun y2_ack!2644 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!2647) ((_ to_fp 11 53) x1_ack!2640)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!2640) ((_ to_fp 11 53) x2_ack!2641)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2640)
                       ((_ to_fp 11 53) x0_ack!2647))
               ((_ to_fp 11 53) x0_ack!2647))
       ((_ to_fp 11 53) x1_ack!2640)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!2640)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2640)
                       ((_ to_fp 11 53) x0_ack!2647)))
       ((_ to_fp 11 53) x0_ack!2647)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!2641)
                       ((_ to_fp 11 53) x1_ack!2640))
               ((_ to_fp 11 53) x1_ack!2640))
       ((_ to_fp 11 53) x2_ack!2641)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!2641)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!2641)
                       ((_ to_fp 11 53) x1_ack!2640)))
       ((_ to_fp 11 53) x1_ack!2640)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!2640)
                    ((_ to_fp 11 53) x0_ack!2647))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2641)
                    ((_ to_fp 11 53) x1_ack!2640))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!2645) ((_ to_fp 11 53) b_ack!2646))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2645) ((_ to_fp 11 53) x0_ack!2647))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!2646) ((_ to_fp 11 53) x2_ack!2641))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!2645) ((_ to_fp 11 53) b_ack!2646))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2645) ((_ to_fp 11 53) x0_ack!2647))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!2645) ((_ to_fp 11 53) x1_ack!2640)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!2640) ((_ to_fp 11 53) a_ack!2645))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!2646) ((_ to_fp 11 53) x1_ack!2640))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!2646) ((_ to_fp 11 53) x2_ack!2641))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2641)
                    ((_ to_fp 11 53) x1_ack!2640))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!2644)
                           ((_ to_fp 11 53) y1_ack!2643))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!2641)
                                   ((_ to_fp 11 53) x1_ack!2640)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!2643)
                           ((_ to_fp 11 53) y0_ack!2642))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!2640)
                                   ((_ to_fp 11 53) x0_ack!2647)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!2641)
                                   ((_ to_fp 11 53) x1_ack!2640))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!2640)
                                   ((_ to_fp 11 53) x0_ack!2647))))))
  (FPCHECK_FMUL_OVERFLOW
    #x3fd5555555555555
    (fp.div roundNearestTiesToEven
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4008000000000000)
                    (fp.sub roundNearestTiesToEven a!1 a!2))
            a!3))))

(check-sat)
(exit)
