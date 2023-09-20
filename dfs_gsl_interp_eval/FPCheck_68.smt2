(declare-fun x1_ack!644 () (_ BitVec 64))
(declare-fun x0_ack!650 () (_ BitVec 64))
(declare-fun x2_ack!645 () (_ BitVec 64))
(declare-fun xx_ack!649 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!646 () (_ BitVec 64))
(declare-fun y1_ack!647 () (_ BitVec 64))
(declare-fun y2_ack!648 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!650) ((_ to_fp 11 53) x1_ack!644)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!644) ((_ to_fp 11 53) x2_ack!645)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!644)
                       ((_ to_fp 11 53) x0_ack!650))
               ((_ to_fp 11 53) x0_ack!650))
       ((_ to_fp 11 53) x1_ack!644)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!644)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!644)
                       ((_ to_fp 11 53) x0_ack!650)))
       ((_ to_fp 11 53) x0_ack!650)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!645)
                       ((_ to_fp 11 53) x1_ack!644))
               ((_ to_fp 11 53) x1_ack!644))
       ((_ to_fp 11 53) x2_ack!645)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!645)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!645)
                       ((_ to_fp 11 53) x1_ack!644)))
       ((_ to_fp 11 53) x1_ack!644)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!644)
                    ((_ to_fp 11 53) x0_ack!650))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!645)
                    ((_ to_fp 11 53) x1_ack!644))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!649) ((_ to_fp 11 53) x0_ack!650))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!649) ((_ to_fp 11 53) x2_ack!645))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!649) ((_ to_fp 11 53) x0_ack!650))))
(assert (fp.geq ((_ to_fp 11 53) xx_ack!649) ((_ to_fp 11 53) x1_ack!644)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!644) ((_ to_fp 11 53) xx_ack!649))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!645)
               ((_ to_fp 11 53) x1_ack!644))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!648)
                           ((_ to_fp 11 53) y1_ack!647))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!645)
                                   ((_ to_fp 11 53) x1_ack!644)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!647)
                           ((_ to_fp 11 53) y0_ack!646))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!644)
                                   ((_ to_fp 11 53) x0_ack!650)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!645)
                                   ((_ to_fp 11 53) x1_ack!644))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!644)
                                   ((_ to_fp 11 53) x0_ack!650))))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   (fp.sub roundNearestTiesToEven a!1 a!2))
                           a!3))))
  (FPCHECK_FMUL_ACCURACY
    (fp.sub roundNearestTiesToEven
            ((_ to_fp 11 53) x2_ack!645)
            ((_ to_fp 11 53) x1_ack!644))
    (fp.add roundNearestTiesToEven ((_ to_fp 11 53) #x0000000000000000) a!4)))))

(check-sat)
(exit)
