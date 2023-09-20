(declare-fun x1_ack!4418 () (_ BitVec 64))
(declare-fun x0_ack!4422 () (_ BitVec 64))
(declare-fun x2_ack!4419 () (_ BitVec 64))
(declare-fun b_ack!4421 () (_ BitVec 64))
(declare-fun a_ack!4420 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!4422) ((_ to_fp 11 53) x1_ack!4418)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!4418) ((_ to_fp 11 53) x2_ack!4419)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4418)
                       ((_ to_fp 11 53) x0_ack!4422))
               ((_ to_fp 11 53) x0_ack!4422))
       ((_ to_fp 11 53) x1_ack!4418)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!4418)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4418)
                       ((_ to_fp 11 53) x0_ack!4422)))
       ((_ to_fp 11 53) x0_ack!4422)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4419)
                       ((_ to_fp 11 53) x1_ack!4418))
               ((_ to_fp 11 53) x1_ack!4418))
       ((_ to_fp 11 53) x2_ack!4419)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!4419)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4419)
                       ((_ to_fp 11 53) x1_ack!4418)))
       ((_ to_fp 11 53) x1_ack!4418)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!4418)
                    ((_ to_fp 11 53) x0_ack!4422))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!4419)
                    ((_ to_fp 11 53) x1_ack!4418))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!4420) ((_ to_fp 11 53) b_ack!4421))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4420) ((_ to_fp 11 53) x0_ack!4422))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!4421) ((_ to_fp 11 53) x2_ack!4419))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!4420) ((_ to_fp 11 53) b_ack!4421))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4420) ((_ to_fp 11 53) x0_ack!4422))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!4420) ((_ to_fp 11 53) x1_ack!4418))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!4421) ((_ to_fp 11 53) x0_ack!4422))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!4421) ((_ to_fp 11 53) x1_ack!4418))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!4418)
                    ((_ to_fp 11 53) x0_ack!4422))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FADD_OVERFLOW
  (fp.mul roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) a_ack!4420)
                  ((_ to_fp 11 53) x0_ack!4422))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) a_ack!4420)
                  ((_ to_fp 11 53) x0_ack!4422)))
  (fp.mul roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) b_ack!4421)
                  ((_ to_fp 11 53) x0_ack!4422))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) b_ack!4421)
                  ((_ to_fp 11 53) x0_ack!4422)))))

(check-sat)
(exit)
