(declare-fun x1_ack!4488 () (_ BitVec 64))
(declare-fun x0_ack!4492 () (_ BitVec 64))
(declare-fun x2_ack!4489 () (_ BitVec 64))
(declare-fun b_ack!4491 () (_ BitVec 64))
(declare-fun a_ack!4490 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!4492) ((_ to_fp 11 53) x1_ack!4488)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!4488) ((_ to_fp 11 53) x2_ack!4489)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4488)
                       ((_ to_fp 11 53) x0_ack!4492))
               ((_ to_fp 11 53) x0_ack!4492))
       ((_ to_fp 11 53) x1_ack!4488)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!4488)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4488)
                       ((_ to_fp 11 53) x0_ack!4492)))
       ((_ to_fp 11 53) x0_ack!4492)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4489)
                       ((_ to_fp 11 53) x1_ack!4488))
               ((_ to_fp 11 53) x1_ack!4488))
       ((_ to_fp 11 53) x2_ack!4489)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!4489)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4489)
                       ((_ to_fp 11 53) x1_ack!4488)))
       ((_ to_fp 11 53) x1_ack!4488)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!4488)
                    ((_ to_fp 11 53) x0_ack!4492))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!4489)
                    ((_ to_fp 11 53) x1_ack!4488))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!4490) ((_ to_fp 11 53) b_ack!4491))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4490) ((_ to_fp 11 53) x0_ack!4492))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!4491) ((_ to_fp 11 53) x2_ack!4489))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!4490) ((_ to_fp 11 53) b_ack!4491))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4490) ((_ to_fp 11 53) x0_ack!4492))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!4490) ((_ to_fp 11 53) x1_ack!4488))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!4491) ((_ to_fp 11 53) x0_ack!4492))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!4491) ((_ to_fp 11 53) x1_ack!4488))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!4488)
                    ((_ to_fp 11 53) x0_ack!4492))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!4490)
                                   ((_ to_fp 11 53) x0_ack!4492))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!4490)
                                   ((_ to_fp 11 53) x0_ack!4492)))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!4491)
                                   ((_ to_fp 11 53) x0_ack!4492))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!4491)
                                   ((_ to_fp 11 53) x0_ack!4492))))))
  (FPCHECK_FADD_UNDERFLOW
    a!1
    (fp.mul roundNearestTiesToEven
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!4490)
                    ((_ to_fp 11 53) x0_ack!4492))
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) b_ack!4491)
                    ((_ to_fp 11 53) x0_ack!4492))))))

(check-sat)
(exit)
