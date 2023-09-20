(declare-fun x1_ack!775 () (_ BitVec 64))
(declare-fun x0_ack!778 () (_ BitVec 64))
(declare-fun x2_ack!776 () (_ BitVec 64))
(declare-fun xx_ack!777 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!778) ((_ to_fp 11 53) x1_ack!775)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!775) ((_ to_fp 11 53) x2_ack!776)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!775)
                       ((_ to_fp 11 53) x0_ack!778))
               ((_ to_fp 11 53) x0_ack!778))
       ((_ to_fp 11 53) x1_ack!775)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!775)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!775)
                       ((_ to_fp 11 53) x0_ack!778)))
       ((_ to_fp 11 53) x0_ack!778)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!776)
                       ((_ to_fp 11 53) x1_ack!775))
               ((_ to_fp 11 53) x1_ack!775))
       ((_ to_fp 11 53) x2_ack!776)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!776)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!776)
                       ((_ to_fp 11 53) x1_ack!775)))
       ((_ to_fp 11 53) x1_ack!775)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!775)
                    ((_ to_fp 11 53) x0_ack!778))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!776)
                    ((_ to_fp 11 53) x1_ack!775))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!777) ((_ to_fp 11 53) x0_ack!778))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!777) ((_ to_fp 11 53) x2_ack!776))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!777) ((_ to_fp 11 53) x0_ack!778))))
(assert (fp.geq ((_ to_fp 11 53) xx_ack!777) ((_ to_fp 11 53) x1_ack!775)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!775) ((_ to_fp 11 53) xx_ack!777))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!776)
               ((_ to_fp 11 53) x1_ack!775))
       ((_ to_fp 11 53) #x0000000000000000)))

(check-sat)
(exit)
