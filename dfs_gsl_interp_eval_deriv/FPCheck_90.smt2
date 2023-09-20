(declare-fun x1_ack!937 () (_ BitVec 64))
(declare-fun x0_ack!943 () (_ BitVec 64))
(declare-fun x2_ack!938 () (_ BitVec 64))
(declare-fun xx_ack!942 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!939 () (_ BitVec 64))
(declare-fun y1_ack!940 () (_ BitVec 64))
(declare-fun y2_ack!941 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!943) ((_ to_fp 11 53) x1_ack!937)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!937) ((_ to_fp 11 53) x2_ack!938)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!937)
                       ((_ to_fp 11 53) x0_ack!943))
               ((_ to_fp 11 53) x0_ack!943))
       ((_ to_fp 11 53) x1_ack!937)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!937)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!937)
                       ((_ to_fp 11 53) x0_ack!943)))
       ((_ to_fp 11 53) x0_ack!943)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!938)
                       ((_ to_fp 11 53) x1_ack!937))
               ((_ to_fp 11 53) x1_ack!937))
       ((_ to_fp 11 53) x2_ack!938)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!938)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!938)
                       ((_ to_fp 11 53) x1_ack!937)))
       ((_ to_fp 11 53) x1_ack!937)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!937)
                    ((_ to_fp 11 53) x0_ack!943))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!938)
                    ((_ to_fp 11 53) x1_ack!937))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!942) ((_ to_fp 11 53) x0_ack!943))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!942) ((_ to_fp 11 53) x2_ack!938))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!942) ((_ to_fp 11 53) x0_ack!943))))
(assert (fp.geq ((_ to_fp 11 53) xx_ack!942) ((_ to_fp 11 53) x1_ack!937)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!937) ((_ to_fp 11 53) xx_ack!942))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!938)
               ((_ to_fp 11 53) x1_ack!937))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!941)
                           ((_ to_fp 11 53) y1_ack!940))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!938)
                                   ((_ to_fp 11 53) x1_ack!937)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!940)
                           ((_ to_fp 11 53) y0_ack!939))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!937)
                                   ((_ to_fp 11 53) x0_ack!943)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!938)
                                   ((_ to_fp 11 53) x1_ack!937))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!937)
                                   ((_ to_fp 11 53) x0_ack!943))))))
(let ((a!4 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x0000000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   (fp.sub roundNearestTiesToEven a!1 a!2))
                           a!3))))
(let ((a!5 (fp.div roundNearestTiesToEven
                   a!4
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4008000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!938)
                                   ((_ to_fp 11 53) x1_ack!937))))))
  (FPCHECK_FMUL_UNDERFLOW #x4008000000000000 a!5)))))

(check-sat)
(exit)
