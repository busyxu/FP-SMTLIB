(declare-fun x1_ack!855 () (_ BitVec 64))
(declare-fun x0_ack!861 () (_ BitVec 64))
(declare-fun x2_ack!856 () (_ BitVec 64))
(declare-fun xx_ack!860 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!857 () (_ BitVec 64))
(declare-fun y1_ack!858 () (_ BitVec 64))
(declare-fun y2_ack!859 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!861) ((_ to_fp 11 53) x1_ack!855)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!855) ((_ to_fp 11 53) x2_ack!856)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!855)
                       ((_ to_fp 11 53) x0_ack!861))
               ((_ to_fp 11 53) x0_ack!861))
       ((_ to_fp 11 53) x1_ack!855)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!855)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!855)
                       ((_ to_fp 11 53) x0_ack!861)))
       ((_ to_fp 11 53) x0_ack!861)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!856)
                       ((_ to_fp 11 53) x1_ack!855))
               ((_ to_fp 11 53) x1_ack!855))
       ((_ to_fp 11 53) x2_ack!856)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!856)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!856)
                       ((_ to_fp 11 53) x1_ack!855)))
       ((_ to_fp 11 53) x1_ack!855)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!855)
                    ((_ to_fp 11 53) x0_ack!861))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!856)
                    ((_ to_fp 11 53) x1_ack!855))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!860) ((_ to_fp 11 53) x0_ack!861))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!860) ((_ to_fp 11 53) x2_ack!856))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!860) ((_ to_fp 11 53) x0_ack!861))))
(assert (not (fp.geq ((_ to_fp 11 53) xx_ack!860) ((_ to_fp 11 53) x1_ack!855))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!855)
               ((_ to_fp 11 53) x0_ack!861))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!859)
                           ((_ to_fp 11 53) y1_ack!858))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!856)
                                   ((_ to_fp 11 53) x1_ack!855)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!858)
                           ((_ to_fp 11 53) y0_ack!857))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!855)
                                   ((_ to_fp 11 53) x0_ack!861)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!856)
                                   ((_ to_fp 11 53) x1_ack!855))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!855)
                                   ((_ to_fp 11 53) x0_ack!861))))))
(let ((a!4 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   (fp.sub roundNearestTiesToEven a!1 a!2))
                           a!3)
                   ((_ to_fp 11 53) #x0000000000000000))))
(let ((a!5 (fp.div roundNearestTiesToEven
                   a!4
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4008000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!855)
                                   ((_ to_fp 11 53) x0_ack!861))))))
  (FPCHECK_FMUL_ACCURACY
    (fp.sub roundNearestTiesToEven
            ((_ to_fp 11 53) xx_ack!860)
            ((_ to_fp 11 53) x0_ack!861))
    a!5)))))

(check-sat)
(exit)
