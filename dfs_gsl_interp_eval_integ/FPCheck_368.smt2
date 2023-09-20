(declare-fun x1_ack!4468 () (_ BitVec 64))
(declare-fun x0_ack!4474 () (_ BitVec 64))
(declare-fun x2_ack!4469 () (_ BitVec 64))
(declare-fun b_ack!4473 () (_ BitVec 64))
(declare-fun a_ack!4472 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y1_ack!4470 () (_ BitVec 64))
(declare-fun y2_ack!4471 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!4474) ((_ to_fp 11 53) x1_ack!4468)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!4468) ((_ to_fp 11 53) x2_ack!4469)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4468)
                       ((_ to_fp 11 53) x0_ack!4474))
               ((_ to_fp 11 53) x0_ack!4474))
       ((_ to_fp 11 53) x1_ack!4468)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!4468)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4468)
                       ((_ to_fp 11 53) x0_ack!4474)))
       ((_ to_fp 11 53) x0_ack!4474)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4469)
                       ((_ to_fp 11 53) x1_ack!4468))
               ((_ to_fp 11 53) x1_ack!4468))
       ((_ to_fp 11 53) x2_ack!4469)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!4469)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4469)
                       ((_ to_fp 11 53) x1_ack!4468)))
       ((_ to_fp 11 53) x1_ack!4468)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!4468)
                    ((_ to_fp 11 53) x0_ack!4474))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!4469)
                    ((_ to_fp 11 53) x1_ack!4468))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!4472) ((_ to_fp 11 53) b_ack!4473))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4472) ((_ to_fp 11 53) x0_ack!4474))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!4473) ((_ to_fp 11 53) x2_ack!4469))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!4472) ((_ to_fp 11 53) b_ack!4473))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4472) ((_ to_fp 11 53) x0_ack!4474))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!4472) ((_ to_fp 11 53) x1_ack!4468)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!4468) ((_ to_fp 11 53) a_ack!4472))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!4473) ((_ to_fp 11 53) x1_ack!4468))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!4473) ((_ to_fp 11 53) x2_ack!4469)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!4469)
                    ((_ to_fp 11 53) x1_ack!4468))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FDIV_OVERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) y2_ack!4471)
          ((_ to_fp 11 53) y1_ack!4470))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x2_ack!4469)
          ((_ to_fp 11 53) x1_ack!4468))))

(check-sat)
(exit)
