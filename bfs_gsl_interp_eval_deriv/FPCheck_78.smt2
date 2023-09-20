(declare-fun x1_ack!753 () (_ BitVec 64))
(declare-fun x0_ack!759 () (_ BitVec 64))
(declare-fun x2_ack!754 () (_ BitVec 64))
(declare-fun xx_ack!758 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!755 () (_ BitVec 64))
(declare-fun y1_ack!756 () (_ BitVec 64))
(declare-fun y2_ack!757 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!759) ((_ to_fp 11 53) x1_ack!753)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!753) ((_ to_fp 11 53) x2_ack!754)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!753)
                       ((_ to_fp 11 53) x0_ack!759))
               ((_ to_fp 11 53) x0_ack!759))
       ((_ to_fp 11 53) x1_ack!753)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!753)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!753)
                       ((_ to_fp 11 53) x0_ack!759)))
       ((_ to_fp 11 53) x0_ack!759)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!754)
                       ((_ to_fp 11 53) x1_ack!753))
               ((_ to_fp 11 53) x1_ack!753))
       ((_ to_fp 11 53) x2_ack!754)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!754)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!754)
                       ((_ to_fp 11 53) x1_ack!753)))
       ((_ to_fp 11 53) x1_ack!753)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!753)
                    ((_ to_fp 11 53) x0_ack!759))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!754)
                    ((_ to_fp 11 53) x1_ack!753))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!758) ((_ to_fp 11 53) x0_ack!759))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!758) ((_ to_fp 11 53) x2_ack!754))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!758) ((_ to_fp 11 53) x0_ack!759))))
(assert (not (fp.geq ((_ to_fp 11 53) xx_ack!758) ((_ to_fp 11 53) x1_ack!753))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!753)
               ((_ to_fp 11 53) x0_ack!759))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!757)
                           ((_ to_fp 11 53) y1_ack!756))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!754)
                                   ((_ to_fp 11 53) x1_ack!753)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!756)
                           ((_ to_fp 11 53) y0_ack!755))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!753)
                                   ((_ to_fp 11 53) x0_ack!759)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!754)
                                   ((_ to_fp 11 53) x1_ack!753))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!753)
                                   ((_ to_fp 11 53) x0_ack!759))))))
(let ((a!4 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   (fp.sub roundNearestTiesToEven a!1 a!2))
                           a!3)
                   ((_ to_fp 11 53) #x0000000000000000))))
  (FPCHECK_FDIV_OVERFLOW
    a!4
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x4008000000000000)
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!753)
                    ((_ to_fp 11 53) x0_ack!759)))))))

(check-sat)
(exit)
