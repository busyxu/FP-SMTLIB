(declare-fun x1_ack!1147 () (_ BitVec 64))
(declare-fun x0_ack!1150 () (_ BitVec 64))
(declare-fun x2_ack!1148 () (_ BitVec 64))
(declare-fun xx_ack!1149 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1150) ((_ to_fp 11 53) x1_ack!1147)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1147) ((_ to_fp 11 53) x2_ack!1148)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1147)
                       ((_ to_fp 11 53) x0_ack!1150))
               ((_ to_fp 11 53) x0_ack!1150))
       ((_ to_fp 11 53) x1_ack!1147)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1147)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1147)
                       ((_ to_fp 11 53) x0_ack!1150)))
       ((_ to_fp 11 53) x0_ack!1150)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1148)
                       ((_ to_fp 11 53) x1_ack!1147))
               ((_ to_fp 11 53) x1_ack!1147))
       ((_ to_fp 11 53) x2_ack!1148)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1148)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1148)
                       ((_ to_fp 11 53) x1_ack!1147)))
       ((_ to_fp 11 53) x1_ack!1147)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1147)
                    ((_ to_fp 11 53) x0_ack!1150))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1148)
                    ((_ to_fp 11 53) x1_ack!1147))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1149) ((_ to_fp 11 53) x0_ack!1150))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!1149) ((_ to_fp 11 53) x2_ack!1148))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1149) ((_ to_fp 11 53) x0_ack!1150))))
(assert (not (fp.geq ((_ to_fp 11 53) xx_ack!1149) ((_ to_fp 11 53) x1_ack!1147))))

(check-sat)
(exit)
