(declare-fun x1_ack!708 () (_ BitVec 64))
(declare-fun x0_ack!714 () (_ BitVec 64))
(declare-fun x2_ack!709 () (_ BitVec 64))
(declare-fun xx_ack!713 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(declare-fun y0_ack!710 () (_ BitVec 64))
(declare-fun y1_ack!711 () (_ BitVec 64))
(declare-fun y2_ack!712 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!714) ((_ to_fp 11 53) x1_ack!708)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!708) ((_ to_fp 11 53) x2_ack!709)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!708)
                       ((_ to_fp 11 53) x0_ack!714))
               ((_ to_fp 11 53) x0_ack!714))
       ((_ to_fp 11 53) x1_ack!708)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!708)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!708)
                       ((_ to_fp 11 53) x0_ack!714)))
       ((_ to_fp 11 53) x0_ack!714)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!709)
                       ((_ to_fp 11 53) x1_ack!708))
               ((_ to_fp 11 53) x1_ack!708))
       ((_ to_fp 11 53) x2_ack!709)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!709)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!709)
                       ((_ to_fp 11 53) x1_ack!708)))
       ((_ to_fp 11 53) x1_ack!708)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!708)
                    ((_ to_fp 11 53) x0_ack!714))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!709)
                    ((_ to_fp 11 53) x1_ack!708))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!713) ((_ to_fp 11 53) x0_ack!714))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!713) ((_ to_fp 11 53) x2_ack!709))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!713) ((_ to_fp 11 53) x0_ack!714))))
(assert (not (fp.geq ((_ to_fp 11 53) xx_ack!713) ((_ to_fp 11 53) x1_ack!708))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!708)
               ((_ to_fp 11 53) x0_ack!714))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!712)
                           ((_ to_fp 11 53) y1_ack!711))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!709)
                                   ((_ to_fp 11 53) x1_ack!708)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!711)
                           ((_ to_fp 11 53) y0_ack!710))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!708)
                                   ((_ to_fp 11 53) x0_ack!714)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!709)
                                   ((_ to_fp 11 53) x1_ack!708))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!708)
                                   ((_ to_fp 11 53) x0_ack!714))))))
  (FPCHECK_FSUB_UNDERFLOW
    (fp.div roundNearestTiesToEven
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4008000000000000)
                    (fp.sub roundNearestTiesToEven a!1 a!2))
            a!3)
    #x0000000000000000)))

(check-sat)
(exit)
