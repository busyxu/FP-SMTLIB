(declare-fun x1_ack!2534 () (_ BitVec 64))
(declare-fun x0_ack!2538 () (_ BitVec 64))
(declare-fun x2_ack!2535 () (_ BitVec 64))
(declare-fun b_ack!2537 () (_ BitVec 64))
(declare-fun a_ack!2536 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!2538) ((_ to_fp 11 53) x1_ack!2534)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!2534) ((_ to_fp 11 53) x2_ack!2535)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2534)
                       ((_ to_fp 11 53) x0_ack!2538))
               ((_ to_fp 11 53) x0_ack!2538))
       ((_ to_fp 11 53) x1_ack!2534)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!2534)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2534)
                       ((_ to_fp 11 53) x0_ack!2538)))
       ((_ to_fp 11 53) x0_ack!2538)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!2535)
                       ((_ to_fp 11 53) x1_ack!2534))
               ((_ to_fp 11 53) x1_ack!2534))
       ((_ to_fp 11 53) x2_ack!2535)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!2535)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!2535)
                       ((_ to_fp 11 53) x1_ack!2534)))
       ((_ to_fp 11 53) x1_ack!2534)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!2534)
                    ((_ to_fp 11 53) x0_ack!2538))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2535)
                    ((_ to_fp 11 53) x1_ack!2534))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!2536) ((_ to_fp 11 53) b_ack!2537))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2536) ((_ to_fp 11 53) x0_ack!2538))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!2537) ((_ to_fp 11 53) x2_ack!2535))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!2536) ((_ to_fp 11 53) b_ack!2537))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2536) ((_ to_fp 11 53) x0_ack!2538))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!2536) ((_ to_fp 11 53) x1_ack!2534)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!2534) ((_ to_fp 11 53) a_ack!2536))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!2537) ((_ to_fp 11 53) x1_ack!2534))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!2537) ((_ to_fp 11 53) x2_ack!2535))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2535)
                    ((_ to_fp 11 53) x1_ack!2534))
            ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
