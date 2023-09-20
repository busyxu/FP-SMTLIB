(declare-fun x1_ack!658 () (_ BitVec 64))
(declare-fun x0_ack!661 () (_ BitVec 64))
(declare-fun x2_ack!659 () (_ BitVec 64))
(declare-fun xx_ack!660 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!661) ((_ to_fp 11 53) x1_ack!658)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!658) ((_ to_fp 11 53) x2_ack!659)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!658)
                       ((_ to_fp 11 53) x0_ack!661))
               ((_ to_fp 11 53) x0_ack!661))
       ((_ to_fp 11 53) x1_ack!658)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!658)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!658)
                       ((_ to_fp 11 53) x0_ack!661)))
       ((_ to_fp 11 53) x0_ack!661)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!659)
                       ((_ to_fp 11 53) x1_ack!658))
               ((_ to_fp 11 53) x1_ack!658))
       ((_ to_fp 11 53) x2_ack!659)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!659)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!659)
                       ((_ to_fp 11 53) x1_ack!658)))
       ((_ to_fp 11 53) x1_ack!658)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!658)
                    ((_ to_fp 11 53) x0_ack!661))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!659)
                    ((_ to_fp 11 53) x1_ack!658))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!660) ((_ to_fp 11 53) x0_ack!661))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!660) ((_ to_fp 11 53) x2_ack!659))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!660) ((_ to_fp 11 53) x0_ack!661))))
(assert (fp.geq ((_ to_fp 11 53) xx_ack!660) ((_ to_fp 11 53) x1_ack!658)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!658) ((_ to_fp 11 53) xx_ack!660))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!659)
               ((_ to_fp 11 53) x1_ack!658))
       ((_ to_fp 11 53) #x0000000000000000)))

(check-sat)
(exit)
