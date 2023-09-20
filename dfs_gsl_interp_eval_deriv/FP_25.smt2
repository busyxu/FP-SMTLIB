(declare-fun x1_ack!612 () (_ BitVec 64))
(declare-fun x0_ack!615 () (_ BitVec 64))
(declare-fun x2_ack!613 () (_ BitVec 64))
(declare-fun xx_ack!614 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!615) ((_ to_fp 11 53) x1_ack!612)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!612) ((_ to_fp 11 53) x2_ack!613)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!612)
                       ((_ to_fp 11 53) x0_ack!615))
               ((_ to_fp 11 53) x0_ack!615))
       ((_ to_fp 11 53) x1_ack!612)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!612)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!612)
                       ((_ to_fp 11 53) x0_ack!615)))
       ((_ to_fp 11 53) x0_ack!615)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!613)
                       ((_ to_fp 11 53) x1_ack!612))
               ((_ to_fp 11 53) x1_ack!612))
       ((_ to_fp 11 53) x2_ack!613)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!613)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!613)
                       ((_ to_fp 11 53) x1_ack!612)))
       ((_ to_fp 11 53) x1_ack!612)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!612)
                    ((_ to_fp 11 53) x0_ack!615))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!613)
                    ((_ to_fp 11 53) x1_ack!612))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!614) ((_ to_fp 11 53) x0_ack!615))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!614) ((_ to_fp 11 53) x2_ack!613))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!614) ((_ to_fp 11 53) x0_ack!615))))
(assert (fp.geq ((_ to_fp 11 53) xx_ack!614) ((_ to_fp 11 53) x1_ack!612)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!612) ((_ to_fp 11 53) xx_ack!614))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!613)
               ((_ to_fp 11 53) x1_ack!612))
       ((_ to_fp 11 53) #x0000000000000000)))

(check-sat)
(exit)
