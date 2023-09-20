(declare-fun x1_ack!4478 () (_ BitVec 64))
(declare-fun x0_ack!4482 () (_ BitVec 64))
(declare-fun x2_ack!4479 () (_ BitVec 64))
(declare-fun b_ack!4481 () (_ BitVec 64))
(declare-fun a_ack!4480 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!4482) ((_ to_fp 11 53) x1_ack!4478)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!4478) ((_ to_fp 11 53) x2_ack!4479)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4478)
                       ((_ to_fp 11 53) x0_ack!4482))
               ((_ to_fp 11 53) x0_ack!4482))
       ((_ to_fp 11 53) x1_ack!4478)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!4478)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4478)
                       ((_ to_fp 11 53) x0_ack!4482)))
       ((_ to_fp 11 53) x0_ack!4482)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4479)
                       ((_ to_fp 11 53) x1_ack!4478))
               ((_ to_fp 11 53) x1_ack!4478))
       ((_ to_fp 11 53) x2_ack!4479)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!4479)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4479)
                       ((_ to_fp 11 53) x1_ack!4478)))
       ((_ to_fp 11 53) x1_ack!4478)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!4478)
                    ((_ to_fp 11 53) x0_ack!4482))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!4479)
                    ((_ to_fp 11 53) x1_ack!4478))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!4480) ((_ to_fp 11 53) b_ack!4481))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4480) ((_ to_fp 11 53) x0_ack!4482))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!4481) ((_ to_fp 11 53) x2_ack!4479))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!4480) ((_ to_fp 11 53) b_ack!4481))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4480) ((_ to_fp 11 53) x0_ack!4482))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!4480) ((_ to_fp 11 53) x1_ack!4478))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!4481) ((_ to_fp 11 53) x0_ack!4482))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!4481) ((_ to_fp 11 53) x1_ack!4478))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!4478)
                    ((_ to_fp 11 53) x0_ack!4482))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!4480)
                                   ((_ to_fp 11 53) x0_ack!4482))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!4480)
                                   ((_ to_fp 11 53) x0_ack!4482)))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!4481)
                                   ((_ to_fp 11 53) x0_ack!4482))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!4481)
                                   ((_ to_fp 11 53) x0_ack!4482))))))
  (FPCHECK_FADD_OVERFLOW
    a!1
    (fp.mul roundNearestTiesToEven
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!4480)
                    ((_ to_fp 11 53) x0_ack!4482))
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) b_ack!4481)
                    ((_ to_fp 11 53) x0_ack!4482))))))

(check-sat)
(exit)
