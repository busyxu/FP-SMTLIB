(declare-fun x1_ack!1501 () (_ BitVec 64))
(declare-fun x0_ack!1505 () (_ BitVec 64))
(declare-fun x2_ack!1502 () (_ BitVec 64))
(declare-fun b_ack!1504 () (_ BitVec 64))
(declare-fun a_ack!1503 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1505) ((_ to_fp 11 53) x1_ack!1501)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1501) ((_ to_fp 11 53) x2_ack!1502)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1501)
                       ((_ to_fp 11 53) x0_ack!1505))
               ((_ to_fp 11 53) x0_ack!1505))
       ((_ to_fp 11 53) x1_ack!1501)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1501)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1501)
                       ((_ to_fp 11 53) x0_ack!1505)))
       ((_ to_fp 11 53) x0_ack!1505)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1502)
                       ((_ to_fp 11 53) x1_ack!1501))
               ((_ to_fp 11 53) x1_ack!1501))
       ((_ to_fp 11 53) x2_ack!1502)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1502)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1502)
                       ((_ to_fp 11 53) x1_ack!1501)))
       ((_ to_fp 11 53) x1_ack!1501)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1501)
                    ((_ to_fp 11 53) x0_ack!1505))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1502)
                    ((_ to_fp 11 53) x1_ack!1501))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!1503) ((_ to_fp 11 53) b_ack!1504))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1503) ((_ to_fp 11 53) x0_ack!1505))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!1504) ((_ to_fp 11 53) x2_ack!1502))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!1503) ((_ to_fp 11 53) b_ack!1504))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1503) ((_ to_fp 11 53) x0_ack!1505))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!1503) ((_ to_fp 11 53) x1_ack!1501))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1504) ((_ to_fp 11 53) x0_ack!1505))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!1504) ((_ to_fp 11 53) x1_ack!1501)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!1501) ((_ to_fp 11 53) b_ack!1504))))
(assert (FPCHECK_FSUB_ACCURACY x1_ack!1501 x0_ack!1505))

(check-sat)
(exit)
