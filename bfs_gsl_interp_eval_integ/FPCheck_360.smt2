(declare-fun x1_ack!4498 () (_ BitVec 64))
(declare-fun x0_ack!4502 () (_ BitVec 64))
(declare-fun x2_ack!4499 () (_ BitVec 64))
(declare-fun b_ack!4501 () (_ BitVec 64))
(declare-fun a_ack!4500 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!4502) ((_ to_fp 11 53) x1_ack!4498)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!4498) ((_ to_fp 11 53) x2_ack!4499)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4498)
                       ((_ to_fp 11 53) x0_ack!4502))
               ((_ to_fp 11 53) x0_ack!4502))
       ((_ to_fp 11 53) x1_ack!4498)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!4498)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4498)
                       ((_ to_fp 11 53) x0_ack!4502)))
       ((_ to_fp 11 53) x0_ack!4502)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4499)
                       ((_ to_fp 11 53) x1_ack!4498))
               ((_ to_fp 11 53) x1_ack!4498))
       ((_ to_fp 11 53) x2_ack!4499)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!4499)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4499)
                       ((_ to_fp 11 53) x1_ack!4498)))
       ((_ to_fp 11 53) x1_ack!4498)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!4498)
                    ((_ to_fp 11 53) x0_ack!4502))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!4499)
                    ((_ to_fp 11 53) x1_ack!4498))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!4500) ((_ to_fp 11 53) b_ack!4501))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4500) ((_ to_fp 11 53) x0_ack!4502))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!4501) ((_ to_fp 11 53) x2_ack!4499))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!4500) ((_ to_fp 11 53) b_ack!4501))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4500) ((_ to_fp 11 53) x0_ack!4502))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!4500) ((_ to_fp 11 53) x1_ack!4498))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!4501) ((_ to_fp 11 53) x0_ack!4502))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!4501) ((_ to_fp 11 53) x1_ack!4498))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!4498)
                    ((_ to_fp 11 53) x0_ack!4502))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!4500)
                                   ((_ to_fp 11 53) x0_ack!4502))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!4500)
                                   ((_ to_fp 11 53) x0_ack!4502)))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!4501)
                                   ((_ to_fp 11 53) x0_ack!4502))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!4501)
                                   ((_ to_fp 11 53) x0_ack!4502))))))
  (FPCHECK_FADD_ACCURACY
    a!1
    (fp.mul roundNearestTiesToEven
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!4500)
                    ((_ to_fp 11 53) x0_ack!4502))
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) b_ack!4501)
                    ((_ to_fp 11 53) x0_ack!4502))))))

(check-sat)
(exit)
