(declare-fun x1_ack!4867 () (_ BitVec 64))
(declare-fun x0_ack!4874 () (_ BitVec 64))
(declare-fun x2_ack!4868 () (_ BitVec 64))
(declare-fun b_ack!4873 () (_ BitVec 64))
(declare-fun a_ack!4872 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!4869 () (_ BitVec 64))
(declare-fun y1_ack!4870 () (_ BitVec 64))
(declare-fun y2_ack!4871 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!4874) ((_ to_fp 11 53) x1_ack!4867)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!4867) ((_ to_fp 11 53) x2_ack!4868)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4867)
                       ((_ to_fp 11 53) x0_ack!4874))
               ((_ to_fp 11 53) x0_ack!4874))
       ((_ to_fp 11 53) x1_ack!4867)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!4867)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4867)
                       ((_ to_fp 11 53) x0_ack!4874)))
       ((_ to_fp 11 53) x0_ack!4874)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4868)
                       ((_ to_fp 11 53) x1_ack!4867))
               ((_ to_fp 11 53) x1_ack!4867))
       ((_ to_fp 11 53) x2_ack!4868)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!4868)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4868)
                       ((_ to_fp 11 53) x1_ack!4867)))
       ((_ to_fp 11 53) x1_ack!4867)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!4867)
                    ((_ to_fp 11 53) x0_ack!4874))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!4868)
                    ((_ to_fp 11 53) x1_ack!4867))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!4872) ((_ to_fp 11 53) b_ack!4873))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4872) ((_ to_fp 11 53) x0_ack!4874))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!4873) ((_ to_fp 11 53) x2_ack!4868))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!4872) ((_ to_fp 11 53) b_ack!4873))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4872) ((_ to_fp 11 53) x0_ack!4874))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!4872) ((_ to_fp 11 53) x1_ack!4867)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!4867) ((_ to_fp 11 53) a_ack!4872))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!4873) ((_ to_fp 11 53) x1_ack!4867))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!4873) ((_ to_fp 11 53) x2_ack!4868)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!4868)
                    ((_ to_fp 11 53) x1_ack!4867))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!4871)
                           ((_ to_fp 11 53) y1_ack!4870))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!4868)
                                   ((_ to_fp 11 53) x1_ack!4867)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!4870)
                           ((_ to_fp 11 53) y0_ack!4869))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!4867)
                                   ((_ to_fp 11 53) x0_ack!4874)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!4868)
                                   ((_ to_fp 11 53) x1_ack!4867))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!4867)
                                   ((_ to_fp 11 53) x0_ack!4874))))))
(let ((a!4 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x0000000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   (fp.sub roundNearestTiesToEven a!1 a!2))
                           a!3))))
  (FPCHECK_FDIV_ACCURACY
    a!4
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x4008000000000000)
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!4868)
                    ((_ to_fp 11 53) x1_ack!4867)))))))

(check-sat)
(exit)
