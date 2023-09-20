(declare-fun x1_ack!4752 () (_ BitVec 64))
(declare-fun x0_ack!4759 () (_ BitVec 64))
(declare-fun x2_ack!4753 () (_ BitVec 64))
(declare-fun b_ack!4758 () (_ BitVec 64))
(declare-fun a_ack!4757 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!4754 () (_ BitVec 64))
(declare-fun y1_ack!4755 () (_ BitVec 64))
(declare-fun y2_ack!4756 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!4759) ((_ to_fp 11 53) x1_ack!4752)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!4752) ((_ to_fp 11 53) x2_ack!4753)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4752)
                       ((_ to_fp 11 53) x0_ack!4759))
               ((_ to_fp 11 53) x0_ack!4759))
       ((_ to_fp 11 53) x1_ack!4752)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!4752)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4752)
                       ((_ to_fp 11 53) x0_ack!4759)))
       ((_ to_fp 11 53) x0_ack!4759)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4753)
                       ((_ to_fp 11 53) x1_ack!4752))
               ((_ to_fp 11 53) x1_ack!4752))
       ((_ to_fp 11 53) x2_ack!4753)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!4753)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4753)
                       ((_ to_fp 11 53) x1_ack!4752)))
       ((_ to_fp 11 53) x1_ack!4752)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!4752)
                    ((_ to_fp 11 53) x0_ack!4759))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!4753)
                    ((_ to_fp 11 53) x1_ack!4752))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!4757) ((_ to_fp 11 53) b_ack!4758))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4757) ((_ to_fp 11 53) x0_ack!4759))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!4758) ((_ to_fp 11 53) x2_ack!4753))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!4757) ((_ to_fp 11 53) b_ack!4758))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4757) ((_ to_fp 11 53) x0_ack!4759))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!4757) ((_ to_fp 11 53) x1_ack!4752)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!4752) ((_ to_fp 11 53) a_ack!4757))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!4758) ((_ to_fp 11 53) x1_ack!4752))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!4758) ((_ to_fp 11 53) x2_ack!4753)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!4753)
                    ((_ to_fp 11 53) x1_ack!4752))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!4756)
                           ((_ to_fp 11 53) y1_ack!4755))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!4753)
                                   ((_ to_fp 11 53) x1_ack!4752)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!4755)
                           ((_ to_fp 11 53) y0_ack!4754))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!4752)
                                   ((_ to_fp 11 53) x0_ack!4759)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!4753)
                                   ((_ to_fp 11 53) x1_ack!4752))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!4752)
                                   ((_ to_fp 11 53) x0_ack!4759))))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   (fp.sub roundNearestTiesToEven a!1 a!2))
                           a!3))))
(let ((a!5 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!4753)
                                   ((_ to_fp 11 53) x1_ack!4752))
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   a!4))
                   ((_ to_fp 11 53) #x4008000000000000))))
  (FPCHECK_FSUB_ACCURACY
    (fp.div roundNearestTiesToEven
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) y2_ack!4756)
                    ((_ to_fp 11 53) y1_ack!4755))
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!4753)
                    ((_ to_fp 11 53) x1_ack!4752)))
    a!5)))))

(check-sat)
(exit)
