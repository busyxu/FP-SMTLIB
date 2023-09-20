(declare-fun x1_ack!2303 () (_ BitVec 64))
(declare-fun x0_ack!2310 () (_ BitVec 64))
(declare-fun x2_ack!2304 () (_ BitVec 64))
(declare-fun b_ack!2309 () (_ BitVec 64))
(declare-fun a_ack!2308 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!2305 () (_ BitVec 64))
(declare-fun y1_ack!2306 () (_ BitVec 64))
(declare-fun y2_ack!2307 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!2310) ((_ to_fp 11 53) x1_ack!2303)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!2303) ((_ to_fp 11 53) x2_ack!2304)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2303)
                       ((_ to_fp 11 53) x0_ack!2310))
               ((_ to_fp 11 53) x0_ack!2310))
       ((_ to_fp 11 53) x1_ack!2303)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!2303)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2303)
                       ((_ to_fp 11 53) x0_ack!2310)))
       ((_ to_fp 11 53) x0_ack!2310)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!2304)
                       ((_ to_fp 11 53) x1_ack!2303))
               ((_ to_fp 11 53) x1_ack!2303))
       ((_ to_fp 11 53) x2_ack!2304)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!2304)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!2304)
                       ((_ to_fp 11 53) x1_ack!2303)))
       ((_ to_fp 11 53) x1_ack!2303)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!2303)
                    ((_ to_fp 11 53) x0_ack!2310))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2304)
                    ((_ to_fp 11 53) x1_ack!2303))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!2308) ((_ to_fp 11 53) b_ack!2309))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2308) ((_ to_fp 11 53) x0_ack!2310))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!2309) ((_ to_fp 11 53) x2_ack!2304))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!2308) ((_ to_fp 11 53) b_ack!2309))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2308) ((_ to_fp 11 53) x0_ack!2310))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!2308) ((_ to_fp 11 53) x1_ack!2303))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!2309) ((_ to_fp 11 53) x0_ack!2310))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!2309) ((_ to_fp 11 53) x1_ack!2303)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!2303) ((_ to_fp 11 53) b_ack!2309))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!2303)
                    ((_ to_fp 11 53) x0_ack!2310))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2304)
                    ((_ to_fp 11 53) x1_ack!2303))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!2307)
                           ((_ to_fp 11 53) y1_ack!2306))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!2304)
                                   ((_ to_fp 11 53) x1_ack!2303)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!2306)
                           ((_ to_fp 11 53) y0_ack!2305))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!2303)
                                   ((_ to_fp 11 53) x0_ack!2310)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!2304)
                                   ((_ to_fp 11 53) x1_ack!2303))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!2303)
                                   ((_ to_fp 11 53) x0_ack!2310))))))
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
                                   ((_ to_fp 11 53) x2_ack!2304)
                                   ((_ to_fp 11 53) x1_ack!2303))
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   a!4))
                   ((_ to_fp 11 53) #x4008000000000000))))
(let ((a!6 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) y2_ack!2307)
                                   ((_ to_fp 11 53) y1_ack!2306))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!2304)
                                   ((_ to_fp 11 53) x1_ack!2303)))
                   a!5)))
  (FPCHECK_FMUL_UNDERFLOW #x3fe0000000000000 a!6))))))

(check-sat)
(exit)
