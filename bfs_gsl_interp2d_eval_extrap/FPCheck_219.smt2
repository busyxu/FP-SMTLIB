(declare-fun x1_ack!2282 () (_ BitVec 64))
(declare-fun x0_ack!2290 () (_ BitVec 64))
(declare-fun y0_ack!2283 () (_ BitVec 64))
(declare-fun x_ack!2288 () (_ BitVec 64))
(declare-fun y_ack!2289 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun z2_ack!2286 () (_ BitVec 64))
(declare-fun z1_ack!2285 () (_ BitVec 64))
(declare-fun z3_ack!2287 () (_ BitVec 64))
(declare-fun z0_ack!2284 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!2290) ((_ to_fp 11 53) x1_ack!2282))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!2283) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!2288) ((_ to_fp 11 53) x0_ack!2290))))
(assert (fp.geq ((_ to_fp 11 53) x_ack!2288) ((_ to_fp 11 53) x1_ack!2282)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!2289) ((_ to_fp 11 53) y0_ack!2283))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!2289) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2282)
                       ((_ to_fp 11 53) x0_ack!2290))
               ((_ to_fp 11 53) x0_ack!2290))
       ((_ to_fp 11 53) x1_ack!2282)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!2282)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2282)
                       ((_ to_fp 11 53) x0_ack!2290)))
       ((_ to_fp 11 53) x0_ack!2290)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!2289)
                       ((_ to_fp 11 53) y0_ack!2283))
               ((_ to_fp 11 53) y0_ack!2283))
       ((_ to_fp 11 53) y_ack!2289)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) y_ack!2289)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!2289)
                       ((_ to_fp 11 53) y0_ack!2283)))
       ((_ to_fp 11 53) y0_ack!2283)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!2288)
                           ((_ to_fp 11 53) x0_ack!2290))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!2282)
                           ((_ to_fp 11 53) x0_ack!2290))))
      (a!2 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y_ack!2289)
                           ((_ to_fp 11 53) y0_ack!2283))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) y0_ack!2283)))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!2))
                   ((_ to_fp 11 53) z0_ack!2284)))
      (a!4 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!1
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!2))
                   ((_ to_fp 11 53) z3_ack!2287)))
      (a!5 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1)
                           a!2)
                   ((_ to_fp 11 53) z1_ack!2285))))
  (FPCHECK_FADD_ACCURACY
    (fp.add roundNearestTiesToEven (fp.add roundNearestTiesToEven a!3 a!4) a!5)
    (fp.mul roundNearestTiesToEven
            (fp.mul roundNearestTiesToEven a!1 a!2)
            ((_ to_fp 11 53) z2_ack!2286))))))

(check-sat)
(exit)
