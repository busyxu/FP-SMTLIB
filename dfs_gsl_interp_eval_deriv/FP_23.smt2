(declare-fun x1_ack!527 () (_ BitVec 64))
(declare-fun x0_ack!530 () (_ BitVec 64))
(declare-fun x2_ack!528 () (_ BitVec 64))
(declare-fun xx_ack!529 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!530) ((_ to_fp 11 53) x1_ack!527)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!527) ((_ to_fp 11 53) x2_ack!528)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!527)
                       ((_ to_fp 11 53) x0_ack!530))
               ((_ to_fp 11 53) x0_ack!530))
       ((_ to_fp 11 53) x1_ack!527)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!527)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!527)
                       ((_ to_fp 11 53) x0_ack!530)))
       ((_ to_fp 11 53) x0_ack!530)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!528)
                       ((_ to_fp 11 53) x1_ack!527))
               ((_ to_fp 11 53) x1_ack!527))
       ((_ to_fp 11 53) x2_ack!528)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!528)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!528)
                       ((_ to_fp 11 53) x1_ack!527)))
       ((_ to_fp 11 53) x1_ack!527)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!527)
                    ((_ to_fp 11 53) x0_ack!530))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!528)
                    ((_ to_fp 11 53) x1_ack!527))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!529) ((_ to_fp 11 53) x0_ack!530))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!529) ((_ to_fp 11 53) x2_ack!528))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!529) ((_ to_fp 11 53) x0_ack!530))))
(assert (fp.geq ((_ to_fp 11 53) xx_ack!529) ((_ to_fp 11 53) x1_ack!527)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!527) ((_ to_fp 11 53) xx_ack!529))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!528)
               ((_ to_fp 11 53) x1_ack!527))
       ((_ to_fp 11 53) #x0000000000000000)))

(check-sat)
(exit)
