(declare-fun x1_ack!2351 () (_ BitVec 64))
(declare-fun x0_ack!2358 () (_ BitVec 64))
(declare-fun x2_ack!2352 () (_ BitVec 64))
(declare-fun b_ack!2357 () (_ BitVec 64))
(declare-fun a_ack!2356 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!2353 () (_ BitVec 64))
(declare-fun y1_ack!2354 () (_ BitVec 64))
(declare-fun y2_ack!2355 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!2358) ((_ to_fp 11 53) x1_ack!2351)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!2351) ((_ to_fp 11 53) x2_ack!2352)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2351)
                       ((_ to_fp 11 53) x0_ack!2358))
               ((_ to_fp 11 53) x0_ack!2358))
       ((_ to_fp 11 53) x1_ack!2351)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!2351)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2351)
                       ((_ to_fp 11 53) x0_ack!2358)))
       ((_ to_fp 11 53) x0_ack!2358)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!2352)
                       ((_ to_fp 11 53) x1_ack!2351))
               ((_ to_fp 11 53) x1_ack!2351))
       ((_ to_fp 11 53) x2_ack!2352)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!2352)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!2352)
                       ((_ to_fp 11 53) x1_ack!2351)))
       ((_ to_fp 11 53) x1_ack!2351)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!2351)
                    ((_ to_fp 11 53) x0_ack!2358))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2352)
                    ((_ to_fp 11 53) x1_ack!2351))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!2356) ((_ to_fp 11 53) b_ack!2357))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2356) ((_ to_fp 11 53) x0_ack!2358))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!2357) ((_ to_fp 11 53) x2_ack!2352))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!2356) ((_ to_fp 11 53) b_ack!2357))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2356) ((_ to_fp 11 53) x0_ack!2358))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!2356) ((_ to_fp 11 53) x1_ack!2351))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!2357) ((_ to_fp 11 53) x0_ack!2358))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!2357) ((_ to_fp 11 53) x1_ack!2351)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!2351) ((_ to_fp 11 53) b_ack!2357))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!2351)
                    ((_ to_fp 11 53) x0_ack!2358))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2352)
                    ((_ to_fp 11 53) x1_ack!2351))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!2355)
                           ((_ to_fp 11 53) y1_ack!2354))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!2352)
                                   ((_ to_fp 11 53) x1_ack!2351)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!2354)
                           ((_ to_fp 11 53) y0_ack!2353))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!2351)
                                   ((_ to_fp 11 53) x0_ack!2358)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!2352)
                                   ((_ to_fp 11 53) x1_ack!2351))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!2351)
                                   ((_ to_fp 11 53) x0_ack!2358))))))
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
                                   ((_ to_fp 11 53) x2_ack!2352)
                                   ((_ to_fp 11 53) x1_ack!2351))
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   a!4))
                   ((_ to_fp 11 53) #x4008000000000000))))
(let ((a!6 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) y2_ack!2355)
                                   ((_ to_fp 11 53) y1_ack!2354))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!2352)
                                   ((_ to_fp 11 53) x1_ack!2351)))
                   a!5)))
  (FPCHECK_FMUL_UNDERFLOW
    (fp.mul roundNearestTiesToEven ((_ to_fp 11 53) #x3fe0000000000000) a!6)
    (fp.add roundNearestTiesToEven
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!2351)
                    ((_ to_fp 11 53) x1_ack!2351))
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) b_ack!2357)
                    ((_ to_fp 11 53) x1_ack!2351)))))))))

(check-sat)
(exit)
