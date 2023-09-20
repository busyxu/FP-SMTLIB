(declare-fun x1_ack!831 () (_ BitVec 64))
(declare-fun x0_ack!837 () (_ BitVec 64))
(declare-fun x2_ack!832 () (_ BitVec 64))
(declare-fun xx_ack!836 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!833 () (_ BitVec 64))
(declare-fun y1_ack!834 () (_ BitVec 64))
(declare-fun y2_ack!835 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!837) ((_ to_fp 11 53) x1_ack!831)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!831) ((_ to_fp 11 53) x2_ack!832)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!831)
                       ((_ to_fp 11 53) x0_ack!837))
               ((_ to_fp 11 53) x0_ack!837))
       ((_ to_fp 11 53) x1_ack!831)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!831)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!831)
                       ((_ to_fp 11 53) x0_ack!837)))
       ((_ to_fp 11 53) x0_ack!837)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!832)
                       ((_ to_fp 11 53) x1_ack!831))
               ((_ to_fp 11 53) x1_ack!831))
       ((_ to_fp 11 53) x2_ack!832)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!832)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!832)
                       ((_ to_fp 11 53) x1_ack!831)))
       ((_ to_fp 11 53) x1_ack!831)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!831)
                    ((_ to_fp 11 53) x0_ack!837))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!832)
                    ((_ to_fp 11 53) x1_ack!831))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!836) ((_ to_fp 11 53) x0_ack!837))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!836) ((_ to_fp 11 53) x2_ack!832))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!836) ((_ to_fp 11 53) x0_ack!837))))
(assert (fp.geq ((_ to_fp 11 53) xx_ack!836) ((_ to_fp 11 53) x1_ack!831)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!831) ((_ to_fp 11 53) xx_ack!836))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!832)
               ((_ to_fp 11 53) x1_ack!831))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!835)
                           ((_ to_fp 11 53) y1_ack!834))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!832)
                                   ((_ to_fp 11 53) x1_ack!831)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!834)
                           ((_ to_fp 11 53) y0_ack!833))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!831)
                                   ((_ to_fp 11 53) x0_ack!837)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!832)
                                   ((_ to_fp 11 53) x1_ack!831))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!831)
                                   ((_ to_fp 11 53) x0_ack!837))))))
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
                    ((_ to_fp 11 53) x2_ack!832)
                    ((_ to_fp 11 53) x1_ack!831)))))))

(check-sat)
(exit)
