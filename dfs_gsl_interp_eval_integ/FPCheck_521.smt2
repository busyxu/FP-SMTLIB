(declare-fun x1_ack!6543 () (_ BitVec 64))
(declare-fun x0_ack!6550 () (_ BitVec 64))
(declare-fun x2_ack!6544 () (_ BitVec 64))
(declare-fun b_ack!6549 () (_ BitVec 64))
(declare-fun a_ack!6548 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!6545 () (_ BitVec 64))
(declare-fun y1_ack!6546 () (_ BitVec 64))
(declare-fun y2_ack!6547 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!6550) ((_ to_fp 11 53) x1_ack!6543)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!6543) ((_ to_fp 11 53) x2_ack!6544)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6543)
                       ((_ to_fp 11 53) x0_ack!6550))
               ((_ to_fp 11 53) x0_ack!6550))
       ((_ to_fp 11 53) x1_ack!6543)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!6543)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6543)
                       ((_ to_fp 11 53) x0_ack!6550)))
       ((_ to_fp 11 53) x0_ack!6550)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6544)
                       ((_ to_fp 11 53) x1_ack!6543))
               ((_ to_fp 11 53) x1_ack!6543))
       ((_ to_fp 11 53) x2_ack!6544)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!6544)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6544)
                       ((_ to_fp 11 53) x1_ack!6543)))
       ((_ to_fp 11 53) x1_ack!6543)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!6543)
                    ((_ to_fp 11 53) x0_ack!6550))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!6544)
                    ((_ to_fp 11 53) x1_ack!6543))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!6548) ((_ to_fp 11 53) b_ack!6549))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6548) ((_ to_fp 11 53) x0_ack!6550))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!6549) ((_ to_fp 11 53) x2_ack!6544))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!6548) ((_ to_fp 11 53) b_ack!6549))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6548) ((_ to_fp 11 53) x0_ack!6550))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!6548) ((_ to_fp 11 53) x1_ack!6543)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!6543) ((_ to_fp 11 53) a_ack!6548))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!6549) ((_ to_fp 11 53) x1_ack!6543))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!6549) ((_ to_fp 11 53) x2_ack!6544))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!6544)
                    ((_ to_fp 11 53) x1_ack!6543))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!6547)
                           ((_ to_fp 11 53) y1_ack!6546))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!6544)
                                   ((_ to_fp 11 53) x1_ack!6543)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!6546)
                           ((_ to_fp 11 53) y0_ack!6545))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!6543)
                                   ((_ to_fp 11 53) x0_ack!6550)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!6544)
                                   ((_ to_fp 11 53) x1_ack!6543))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!6543)
                                   ((_ to_fp 11 53) x0_ack!6550))))))
  (FPCHECK_FMUL_UNDERFLOW
    #x3fd5555555555555
    (fp.div roundNearestTiesToEven
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4008000000000000)
                    (fp.sub roundNearestTiesToEven a!1 a!2))
            a!3))))

(check-sat)
(exit)
