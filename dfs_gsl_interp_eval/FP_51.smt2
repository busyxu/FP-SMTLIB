(declare-fun x1_ack!1673 () (_ BitVec 64))
(declare-fun x0_ack!1676 () (_ BitVec 64))
(declare-fun x2_ack!1674 () (_ BitVec 64))
(declare-fun xx_ack!1675 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1676) ((_ to_fp 11 53) x1_ack!1673)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1673) ((_ to_fp 11 53) x2_ack!1674)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1673)
                       ((_ to_fp 11 53) x0_ack!1676))
               ((_ to_fp 11 53) x0_ack!1676))
       ((_ to_fp 11 53) x1_ack!1673)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1673)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1673)
                       ((_ to_fp 11 53) x0_ack!1676)))
       ((_ to_fp 11 53) x0_ack!1676)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1674)
                       ((_ to_fp 11 53) x1_ack!1673))
               ((_ to_fp 11 53) x1_ack!1673))
       ((_ to_fp 11 53) x2_ack!1674)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1674)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1674)
                       ((_ to_fp 11 53) x1_ack!1673)))
       ((_ to_fp 11 53) x1_ack!1673)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1673)
                    ((_ to_fp 11 53) x0_ack!1676))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1674)
                    ((_ to_fp 11 53) x1_ack!1673))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1675) ((_ to_fp 11 53) x0_ack!1676))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!1675) ((_ to_fp 11 53) x2_ack!1674))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1675) ((_ to_fp 11 53) x0_ack!1676))))
(assert (not (fp.geq ((_ to_fp 11 53) xx_ack!1675) ((_ to_fp 11 53) x1_ack!1673))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1673)
               ((_ to_fp 11 53) x0_ack!1676))
       ((_ to_fp 11 53) #x0000000000000000)))

(check-sat)
(exit)
