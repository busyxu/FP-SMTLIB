(declare-fun x1_ack!6506 () (_ BitVec 64))
(declare-fun x0_ack!6513 () (_ BitVec 64))
(declare-fun x2_ack!6507 () (_ BitVec 64))
(declare-fun b_ack!6512 () (_ BitVec 64))
(declare-fun a_ack!6511 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!6508 () (_ BitVec 64))
(declare-fun y1_ack!6509 () (_ BitVec 64))
(declare-fun y2_ack!6510 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!6513) ((_ to_fp 11 53) x1_ack!6506)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!6506) ((_ to_fp 11 53) x2_ack!6507)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6506)
                       ((_ to_fp 11 53) x0_ack!6513))
               ((_ to_fp 11 53) x0_ack!6513))
       ((_ to_fp 11 53) x1_ack!6506)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!6506)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6506)
                       ((_ to_fp 11 53) x0_ack!6513)))
       ((_ to_fp 11 53) x0_ack!6513)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6507)
                       ((_ to_fp 11 53) x1_ack!6506))
               ((_ to_fp 11 53) x1_ack!6506))
       ((_ to_fp 11 53) x2_ack!6507)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!6507)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6507)
                       ((_ to_fp 11 53) x1_ack!6506)))
       ((_ to_fp 11 53) x1_ack!6506)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!6506)
                    ((_ to_fp 11 53) x0_ack!6513))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!6507)
                    ((_ to_fp 11 53) x1_ack!6506))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!6511) ((_ to_fp 11 53) b_ack!6512))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6511) ((_ to_fp 11 53) x0_ack!6513))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!6512) ((_ to_fp 11 53) x2_ack!6507))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!6511) ((_ to_fp 11 53) b_ack!6512))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6511) ((_ to_fp 11 53) x0_ack!6513))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!6511) ((_ to_fp 11 53) x1_ack!6506)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!6506) ((_ to_fp 11 53) a_ack!6511))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!6512) ((_ to_fp 11 53) x1_ack!6506))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!6512) ((_ to_fp 11 53) x2_ack!6507))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!6507)
                    ((_ to_fp 11 53) x1_ack!6506))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!6510)
                           ((_ to_fp 11 53) y1_ack!6509))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!6507)
                                   ((_ to_fp 11 53) x1_ack!6506)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!6509)
                           ((_ to_fp 11 53) y0_ack!6508))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!6506)
                                   ((_ to_fp 11 53) x0_ack!6513)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!6507)
                                   ((_ to_fp 11 53) x1_ack!6506))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!6506)
                                   ((_ to_fp 11 53) x0_ack!6513))))))
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
                                   ((_ to_fp 11 53) x2_ack!6507)
                                   ((_ to_fp 11 53) x1_ack!6506))
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   a!4))
                   ((_ to_fp 11 53) #x4008000000000000))))
(let ((a!6 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) y2_ack!6510)
                                   ((_ to_fp 11 53) y1_ack!6509))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!6507)
                                   ((_ to_fp 11 53) x1_ack!6506)))
                   a!5)))
  (FPCHECK_FMUL_ACCURACY
    (fp.mul roundNearestTiesToEven ((_ to_fp 11 53) #x3fe0000000000000) a!6)
    (fp.add roundNearestTiesToEven
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!6511)
                    ((_ to_fp 11 53) x1_ack!6506))
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) b_ack!6512)
                    ((_ to_fp 11 53) x1_ack!6506)))))))))

(check-sat)
(exit)
