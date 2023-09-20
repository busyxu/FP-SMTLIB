(declare-fun x1_ack!754 () (_ BitVec 64))
(declare-fun x0_ack!760 () (_ BitVec 64))
(declare-fun x2_ack!755 () (_ BitVec 64))
(declare-fun xx_ack!759 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!756 () (_ BitVec 64))
(declare-fun y1_ack!757 () (_ BitVec 64))
(declare-fun y2_ack!758 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!760) ((_ to_fp 11 53) x1_ack!754)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!754) ((_ to_fp 11 53) x2_ack!755)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!754)
                       ((_ to_fp 11 53) x0_ack!760))
               ((_ to_fp 11 53) x0_ack!760))
       ((_ to_fp 11 53) x1_ack!754)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!754)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!754)
                       ((_ to_fp 11 53) x0_ack!760)))
       ((_ to_fp 11 53) x0_ack!760)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!755)
                       ((_ to_fp 11 53) x1_ack!754))
               ((_ to_fp 11 53) x1_ack!754))
       ((_ to_fp 11 53) x2_ack!755)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!755)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!755)
                       ((_ to_fp 11 53) x1_ack!754)))
       ((_ to_fp 11 53) x1_ack!754)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!754)
                    ((_ to_fp 11 53) x0_ack!760))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!755)
                    ((_ to_fp 11 53) x1_ack!754))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!759) ((_ to_fp 11 53) x0_ack!760))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!759) ((_ to_fp 11 53) x2_ack!755))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!759) ((_ to_fp 11 53) x0_ack!760))))
(assert (fp.geq ((_ to_fp 11 53) xx_ack!759) ((_ to_fp 11 53) x1_ack!754)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!754) ((_ to_fp 11 53) xx_ack!759))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!755)
               ((_ to_fp 11 53) x1_ack!754))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!758)
                           ((_ to_fp 11 53) y1_ack!757))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!755)
                                   ((_ to_fp 11 53) x1_ack!754)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!757)
                           ((_ to_fp 11 53) y0_ack!756))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!754)
                                   ((_ to_fp 11 53) x0_ack!760)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!755)
                                   ((_ to_fp 11 53) x1_ack!754))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!754)
                                   ((_ to_fp 11 53) x0_ack!760))))))
  (FPCHECK_FSUB_UNDERFLOW
    #x0000000000000000
    (fp.div roundNearestTiesToEven
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4008000000000000)
                    (fp.sub roundNearestTiesToEven a!1 a!2))
            a!3))))

(check-sat)
(exit)
