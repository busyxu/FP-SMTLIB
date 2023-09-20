(declare-fun x1_ack!2275 () (_ BitVec 64))
(declare-fun x0_ack!2282 () (_ BitVec 64))
(declare-fun x2_ack!2276 () (_ BitVec 64))
(declare-fun b_ack!2281 () (_ BitVec 64))
(declare-fun a_ack!2280 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!2277 () (_ BitVec 64))
(declare-fun y1_ack!2278 () (_ BitVec 64))
(declare-fun y2_ack!2279 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!2282) ((_ to_fp 11 53) x1_ack!2275)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!2275) ((_ to_fp 11 53) x2_ack!2276)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2275)
                       ((_ to_fp 11 53) x0_ack!2282))
               ((_ to_fp 11 53) x0_ack!2282))
       ((_ to_fp 11 53) x1_ack!2275)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!2275)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2275)
                       ((_ to_fp 11 53) x0_ack!2282)))
       ((_ to_fp 11 53) x0_ack!2282)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!2276)
                       ((_ to_fp 11 53) x1_ack!2275))
               ((_ to_fp 11 53) x1_ack!2275))
       ((_ to_fp 11 53) x2_ack!2276)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!2276)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!2276)
                       ((_ to_fp 11 53) x1_ack!2275)))
       ((_ to_fp 11 53) x1_ack!2275)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!2275)
                    ((_ to_fp 11 53) x0_ack!2282))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2276)
                    ((_ to_fp 11 53) x1_ack!2275))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!2280) ((_ to_fp 11 53) b_ack!2281))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2280) ((_ to_fp 11 53) x0_ack!2282))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!2281) ((_ to_fp 11 53) x2_ack!2276))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!2280) ((_ to_fp 11 53) b_ack!2281))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2280) ((_ to_fp 11 53) x0_ack!2282))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!2280) ((_ to_fp 11 53) x1_ack!2275)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!2275) ((_ to_fp 11 53) a_ack!2280))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!2281) ((_ to_fp 11 53) x1_ack!2275))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!2281) ((_ to_fp 11 53) x2_ack!2276))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2276)
                    ((_ to_fp 11 53) x1_ack!2275))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!2279)
                           ((_ to_fp 11 53) y1_ack!2278))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!2276)
                                   ((_ to_fp 11 53) x1_ack!2275)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!2278)
                           ((_ to_fp 11 53) y0_ack!2277))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!2275)
                                   ((_ to_fp 11 53) x0_ack!2282)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!2276)
                                   ((_ to_fp 11 53) x1_ack!2275))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!2275)
                                   ((_ to_fp 11 53) x0_ack!2282))))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   (fp.sub roundNearestTiesToEven a!1 a!2))
                           a!3))))
(let ((a!5 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!2276)
                                   ((_ to_fp 11 53) x1_ack!2275))
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   a!4))
                   ((_ to_fp 11 53) #x4008000000000000))))
  (FPCHECK_FSUB_UNDERFLOW
    (fp.div roundNearestTiesToEven
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) y2_ack!2279)
                    ((_ to_fp 11 53) y1_ack!2278))
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2276)
                    ((_ to_fp 11 53) x1_ack!2275)))
    a!5)))))

(check-sat)
(exit)
