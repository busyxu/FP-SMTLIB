(declare-fun x1_ack!2157 () (_ BitVec 64))
(declare-fun x0_ack!2164 () (_ BitVec 64))
(declare-fun y0_ack!2158 () (_ BitVec 64))
(declare-fun x_ack!2162 () (_ BitVec 64))
(declare-fun y_ack!2163 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun z1_ack!2160 () (_ BitVec 64))
(declare-fun z3_ack!2161 () (_ BitVec 64))
(declare-fun z0_ack!2159 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!2164) ((_ to_fp 11 53) x1_ack!2157))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!2158) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!2162) ((_ to_fp 11 53) x0_ack!2164))))
(assert (fp.geq ((_ to_fp 11 53) x_ack!2162) ((_ to_fp 11 53) x1_ack!2157)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!2163) ((_ to_fp 11 53) y0_ack!2158))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!2163) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2157)
                       ((_ to_fp 11 53) x0_ack!2164))
               ((_ to_fp 11 53) x0_ack!2164))
       ((_ to_fp 11 53) x1_ack!2157)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!2157)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2157)
                       ((_ to_fp 11 53) x0_ack!2164)))
       ((_ to_fp 11 53) x0_ack!2164)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!2163)
                       ((_ to_fp 11 53) y0_ack!2158))
               ((_ to_fp 11 53) y0_ack!2158))
       ((_ to_fp 11 53) y_ack!2163)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) y_ack!2163)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!2163)
                       ((_ to_fp 11 53) y0_ack!2158)))
       ((_ to_fp 11 53) y0_ack!2158)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!2162)
                           ((_ to_fp 11 53) x0_ack!2164))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!2157)
                           ((_ to_fp 11 53) x0_ack!2164))))
      (a!2 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y_ack!2163)
                           ((_ to_fp 11 53) y0_ack!2158))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) y0_ack!2158)))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!2))
                   ((_ to_fp 11 53) z0_ack!2159)))
      (a!4 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!1
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!2))
                   ((_ to_fp 11 53) z3_ack!2161)))
      (a!5 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1)
                           a!2)
                   ((_ to_fp 11 53) z1_ack!2160))))
  (FPCHECK_FADD_ACCURACY (fp.add roundNearestTiesToEven a!3 a!4) a!5))))

(check-sat)
(exit)
