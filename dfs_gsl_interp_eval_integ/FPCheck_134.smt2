(declare-fun x1_ack!1477 () (_ BitVec 64))
(declare-fun x0_ack!1481 () (_ BitVec 64))
(declare-fun x2_ack!1478 () (_ BitVec 64))
(declare-fun b_ack!1480 () (_ BitVec 64))
(declare-fun a_ack!1479 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1481) ((_ to_fp 11 53) x1_ack!1477)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1477) ((_ to_fp 11 53) x2_ack!1478)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1477)
                       ((_ to_fp 11 53) x0_ack!1481))
               ((_ to_fp 11 53) x0_ack!1481))
       ((_ to_fp 11 53) x1_ack!1477)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1477)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1477)
                       ((_ to_fp 11 53) x0_ack!1481)))
       ((_ to_fp 11 53) x0_ack!1481)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1478)
                       ((_ to_fp 11 53) x1_ack!1477))
               ((_ to_fp 11 53) x1_ack!1477))
       ((_ to_fp 11 53) x2_ack!1478)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1478)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1478)
                       ((_ to_fp 11 53) x1_ack!1477)))
       ((_ to_fp 11 53) x1_ack!1477)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1477)
                    ((_ to_fp 11 53) x0_ack!1481))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1478)
                    ((_ to_fp 11 53) x1_ack!1477))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!1479) ((_ to_fp 11 53) b_ack!1480))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1479) ((_ to_fp 11 53) x0_ack!1481))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!1480) ((_ to_fp 11 53) x2_ack!1478))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!1479) ((_ to_fp 11 53) b_ack!1480))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1479) ((_ to_fp 11 53) x0_ack!1481))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!1479) ((_ to_fp 11 53) x1_ack!1477))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1480) ((_ to_fp 11 53) x0_ack!1481))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!1480) ((_ to_fp 11 53) x1_ack!1477)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!1477) ((_ to_fp 11 53) b_ack!1480))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1477)
                    ((_ to_fp 11 53) x0_ack!1481))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FSUB_UNDERFLOW x1_ack!1477 a_ack!1479))

(check-sat)
(exit)
