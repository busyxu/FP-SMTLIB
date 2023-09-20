(declare-fun x1_ack!382 () (_ BitVec 64))
(declare-fun x0_ack!385 () (_ BitVec 64))
(declare-fun x2_ack!383 () (_ BitVec 64))
(declare-fun xx_ack!384 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!385) ((_ to_fp 11 53) x1_ack!382)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!382) ((_ to_fp 11 53) x2_ack!383)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!382)
                       ((_ to_fp 11 53) x0_ack!385))
               ((_ to_fp 11 53) x0_ack!385))
       ((_ to_fp 11 53) x1_ack!382)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!382)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!382)
                       ((_ to_fp 11 53) x0_ack!385)))
       ((_ to_fp 11 53) x0_ack!385)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!383)
                       ((_ to_fp 11 53) x1_ack!382))
               ((_ to_fp 11 53) x1_ack!382))
       ((_ to_fp 11 53) x2_ack!383)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!383)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!383)
                       ((_ to_fp 11 53) x1_ack!382)))
       ((_ to_fp 11 53) x1_ack!382)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!382)
                    ((_ to_fp 11 53) x0_ack!385))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!383)
                    ((_ to_fp 11 53) x1_ack!382))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!384) ((_ to_fp 11 53) x0_ack!385))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!384) ((_ to_fp 11 53) x2_ack!383))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!384) ((_ to_fp 11 53) x0_ack!385))))
(assert (not (fp.geq ((_ to_fp 11 53) xx_ack!384) ((_ to_fp 11 53) x1_ack!382))))
(assert (FPCHECK_FSUB_ACCURACY x1_ack!382 x0_ack!385))

(check-sat)
(exit)
