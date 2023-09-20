(declare-fun x1_ack!809 () (_ BitVec 64))
(declare-fun x0_ack!815 () (_ BitVec 64))
(declare-fun x2_ack!810 () (_ BitVec 64))
(declare-fun xx_ack!814 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ZERO
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!811 () (_ BitVec 64))
(declare-fun y1_ack!812 () (_ BitVec 64))
(declare-fun y2_ack!813 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!815) ((_ to_fp 11 53) x1_ack!809)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!809) ((_ to_fp 11 53) x2_ack!810)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!809)
                       ((_ to_fp 11 53) x0_ack!815))
               ((_ to_fp 11 53) x0_ack!815))
       ((_ to_fp 11 53) x1_ack!809)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!809)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!809)
                       ((_ to_fp 11 53) x0_ack!815)))
       ((_ to_fp 11 53) x0_ack!815)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!810)
                       ((_ to_fp 11 53) x1_ack!809))
               ((_ to_fp 11 53) x1_ack!809))
       ((_ to_fp 11 53) x2_ack!810)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!810)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!810)
                       ((_ to_fp 11 53) x1_ack!809)))
       ((_ to_fp 11 53) x1_ack!809)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!809)
                    ((_ to_fp 11 53) x0_ack!815))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!810)
                    ((_ to_fp 11 53) x1_ack!809))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!814) ((_ to_fp 11 53) x0_ack!815))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!814) ((_ to_fp 11 53) x2_ack!810))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!814) ((_ to_fp 11 53) x0_ack!815))))
(assert (not (fp.geq ((_ to_fp 11 53) xx_ack!814) ((_ to_fp 11 53) x1_ack!809))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!809)
               ((_ to_fp 11 53) x0_ack!815))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!813)
                           ((_ to_fp 11 53) y1_ack!812))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!810)
                                   ((_ to_fp 11 53) x1_ack!809)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!812)
                           ((_ to_fp 11 53) y0_ack!811))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!809)
                                   ((_ to_fp 11 53) x0_ack!815)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!810)
                                   ((_ to_fp 11 53) x1_ack!809))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!809)
                                   ((_ to_fp 11 53) x0_ack!815))))))
(let ((a!4 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   (fp.sub roundNearestTiesToEven a!1 a!2))
                           a!3)
                   ((_ to_fp 11 53) #x0000000000000000))))
  (FPCHECK_FDIV_ZERO
    a!4
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x4008000000000000)
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!809)
                    ((_ to_fp 11 53) x0_ack!815)))))))

(check-sat)
(exit)
