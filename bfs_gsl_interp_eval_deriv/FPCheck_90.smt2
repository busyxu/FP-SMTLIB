(declare-fun x1_ack!929 () (_ BitVec 64))
(declare-fun x0_ack!935 () (_ BitVec 64))
(declare-fun x2_ack!930 () (_ BitVec 64))
(declare-fun xx_ack!934 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!931 () (_ BitVec 64))
(declare-fun y1_ack!932 () (_ BitVec 64))
(declare-fun y2_ack!933 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!935) ((_ to_fp 11 53) x1_ack!929)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!929) ((_ to_fp 11 53) x2_ack!930)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!929)
                       ((_ to_fp 11 53) x0_ack!935))
               ((_ to_fp 11 53) x0_ack!935))
       ((_ to_fp 11 53) x1_ack!929)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!929)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!929)
                       ((_ to_fp 11 53) x0_ack!935)))
       ((_ to_fp 11 53) x0_ack!935)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!930)
                       ((_ to_fp 11 53) x1_ack!929))
               ((_ to_fp 11 53) x1_ack!929))
       ((_ to_fp 11 53) x2_ack!930)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!930)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!930)
                       ((_ to_fp 11 53) x1_ack!929)))
       ((_ to_fp 11 53) x1_ack!929)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!929)
                    ((_ to_fp 11 53) x0_ack!935))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!930)
                    ((_ to_fp 11 53) x1_ack!929))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!934) ((_ to_fp 11 53) x0_ack!935))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!934) ((_ to_fp 11 53) x2_ack!930))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!934) ((_ to_fp 11 53) x0_ack!935))))
(assert (not (fp.geq ((_ to_fp 11 53) xx_ack!934) ((_ to_fp 11 53) x1_ack!929))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!929)
               ((_ to_fp 11 53) x0_ack!935))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!933)
                           ((_ to_fp 11 53) y1_ack!932))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!930)
                                   ((_ to_fp 11 53) x1_ack!929)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!932)
                           ((_ to_fp 11 53) y0_ack!931))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!929)
                                   ((_ to_fp 11 53) x0_ack!935)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!930)
                                   ((_ to_fp 11 53) x1_ack!929))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!929)
                                   ((_ to_fp 11 53) x0_ack!935))))))
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
                                   ((_ to_fp 11 53) x1_ack!929)
                                   ((_ to_fp 11 53) x0_ack!935))))))
  (FPCHECK_FADD_UNDERFLOW
    #x0000000000000000
    (fp.mul roundNearestTiesToEven
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4008000000000000)
                    a!5)
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) xx_ack!934)
                    ((_ to_fp 11 53) x0_ack!935))))))))

(check-sat)
(exit)
