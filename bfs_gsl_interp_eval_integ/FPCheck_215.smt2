(declare-fun x1_ack!2529 () (_ BitVec 64))
(declare-fun x0_ack!2533 () (_ BitVec 64))
(declare-fun x2_ack!2530 () (_ BitVec 64))
(declare-fun b_ack!2532 () (_ BitVec 64))
(declare-fun a_ack!2531 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!2533) ((_ to_fp 11 53) x1_ack!2529)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!2529) ((_ to_fp 11 53) x2_ack!2530)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2529)
                       ((_ to_fp 11 53) x0_ack!2533))
               ((_ to_fp 11 53) x0_ack!2533))
       ((_ to_fp 11 53) x1_ack!2529)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!2529)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2529)
                       ((_ to_fp 11 53) x0_ack!2533)))
       ((_ to_fp 11 53) x0_ack!2533)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!2530)
                       ((_ to_fp 11 53) x1_ack!2529))
               ((_ to_fp 11 53) x1_ack!2529))
       ((_ to_fp 11 53) x2_ack!2530)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!2530)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!2530)
                       ((_ to_fp 11 53) x1_ack!2529)))
       ((_ to_fp 11 53) x1_ack!2529)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!2529)
                    ((_ to_fp 11 53) x0_ack!2533))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2530)
                    ((_ to_fp 11 53) x1_ack!2529))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!2531) ((_ to_fp 11 53) b_ack!2532))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2531) ((_ to_fp 11 53) x0_ack!2533))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!2532) ((_ to_fp 11 53) x2_ack!2530))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!2531) ((_ to_fp 11 53) b_ack!2532))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2531) ((_ to_fp 11 53) x0_ack!2533))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!2531) ((_ to_fp 11 53) x1_ack!2529)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!2529) ((_ to_fp 11 53) a_ack!2531))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!2532) ((_ to_fp 11 53) x1_ack!2529))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!2532) ((_ to_fp 11 53) x2_ack!2530))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2530)
                    ((_ to_fp 11 53) x1_ack!2529))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FADD_ACCURACY
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!2531)
          ((_ to_fp 11 53) x1_ack!2529))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!2532)
          ((_ to_fp 11 53) x1_ack!2529))))

(check-sat)
(exit)
