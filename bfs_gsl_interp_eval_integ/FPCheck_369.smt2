(declare-fun x1_ack!4609 () (_ BitVec 64))
(declare-fun x0_ack!4613 () (_ BitVec 64))
(declare-fun x2_ack!4610 () (_ BitVec 64))
(declare-fun b_ack!4612 () (_ BitVec 64))
(declare-fun a_ack!4611 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!4613) ((_ to_fp 11 53) x1_ack!4609)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!4609) ((_ to_fp 11 53) x2_ack!4610)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4609)
                       ((_ to_fp 11 53) x0_ack!4613))
               ((_ to_fp 11 53) x0_ack!4613))
       ((_ to_fp 11 53) x1_ack!4609)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!4609)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4609)
                       ((_ to_fp 11 53) x0_ack!4613)))
       ((_ to_fp 11 53) x0_ack!4613)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4610)
                       ((_ to_fp 11 53) x1_ack!4609))
               ((_ to_fp 11 53) x1_ack!4609))
       ((_ to_fp 11 53) x2_ack!4610)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!4610)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4610)
                       ((_ to_fp 11 53) x1_ack!4609)))
       ((_ to_fp 11 53) x1_ack!4609)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!4609)
                    ((_ to_fp 11 53) x0_ack!4613))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!4610)
                    ((_ to_fp 11 53) x1_ack!4609))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!4611) ((_ to_fp 11 53) b_ack!4612))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4611) ((_ to_fp 11 53) x0_ack!4613))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!4612) ((_ to_fp 11 53) x2_ack!4610))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!4611) ((_ to_fp 11 53) b_ack!4612))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4611) ((_ to_fp 11 53) x0_ack!4613))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!4611) ((_ to_fp 11 53) x1_ack!4609))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!4612) ((_ to_fp 11 53) x0_ack!4613))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!4612) ((_ to_fp 11 53) x1_ack!4609))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!4609)
                    ((_ to_fp 11 53) x0_ack!4613))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_OVERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!4611)
          ((_ to_fp 11 53) x0_ack!4613))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!4611)
          ((_ to_fp 11 53) x0_ack!4613))))

(check-sat)
(exit)
