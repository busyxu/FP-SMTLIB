(declare-fun x1_ack!1633 () (_ BitVec 64))
(declare-fun x0_ack!1636 () (_ BitVec 64))
(declare-fun x2_ack!1634 () (_ BitVec 64))
(declare-fun xx_ack!1635 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1636) ((_ to_fp 11 53) x1_ack!1633)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1633) ((_ to_fp 11 53) x2_ack!1634)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1633)
                       ((_ to_fp 11 53) x0_ack!1636))
               ((_ to_fp 11 53) x0_ack!1636))
       ((_ to_fp 11 53) x1_ack!1633)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1633)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1633)
                       ((_ to_fp 11 53) x0_ack!1636)))
       ((_ to_fp 11 53) x0_ack!1636)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1634)
                       ((_ to_fp 11 53) x1_ack!1633))
               ((_ to_fp 11 53) x1_ack!1633))
       ((_ to_fp 11 53) x2_ack!1634)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1634)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1634)
                       ((_ to_fp 11 53) x1_ack!1633)))
       ((_ to_fp 11 53) x1_ack!1633)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1633)
                    ((_ to_fp 11 53) x0_ack!1636))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1634)
                    ((_ to_fp 11 53) x1_ack!1633))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1635) ((_ to_fp 11 53) x0_ack!1636))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!1635) ((_ to_fp 11 53) x2_ack!1634))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1635) ((_ to_fp 11 53) x0_ack!1636))))
(assert (fp.geq ((_ to_fp 11 53) xx_ack!1635) ((_ to_fp 11 53) x1_ack!1633)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!1633) ((_ to_fp 11 53) xx_ack!1635))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1634)
               ((_ to_fp 11 53) x1_ack!1633))
       ((_ to_fp 11 53) #x0000000000000000)))

(check-sat)
(exit)
