(declare-fun x1_ack!1496 () (_ BitVec 64))
(declare-fun x0_ack!1500 () (_ BitVec 64))
(declare-fun x2_ack!1497 () (_ BitVec 64))
(declare-fun b_ack!1499 () (_ BitVec 64))
(declare-fun a_ack!1498 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1500) ((_ to_fp 11 53) x1_ack!1496)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1496) ((_ to_fp 11 53) x2_ack!1497)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1496)
                       ((_ to_fp 11 53) x0_ack!1500))
               ((_ to_fp 11 53) x0_ack!1500))
       ((_ to_fp 11 53) x1_ack!1496)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1496)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1496)
                       ((_ to_fp 11 53) x0_ack!1500)))
       ((_ to_fp 11 53) x0_ack!1500)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1497)
                       ((_ to_fp 11 53) x1_ack!1496))
               ((_ to_fp 11 53) x1_ack!1496))
       ((_ to_fp 11 53) x2_ack!1497)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1497)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1497)
                       ((_ to_fp 11 53) x1_ack!1496)))
       ((_ to_fp 11 53) x1_ack!1496)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1496)
                    ((_ to_fp 11 53) x0_ack!1500))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1497)
                    ((_ to_fp 11 53) x1_ack!1496))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!1498) ((_ to_fp 11 53) b_ack!1499))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1498) ((_ to_fp 11 53) x0_ack!1500))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!1499) ((_ to_fp 11 53) x2_ack!1497))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!1498) ((_ to_fp 11 53) b_ack!1499))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1498) ((_ to_fp 11 53) x0_ack!1500))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!1498) ((_ to_fp 11 53) x1_ack!1496))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1499) ((_ to_fp 11 53) x0_ack!1500))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!1499) ((_ to_fp 11 53) x1_ack!1496)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!1496) ((_ to_fp 11 53) b_ack!1499))))
(assert (FPCHECK_FSUB_UNDERFLOW x1_ack!1496 x0_ack!1500))

(check-sat)
(exit)
