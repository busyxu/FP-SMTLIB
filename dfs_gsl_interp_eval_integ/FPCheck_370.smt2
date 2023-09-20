(declare-fun x1_ack!4496 () (_ BitVec 64))
(declare-fun x0_ack!4502 () (_ BitVec 64))
(declare-fun x2_ack!4497 () (_ BitVec 64))
(declare-fun b_ack!4501 () (_ BitVec 64))
(declare-fun a_ack!4500 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y1_ack!4498 () (_ BitVec 64))
(declare-fun y2_ack!4499 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!4502) ((_ to_fp 11 53) x1_ack!4496)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!4496) ((_ to_fp 11 53) x2_ack!4497)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4496)
                       ((_ to_fp 11 53) x0_ack!4502))
               ((_ to_fp 11 53) x0_ack!4502))
       ((_ to_fp 11 53) x1_ack!4496)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!4496)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4496)
                       ((_ to_fp 11 53) x0_ack!4502)))
       ((_ to_fp 11 53) x0_ack!4502)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4497)
                       ((_ to_fp 11 53) x1_ack!4496))
               ((_ to_fp 11 53) x1_ack!4496))
       ((_ to_fp 11 53) x2_ack!4497)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!4497)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4497)
                       ((_ to_fp 11 53) x1_ack!4496)))
       ((_ to_fp 11 53) x1_ack!4496)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!4496)
                    ((_ to_fp 11 53) x0_ack!4502))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!4497)
                    ((_ to_fp 11 53) x1_ack!4496))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!4500) ((_ to_fp 11 53) b_ack!4501))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4500) ((_ to_fp 11 53) x0_ack!4502))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!4501) ((_ to_fp 11 53) x2_ack!4497))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!4500) ((_ to_fp 11 53) b_ack!4501))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4500) ((_ to_fp 11 53) x0_ack!4502))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!4500) ((_ to_fp 11 53) x1_ack!4496)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!4496) ((_ to_fp 11 53) a_ack!4500))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!4501) ((_ to_fp 11 53) x1_ack!4496))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!4501) ((_ to_fp 11 53) x2_ack!4497)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!4497)
                    ((_ to_fp 11 53) x1_ack!4496))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FDIV_ACCURACY
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) y2_ack!4499)
          ((_ to_fp 11 53) y1_ack!4498))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x2_ack!4497)
          ((_ to_fp 11 53) x1_ack!4496))))

(check-sat)
(exit)
