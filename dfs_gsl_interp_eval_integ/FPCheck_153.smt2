(declare-fun x1_ack!1715 () (_ BitVec 64))
(declare-fun x0_ack!1719 () (_ BitVec 64))
(declare-fun x2_ack!1716 () (_ BitVec 64))
(declare-fun b_ack!1718 () (_ BitVec 64))
(declare-fun a_ack!1717 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1719) ((_ to_fp 11 53) x1_ack!1715)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1715) ((_ to_fp 11 53) x2_ack!1716)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1715)
                       ((_ to_fp 11 53) x0_ack!1719))
               ((_ to_fp 11 53) x0_ack!1719))
       ((_ to_fp 11 53) x1_ack!1715)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1715)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1715)
                       ((_ to_fp 11 53) x0_ack!1719)))
       ((_ to_fp 11 53) x0_ack!1719)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1716)
                       ((_ to_fp 11 53) x1_ack!1715))
               ((_ to_fp 11 53) x1_ack!1715))
       ((_ to_fp 11 53) x2_ack!1716)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1716)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1716)
                       ((_ to_fp 11 53) x1_ack!1715)))
       ((_ to_fp 11 53) x1_ack!1715)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1715)
                    ((_ to_fp 11 53) x0_ack!1719))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1716)
                    ((_ to_fp 11 53) x1_ack!1715))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!1717) ((_ to_fp 11 53) b_ack!1718))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1717) ((_ to_fp 11 53) x0_ack!1719))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!1718) ((_ to_fp 11 53) x2_ack!1716))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!1717) ((_ to_fp 11 53) b_ack!1718))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1717) ((_ to_fp 11 53) x0_ack!1719))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!1717) ((_ to_fp 11 53) x1_ack!1715))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1718) ((_ to_fp 11 53) x0_ack!1719))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!1718) ((_ to_fp 11 53) x1_ack!1715)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!1715) ((_ to_fp 11 53) b_ack!1718))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1715)
                    ((_ to_fp 11 53) x0_ack!1719))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FSUB_ACCURACY x2_ack!1716 x1_ack!1715))

(check-sat)
(exit)
