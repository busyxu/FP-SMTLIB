(declare-fun x1_ack!2531 () (_ BitVec 64))
(declare-fun x0_ack!2535 () (_ BitVec 64))
(declare-fun x2_ack!2532 () (_ BitVec 64))
(declare-fun b_ack!2534 () (_ BitVec 64))
(declare-fun a_ack!2533 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!2535) ((_ to_fp 11 53) x1_ack!2531)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!2531) ((_ to_fp 11 53) x2_ack!2532)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2531)
                       ((_ to_fp 11 53) x0_ack!2535))
               ((_ to_fp 11 53) x0_ack!2535))
       ((_ to_fp 11 53) x1_ack!2531)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!2531)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2531)
                       ((_ to_fp 11 53) x0_ack!2535)))
       ((_ to_fp 11 53) x0_ack!2535)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!2532)
                       ((_ to_fp 11 53) x1_ack!2531))
               ((_ to_fp 11 53) x1_ack!2531))
       ((_ to_fp 11 53) x2_ack!2532)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!2532)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!2532)
                       ((_ to_fp 11 53) x1_ack!2531)))
       ((_ to_fp 11 53) x1_ack!2531)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!2531)
                    ((_ to_fp 11 53) x0_ack!2535))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2532)
                    ((_ to_fp 11 53) x1_ack!2531))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!2533) ((_ to_fp 11 53) b_ack!2534))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2533) ((_ to_fp 11 53) x0_ack!2535))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!2534) ((_ to_fp 11 53) x2_ack!2532))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!2533) ((_ to_fp 11 53) b_ack!2534))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2533) ((_ to_fp 11 53) x0_ack!2535))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!2533) ((_ to_fp 11 53) x1_ack!2531))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!2534) ((_ to_fp 11 53) x0_ack!2535))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!2534) ((_ to_fp 11 53) x1_ack!2531)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!2531) ((_ to_fp 11 53) b_ack!2534))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!2531)
                    ((_ to_fp 11 53) x0_ack!2535))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2532)
                    ((_ to_fp 11 53) x1_ack!2531))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!2531)
                                   ((_ to_fp 11 53) x1_ack!2531))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!2531)
                                   ((_ to_fp 11 53) x1_ack!2531)))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!2534)
                                   ((_ to_fp 11 53) x1_ack!2531))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!2534)
                                   ((_ to_fp 11 53) x1_ack!2531))))))
  (FPCHECK_FADD_OVERFLOW
    a!1
    (fp.mul roundNearestTiesToEven
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!2531)
                    ((_ to_fp 11 53) x1_ack!2531))
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) b_ack!2534)
                    ((_ to_fp 11 53) x1_ack!2531))))))

(check-sat)
(exit)
