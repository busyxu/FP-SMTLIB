(declare-fun x1_ack!1700 () (_ BitVec 64))
(declare-fun x0_ack!1704 () (_ BitVec 64))
(declare-fun x2_ack!1701 () (_ BitVec 64))
(declare-fun b_ack!1703 () (_ BitVec 64))
(declare-fun a_ack!1702 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1704) ((_ to_fp 11 53) x1_ack!1700)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1700) ((_ to_fp 11 53) x2_ack!1701)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1700)
                       ((_ to_fp 11 53) x0_ack!1704))
               ((_ to_fp 11 53) x0_ack!1704))
       ((_ to_fp 11 53) x1_ack!1700)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1700)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1700)
                       ((_ to_fp 11 53) x0_ack!1704)))
       ((_ to_fp 11 53) x0_ack!1704)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1701)
                       ((_ to_fp 11 53) x1_ack!1700))
               ((_ to_fp 11 53) x1_ack!1700))
       ((_ to_fp 11 53) x2_ack!1701)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1701)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1701)
                       ((_ to_fp 11 53) x1_ack!1700)))
       ((_ to_fp 11 53) x1_ack!1700)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1700)
                    ((_ to_fp 11 53) x0_ack!1704))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1701)
                    ((_ to_fp 11 53) x1_ack!1700))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!1702) ((_ to_fp 11 53) b_ack!1703))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1702) ((_ to_fp 11 53) x0_ack!1704))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!1703) ((_ to_fp 11 53) x2_ack!1701))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!1702) ((_ to_fp 11 53) b_ack!1703))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1702) ((_ to_fp 11 53) x0_ack!1704))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!1702) ((_ to_fp 11 53) x1_ack!1700))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1703) ((_ to_fp 11 53) x0_ack!1704))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!1703) ((_ to_fp 11 53) x1_ack!1700)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!1700) ((_ to_fp 11 53) b_ack!1703))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1700)
                    ((_ to_fp 11 53) x0_ack!1704))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FSUB_OVERFLOW x2_ack!1701 x1_ack!1700))

(check-sat)
(exit)
