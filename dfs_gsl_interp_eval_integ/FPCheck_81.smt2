(declare-fun x1_ack!860 () (_ BitVec 64))
(declare-fun x0_ack!867 () (_ BitVec 64))
(declare-fun x2_ack!861 () (_ BitVec 64))
(declare-fun b_ack!866 () (_ BitVec 64))
(declare-fun a_ack!865 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_INVALID
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!862 () (_ BitVec 64))
(declare-fun y1_ack!863 () (_ BitVec 64))
(declare-fun y2_ack!864 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!867) ((_ to_fp 11 53) x1_ack!860)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!860) ((_ to_fp 11 53) x2_ack!861)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!860)
                       ((_ to_fp 11 53) x0_ack!867))
               ((_ to_fp 11 53) x0_ack!867))
       ((_ to_fp 11 53) x1_ack!860)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!860)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!860)
                       ((_ to_fp 11 53) x0_ack!867)))
       ((_ to_fp 11 53) x0_ack!867)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!861)
                       ((_ to_fp 11 53) x1_ack!860))
               ((_ to_fp 11 53) x1_ack!860))
       ((_ to_fp 11 53) x2_ack!861)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!861)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!861)
                       ((_ to_fp 11 53) x1_ack!860)))
       ((_ to_fp 11 53) x1_ack!860)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!860)
                    ((_ to_fp 11 53) x0_ack!867))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!861)
                    ((_ to_fp 11 53) x1_ack!860))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!865) ((_ to_fp 11 53) b_ack!866))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!865) ((_ to_fp 11 53) x0_ack!867))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!866) ((_ to_fp 11 53) x2_ack!861))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!865) ((_ to_fp 11 53) b_ack!866))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!865) ((_ to_fp 11 53) x0_ack!867))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!865) ((_ to_fp 11 53) x1_ack!860))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!866) ((_ to_fp 11 53) x0_ack!867))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!866) ((_ to_fp 11 53) x1_ack!860)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!860) ((_ to_fp 11 53) b_ack!866))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!860)
                    ((_ to_fp 11 53) x0_ack!867))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!864)
                           ((_ to_fp 11 53) y1_ack!863))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!861)
                                   ((_ to_fp 11 53) x1_ack!860)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!863)
                           ((_ to_fp 11 53) y0_ack!862))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!860)
                                   ((_ to_fp 11 53) x0_ack!867)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!861)
                                   ((_ to_fp 11 53) x1_ack!860))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!860)
                                   ((_ to_fp 11 53) x0_ack!867))))))
(let ((a!4 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   (fp.sub roundNearestTiesToEven a!1 a!2))
                           a!3)
                   ((_ to_fp 11 53) #x0000000000000000))))
  (FPCHECK_FDIV_INVALID
    a!4
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x4008000000000000)
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!860)
                    ((_ to_fp 11 53) x0_ack!867)))))))

(check-sat)
(exit)
