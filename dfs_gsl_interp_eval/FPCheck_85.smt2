(declare-fun x1_ack!859 () (_ BitVec 64))
(declare-fun x0_ack!865 () (_ BitVec 64))
(declare-fun x2_ack!860 () (_ BitVec 64))
(declare-fun xx_ack!864 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ZERO
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!861 () (_ BitVec 64))
(declare-fun y1_ack!862 () (_ BitVec 64))
(declare-fun y2_ack!863 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!865) ((_ to_fp 11 53) x1_ack!859)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!859) ((_ to_fp 11 53) x2_ack!860)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!859)
                       ((_ to_fp 11 53) x0_ack!865))
               ((_ to_fp 11 53) x0_ack!865))
       ((_ to_fp 11 53) x1_ack!859)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!859)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!859)
                       ((_ to_fp 11 53) x0_ack!865)))
       ((_ to_fp 11 53) x0_ack!865)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!860)
                       ((_ to_fp 11 53) x1_ack!859))
               ((_ to_fp 11 53) x1_ack!859))
       ((_ to_fp 11 53) x2_ack!860)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!860)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!860)
                       ((_ to_fp 11 53) x1_ack!859)))
       ((_ to_fp 11 53) x1_ack!859)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!859)
                    ((_ to_fp 11 53) x0_ack!865))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!860)
                    ((_ to_fp 11 53) x1_ack!859))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!864) ((_ to_fp 11 53) x0_ack!865))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!864) ((_ to_fp 11 53) x2_ack!860))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!864) ((_ to_fp 11 53) x0_ack!865))))
(assert (fp.geq ((_ to_fp 11 53) xx_ack!864) ((_ to_fp 11 53) x1_ack!859)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!859) ((_ to_fp 11 53) xx_ack!864))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!860)
               ((_ to_fp 11 53) x1_ack!859))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!863)
                           ((_ to_fp 11 53) y1_ack!862))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!860)
                                   ((_ to_fp 11 53) x1_ack!859)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!862)
                           ((_ to_fp 11 53) y0_ack!861))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!859)
                                   ((_ to_fp 11 53) x0_ack!865)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!860)
                                   ((_ to_fp 11 53) x1_ack!859))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!859)
                                   ((_ to_fp 11 53) x0_ack!865))))))
(let ((a!4 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x0000000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   (fp.sub roundNearestTiesToEven a!1 a!2))
                           a!3))))
  (FPCHECK_FDIV_ZERO
    a!4
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x4008000000000000)
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!860)
                    ((_ to_fp 11 53) x1_ack!859)))))))

(check-sat)
(exit)
