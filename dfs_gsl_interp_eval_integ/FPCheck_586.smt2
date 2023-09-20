(declare-fun x1_ack!7402 () (_ BitVec 64))
(declare-fun x0_ack!7409 () (_ BitVec 64))
(declare-fun x2_ack!7403 () (_ BitVec 64))
(declare-fun b_ack!7408 () (_ BitVec 64))
(declare-fun a_ack!7407 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(declare-fun y0_ack!7404 () (_ BitVec 64))
(declare-fun y1_ack!7405 () (_ BitVec 64))
(declare-fun y2_ack!7406 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!7409) ((_ to_fp 11 53) x1_ack!7402)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!7402) ((_ to_fp 11 53) x2_ack!7403)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7402)
                       ((_ to_fp 11 53) x0_ack!7409))
               ((_ to_fp 11 53) x0_ack!7409))
       ((_ to_fp 11 53) x1_ack!7402)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!7402)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7402)
                       ((_ to_fp 11 53) x0_ack!7409)))
       ((_ to_fp 11 53) x0_ack!7409)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7403)
                       ((_ to_fp 11 53) x1_ack!7402))
               ((_ to_fp 11 53) x1_ack!7402))
       ((_ to_fp 11 53) x2_ack!7403)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!7403)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7403)
                       ((_ to_fp 11 53) x1_ack!7402)))
       ((_ to_fp 11 53) x1_ack!7402)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7402)
                    ((_ to_fp 11 53) x0_ack!7409))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!7403)
                    ((_ to_fp 11 53) x1_ack!7402))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!7407) ((_ to_fp 11 53) b_ack!7408))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7407) ((_ to_fp 11 53) x0_ack!7409))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!7408) ((_ to_fp 11 53) x2_ack!7403))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!7407) ((_ to_fp 11 53) b_ack!7408))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7407) ((_ to_fp 11 53) x0_ack!7409))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!7407) ((_ to_fp 11 53) x1_ack!7402))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!7408) ((_ to_fp 11 53) x0_ack!7409)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7402)
                    ((_ to_fp 11 53) x0_ack!7409))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!7406)
                           ((_ to_fp 11 53) y1_ack!7405))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!7403)
                                   ((_ to_fp 11 53) x1_ack!7402)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!7405)
                           ((_ to_fp 11 53) y0_ack!7404))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!7402)
                                   ((_ to_fp 11 53) x0_ack!7409)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!7403)
                                   ((_ to_fp 11 53) x1_ack!7402))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!7402)
                                   ((_ to_fp 11 53) x0_ack!7409))))))
  (FPCHECK_FADD_UNDERFLOW
    (fp.div roundNearestTiesToEven
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4008000000000000)
                    (fp.sub roundNearestTiesToEven a!1 a!2))
            a!3)
    #x0000000000000000)))

(check-sat)
(exit)
