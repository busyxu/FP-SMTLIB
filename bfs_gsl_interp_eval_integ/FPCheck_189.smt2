(declare-fun x1_ack!2193 () (_ BitVec 64))
(declare-fun x0_ack!2200 () (_ BitVec 64))
(declare-fun x2_ack!2194 () (_ BitVec 64))
(declare-fun b_ack!2199 () (_ BitVec 64))
(declare-fun a_ack!2198 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!2195 () (_ BitVec 64))
(declare-fun y1_ack!2196 () (_ BitVec 64))
(declare-fun y2_ack!2197 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!2200) ((_ to_fp 11 53) x1_ack!2193)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!2193) ((_ to_fp 11 53) x2_ack!2194)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2193)
                       ((_ to_fp 11 53) x0_ack!2200))
               ((_ to_fp 11 53) x0_ack!2200))
       ((_ to_fp 11 53) x1_ack!2193)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!2193)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2193)
                       ((_ to_fp 11 53) x0_ack!2200)))
       ((_ to_fp 11 53) x0_ack!2200)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!2194)
                       ((_ to_fp 11 53) x1_ack!2193))
               ((_ to_fp 11 53) x1_ack!2193))
       ((_ to_fp 11 53) x2_ack!2194)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!2194)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!2194)
                       ((_ to_fp 11 53) x1_ack!2193)))
       ((_ to_fp 11 53) x1_ack!2193)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!2193)
                    ((_ to_fp 11 53) x0_ack!2200))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2194)
                    ((_ to_fp 11 53) x1_ack!2193))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!2198) ((_ to_fp 11 53) b_ack!2199))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2198) ((_ to_fp 11 53) x0_ack!2200))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!2199) ((_ to_fp 11 53) x2_ack!2194))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!2198) ((_ to_fp 11 53) b_ack!2199))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2198) ((_ to_fp 11 53) x0_ack!2200))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!2198) ((_ to_fp 11 53) x1_ack!2193)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!2193) ((_ to_fp 11 53) a_ack!2198))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!2199) ((_ to_fp 11 53) x1_ack!2193))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!2199) ((_ to_fp 11 53) x2_ack!2194))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2194)
                    ((_ to_fp 11 53) x1_ack!2193))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!2197)
                           ((_ to_fp 11 53) y1_ack!2196))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!2194)
                                   ((_ to_fp 11 53) x1_ack!2193)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!2196)
                           ((_ to_fp 11 53) y0_ack!2195))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!2193)
                                   ((_ to_fp 11 53) x0_ack!2200)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!2194)
                                   ((_ to_fp 11 53) x1_ack!2193))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!2193)
                                   ((_ to_fp 11 53) x0_ack!2200))))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   (fp.sub roundNearestTiesToEven a!1 a!2))
                           a!3))))
  (FPCHECK_FMUL_ACCURACY
    (fp.sub roundNearestTiesToEven
            ((_ to_fp 11 53) x2_ack!2194)
            ((_ to_fp 11 53) x1_ack!2193))
    (fp.add roundNearestTiesToEven ((_ to_fp 11 53) #x0000000000000000) a!4)))))

(check-sat)
(exit)
