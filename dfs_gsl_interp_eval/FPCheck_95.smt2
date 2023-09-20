(declare-fun x1_ack!1008 () (_ BitVec 64))
(declare-fun x0_ack!1014 () (_ BitVec 64))
(declare-fun x2_ack!1009 () (_ BitVec 64))
(declare-fun xx_ack!1013 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!1010 () (_ BitVec 64))
(declare-fun y1_ack!1011 () (_ BitVec 64))
(declare-fun y2_ack!1012 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1014) ((_ to_fp 11 53) x1_ack!1008)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1008) ((_ to_fp 11 53) x2_ack!1009)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1008)
                       ((_ to_fp 11 53) x0_ack!1014))
               ((_ to_fp 11 53) x0_ack!1014))
       ((_ to_fp 11 53) x1_ack!1008)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1008)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1008)
                       ((_ to_fp 11 53) x0_ack!1014)))
       ((_ to_fp 11 53) x0_ack!1014)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1009)
                       ((_ to_fp 11 53) x1_ack!1008))
               ((_ to_fp 11 53) x1_ack!1008))
       ((_ to_fp 11 53) x2_ack!1009)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1009)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1009)
                       ((_ to_fp 11 53) x1_ack!1008)))
       ((_ to_fp 11 53) x1_ack!1008)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1008)
                    ((_ to_fp 11 53) x0_ack!1014))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1009)
                    ((_ to_fp 11 53) x1_ack!1008))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1013) ((_ to_fp 11 53) x0_ack!1014))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!1013) ((_ to_fp 11 53) x2_ack!1009))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1013) ((_ to_fp 11 53) x0_ack!1014))))
(assert (fp.geq ((_ to_fp 11 53) xx_ack!1013) ((_ to_fp 11 53) x1_ack!1008)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!1008) ((_ to_fp 11 53) xx_ack!1013))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1009)
               ((_ to_fp 11 53) x1_ack!1008))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!1012)
                           ((_ to_fp 11 53) y1_ack!1011))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!1009)
                                   ((_ to_fp 11 53) x1_ack!1008)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!1011)
                           ((_ to_fp 11 53) y0_ack!1010))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1008)
                                   ((_ to_fp 11 53) x0_ack!1014)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!1009)
                                   ((_ to_fp 11 53) x1_ack!1008))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1008)
                                   ((_ to_fp 11 53) x0_ack!1014))))))
(let ((a!4 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4008000000000000)
                           (fp.sub roundNearestTiesToEven a!1 a!2))
                   a!3)))
(let ((a!5 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x2_ack!1009)
                           ((_ to_fp 11 53) x1_ack!1008))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x0000000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   a!4))))
      (a!7 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x0000000000000000)
                           a!4)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4008000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!1009)
                                   ((_ to_fp 11 53) x1_ack!1008))))))
(let ((a!6 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) y2_ack!1012)
                                   ((_ to_fp 11 53) y1_ack!1011))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!1009)
                                   ((_ to_fp 11 53) x1_ack!1008)))
                   (fp.div roundNearestTiesToEven
                           a!5
                           ((_ to_fp 11 53) #x4008000000000000))))
      (a!8 (fp.add roundNearestTiesToEven
                   a!4
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) xx_ack!1013)
                                   ((_ to_fp 11 53) x1_ack!1008))
                           a!7))))
  (FPCHECK_FADD_OVERFLOW
    a!6
    (fp.mul roundNearestTiesToEven
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) xx_ack!1013)
                    ((_ to_fp 11 53) x1_ack!1008))
            a!8)))))))

(check-sat)
(exit)
