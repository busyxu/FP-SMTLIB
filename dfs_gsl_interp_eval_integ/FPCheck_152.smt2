(declare-fun x1_ack!1710 () (_ BitVec 64))
(declare-fun x0_ack!1714 () (_ BitVec 64))
(declare-fun x2_ack!1711 () (_ BitVec 64))
(declare-fun b_ack!1713 () (_ BitVec 64))
(declare-fun a_ack!1712 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1714) ((_ to_fp 11 53) x1_ack!1710)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1710) ((_ to_fp 11 53) x2_ack!1711)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1710)
                       ((_ to_fp 11 53) x0_ack!1714))
               ((_ to_fp 11 53) x0_ack!1714))
       ((_ to_fp 11 53) x1_ack!1710)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1710)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1710)
                       ((_ to_fp 11 53) x0_ack!1714)))
       ((_ to_fp 11 53) x0_ack!1714)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1711)
                       ((_ to_fp 11 53) x1_ack!1710))
               ((_ to_fp 11 53) x1_ack!1710))
       ((_ to_fp 11 53) x2_ack!1711)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1711)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1711)
                       ((_ to_fp 11 53) x1_ack!1710)))
       ((_ to_fp 11 53) x1_ack!1710)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1710)
                    ((_ to_fp 11 53) x0_ack!1714))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1711)
                    ((_ to_fp 11 53) x1_ack!1710))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!1712) ((_ to_fp 11 53) b_ack!1713))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1712) ((_ to_fp 11 53) x0_ack!1714))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!1713) ((_ to_fp 11 53) x2_ack!1711))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!1712) ((_ to_fp 11 53) b_ack!1713))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1712) ((_ to_fp 11 53) x0_ack!1714))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!1712) ((_ to_fp 11 53) x1_ack!1710))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1713) ((_ to_fp 11 53) x0_ack!1714))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!1713) ((_ to_fp 11 53) x1_ack!1710)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!1710) ((_ to_fp 11 53) b_ack!1713))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1710)
                    ((_ to_fp 11 53) x0_ack!1714))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FSUB_UNDERFLOW x2_ack!1711 x1_ack!1710))

(check-sat)
(exit)
