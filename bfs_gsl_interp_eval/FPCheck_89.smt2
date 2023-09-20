(declare-fun x1_ack!904 () (_ BitVec 64))
(declare-fun x0_ack!910 () (_ BitVec 64))
(declare-fun x2_ack!905 () (_ BitVec 64))
(declare-fun xx_ack!909 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!906 () (_ BitVec 64))
(declare-fun y1_ack!907 () (_ BitVec 64))
(declare-fun y2_ack!908 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!910) ((_ to_fp 11 53) x1_ack!904)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!904) ((_ to_fp 11 53) x2_ack!905)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!904)
                       ((_ to_fp 11 53) x0_ack!910))
               ((_ to_fp 11 53) x0_ack!910))
       ((_ to_fp 11 53) x1_ack!904)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!904)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!904)
                       ((_ to_fp 11 53) x0_ack!910)))
       ((_ to_fp 11 53) x0_ack!910)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!905)
                       ((_ to_fp 11 53) x1_ack!904))
               ((_ to_fp 11 53) x1_ack!904))
       ((_ to_fp 11 53) x2_ack!905)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!905)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!905)
                       ((_ to_fp 11 53) x1_ack!904)))
       ((_ to_fp 11 53) x1_ack!904)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!904)
                    ((_ to_fp 11 53) x0_ack!910))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!905)
                    ((_ to_fp 11 53) x1_ack!904))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!909) ((_ to_fp 11 53) x0_ack!910))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!909) ((_ to_fp 11 53) x2_ack!905))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!909) ((_ to_fp 11 53) x0_ack!910))))
(assert (not (fp.geq ((_ to_fp 11 53) xx_ack!909) ((_ to_fp 11 53) x1_ack!904))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!904)
               ((_ to_fp 11 53) x0_ack!910))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!908)
                           ((_ to_fp 11 53) y1_ack!907))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!905)
                                   ((_ to_fp 11 53) x1_ack!904)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!907)
                           ((_ to_fp 11 53) y0_ack!906))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!904)
                                   ((_ to_fp 11 53) x0_ack!910)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!905)
                                   ((_ to_fp 11 53) x1_ack!904))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!904)
                                   ((_ to_fp 11 53) x0_ack!910))))))
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
                                   ((_ to_fp 11 53) x1_ack!904)
                                   ((_ to_fp 11 53) x0_ack!910))))))
(let ((a!6 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x0000000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) xx_ack!909)
                                   ((_ to_fp 11 53) x0_ack!910))
                           a!5))))
  (FPCHECK_FMUL_OVERFLOW
    (fp.sub roundNearestTiesToEven
            ((_ to_fp 11 53) xx_ack!909)
            ((_ to_fp 11 53) x0_ack!910))
    a!6))))))

(check-sat)
(exit)
