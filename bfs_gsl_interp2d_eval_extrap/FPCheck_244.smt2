(declare-fun x1_ack!2531 () (_ BitVec 64))
(declare-fun x0_ack!2535 () (_ BitVec 64))
(declare-fun y0_ack!2532 () (_ BitVec 64))
(declare-fun x_ack!2533 () (_ BitVec 64))
(declare-fun y_ack!2534 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!2535) ((_ to_fp 11 53) x1_ack!2531))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!2532) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!2533) ((_ to_fp 11 53) x0_ack!2535))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!2533) ((_ to_fp 11 53) x1_ack!2531))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!2534) ((_ to_fp 11 53) y0_ack!2532))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!2534) ((_ to_fp 11 53) #x3ff0000000000000)))
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
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!2532))
               ((_ to_fp 11 53) y0_ack!2532))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!2532)))
       ((_ to_fp 11 53) y0_ack!2532)))
(assert (FPCHECK_FSUB_ACCURACY x_ack!2533 x0_ack!2535))

(check-sat)
(exit)
