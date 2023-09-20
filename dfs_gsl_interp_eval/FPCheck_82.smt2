(declare-fun x1_ack!817 () (_ BitVec 64))
(declare-fun x0_ack!823 () (_ BitVec 64))
(declare-fun x2_ack!818 () (_ BitVec 64))
(declare-fun xx_ack!822 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!819 () (_ BitVec 64))
(declare-fun y1_ack!820 () (_ BitVec 64))
(declare-fun y2_ack!821 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!823) ((_ to_fp 11 53) x1_ack!817)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!817) ((_ to_fp 11 53) x2_ack!818)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!817)
                       ((_ to_fp 11 53) x0_ack!823))
               ((_ to_fp 11 53) x0_ack!823))
       ((_ to_fp 11 53) x1_ack!817)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!817)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!817)
                       ((_ to_fp 11 53) x0_ack!823)))
       ((_ to_fp 11 53) x0_ack!823)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!818)
                       ((_ to_fp 11 53) x1_ack!817))
               ((_ to_fp 11 53) x1_ack!817))
       ((_ to_fp 11 53) x2_ack!818)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!818)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!818)
                       ((_ to_fp 11 53) x1_ack!817)))
       ((_ to_fp 11 53) x1_ack!817)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!817)
                    ((_ to_fp 11 53) x0_ack!823))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!818)
                    ((_ to_fp 11 53) x1_ack!817))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!822) ((_ to_fp 11 53) x0_ack!823))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!822) ((_ to_fp 11 53) x2_ack!818))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!822) ((_ to_fp 11 53) x0_ack!823))))
(assert (fp.geq ((_ to_fp 11 53) xx_ack!822) ((_ to_fp 11 53) x1_ack!817)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!817) ((_ to_fp 11 53) xx_ack!822))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!818)
               ((_ to_fp 11 53) x1_ack!817))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!821)
                           ((_ to_fp 11 53) y1_ack!820))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!818)
                                   ((_ to_fp 11 53) x1_ack!817)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!820)
                           ((_ to_fp 11 53) y0_ack!819))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!817)
                                   ((_ to_fp 11 53) x0_ack!823)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!818)
                                   ((_ to_fp 11 53) x1_ack!817))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!817)
                                   ((_ to_fp 11 53) x0_ack!823))))))
(let ((a!4 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x0000000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   (fp.sub roundNearestTiesToEven a!1 a!2))
                           a!3))))
  (FPCHECK_FDIV_UNDERFLOW
    a!4
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x4008000000000000)
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!818)
                    ((_ to_fp 11 53) x1_ack!817)))))))

(check-sat)
(exit)
