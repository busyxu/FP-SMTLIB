(declare-fun x1_ack!3473 () (_ BitVec 64))
(declare-fun x0_ack!3480 () (_ BitVec 64))
(declare-fun x2_ack!3474 () (_ BitVec 64))
(declare-fun b_ack!3479 () (_ BitVec 64))
(declare-fun a_ack!3478 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun y0_ack!3475 () (_ BitVec 64))
(declare-fun y1_ack!3476 () (_ BitVec 64))
(declare-fun y2_ack!3477 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!3480) ((_ to_fp 11 53) x1_ack!3473)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!3473) ((_ to_fp 11 53) x2_ack!3474)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3473)
                       ((_ to_fp 11 53) x0_ack!3480))
               ((_ to_fp 11 53) x0_ack!3480))
       ((_ to_fp 11 53) x1_ack!3473)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!3473)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3473)
                       ((_ to_fp 11 53) x0_ack!3480)))
       ((_ to_fp 11 53) x0_ack!3480)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3474)
                       ((_ to_fp 11 53) x1_ack!3473))
               ((_ to_fp 11 53) x1_ack!3473))
       ((_ to_fp 11 53) x2_ack!3474)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!3474)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3474)
                       ((_ to_fp 11 53) x1_ack!3473)))
       ((_ to_fp 11 53) x1_ack!3473)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!3473)
                    ((_ to_fp 11 53) x0_ack!3480))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!3474)
                    ((_ to_fp 11 53) x1_ack!3473))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!3478) ((_ to_fp 11 53) b_ack!3479))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3478) ((_ to_fp 11 53) x0_ack!3480))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!3479) ((_ to_fp 11 53) x2_ack!3474))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!3478) ((_ to_fp 11 53) b_ack!3479))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3478) ((_ to_fp 11 53) x0_ack!3480))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!3478) ((_ to_fp 11 53) x1_ack!3473)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!3473) ((_ to_fp 11 53) a_ack!3478))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!3479) ((_ to_fp 11 53) x1_ack!3473))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!3479) ((_ to_fp 11 53) x2_ack!3474)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!3474)
                    ((_ to_fp 11 53) x1_ack!3473))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!3477)
                           ((_ to_fp 11 53) y1_ack!3476))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!3474)
                                   ((_ to_fp 11 53) x1_ack!3473)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!3476)
                           ((_ to_fp 11 53) y0_ack!3475))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!3473)
                                   ((_ to_fp 11 53) x0_ack!3480)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!3474)
                                   ((_ to_fp 11 53) x1_ack!3473))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!3473)
                                   ((_ to_fp 11 53) x0_ack!3480))))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   (fp.sub roundNearestTiesToEven a!1 a!2))
                           a!3))))
  (FPCHECK_FADD_ACCURACY #x0000000000000000 a!4))))

(check-sat)
(exit)
