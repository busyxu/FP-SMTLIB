(declare-fun x1_ack!2367 () (_ BitVec 64))
(declare-fun x0_ack!2374 () (_ BitVec 64))
(declare-fun x2_ack!2368 () (_ BitVec 64))
(declare-fun b_ack!2373 () (_ BitVec 64))
(declare-fun a_ack!2372 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!2369 () (_ BitVec 64))
(declare-fun y1_ack!2370 () (_ BitVec 64))
(declare-fun y2_ack!2371 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!2374) ((_ to_fp 11 53) x1_ack!2367)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!2367) ((_ to_fp 11 53) x2_ack!2368)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2367)
                       ((_ to_fp 11 53) x0_ack!2374))
               ((_ to_fp 11 53) x0_ack!2374))
       ((_ to_fp 11 53) x1_ack!2367)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!2367)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2367)
                       ((_ to_fp 11 53) x0_ack!2374)))
       ((_ to_fp 11 53) x0_ack!2374)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!2368)
                       ((_ to_fp 11 53) x1_ack!2367))
               ((_ to_fp 11 53) x1_ack!2367))
       ((_ to_fp 11 53) x2_ack!2368)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!2368)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!2368)
                       ((_ to_fp 11 53) x1_ack!2367)))
       ((_ to_fp 11 53) x1_ack!2367)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!2367)
                    ((_ to_fp 11 53) x0_ack!2374))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2368)
                    ((_ to_fp 11 53) x1_ack!2367))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!2372) ((_ to_fp 11 53) b_ack!2373))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2372) ((_ to_fp 11 53) x0_ack!2374))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!2373) ((_ to_fp 11 53) x2_ack!2368))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!2372) ((_ to_fp 11 53) b_ack!2373))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2372) ((_ to_fp 11 53) x0_ack!2374))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!2372) ((_ to_fp 11 53) x1_ack!2367))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!2373) ((_ to_fp 11 53) x0_ack!2374))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!2373) ((_ to_fp 11 53) x1_ack!2367)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!2367) ((_ to_fp 11 53) b_ack!2373))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!2367)
                    ((_ to_fp 11 53) x0_ack!2374))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2368)
                    ((_ to_fp 11 53) x1_ack!2367))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!2371)
                           ((_ to_fp 11 53) y1_ack!2370))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!2368)
                                   ((_ to_fp 11 53) x1_ack!2367)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!2370)
                           ((_ to_fp 11 53) y0_ack!2369))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!2367)
                                   ((_ to_fp 11 53) x0_ack!2374)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!2368)
                                   ((_ to_fp 11 53) x1_ack!2367))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!2367)
                                   ((_ to_fp 11 53) x0_ack!2374))))))
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
                                   ((_ to_fp 11 53) x2_ack!2368)
                                   ((_ to_fp 11 53) x1_ack!2367))
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   a!4))
                   ((_ to_fp 11 53) #x4008000000000000))))
(let ((a!6 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) y2_ack!2371)
                                   ((_ to_fp 11 53) y1_ack!2370))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!2368)
                                   ((_ to_fp 11 53) x1_ack!2367)))
                   a!5)))
  (FPCHECK_FMUL_ACCURACY
    (fp.mul roundNearestTiesToEven ((_ to_fp 11 53) #x3fe0000000000000) a!6)
    (fp.add roundNearestTiesToEven
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!2367)
                    ((_ to_fp 11 53) x1_ack!2367))
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) b_ack!2373)
                    ((_ to_fp 11 53) x1_ack!2367)))))))))

(check-sat)
(exit)
